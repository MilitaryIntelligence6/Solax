package cn.misection.solax.core.floppy;

import java.io.DataOutputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * @author Administrator
 */
public class Floppy extends HashMap<MagneticHead, List<List<byte[]>>> {

    private MagneticHead magneticHead = MagneticHead.MAGNETIC_HEAD_0;

    private int currentCylinder = 0;

    private int currentSector = 0;

    public Floppy() {
        init();
    }

    private void init() {
        //一个磁盘有两个盘面
        this.put(MagneticHead.MAGNETIC_HEAD_0, newFloppyDisk());
        this.put(MagneticHead.MAGNETIC_HEAD_1, newFloppyDisk());
    }

    private List<List<byte[]>> newFloppyDisk() {
        // 磁盘的一个面;
        List<List<byte[]>> floppyDisk = new ArrayList<>();
        // 一个磁盘面有80个柱面
        for (int i = 0; i < FloppyParam.CYLINDER_COUNT; i++) {
            floppyDisk.add(newCylinder());
        }
        return floppyDisk;
    }

    private List<byte[]> newCylinder() {
        //构造一个柱面，一个柱面有18个扇区
        List<byte[]> cylinder = new ArrayList<>();
        for (int i = 0; i < FloppyParam.SECTORS_COUNT; i++) {
            // 每个 扇区有512个字节;
            byte[] sector = new byte[FloppyParam.SECTOR_SIZE];
            cylinder.add(sector);
        }
        return cylinder;
    }

    public void putCylinder(int currentCylinder) {
        if (currentCylinder < 0) {
            this.currentCylinder = 0;
        } else if (currentCylinder >= 80) {
            this.currentCylinder = 79;
        } else {
            this.currentCylinder = currentCylinder;
        }
    }

    public void putSector(int currentSector) {
        // sector 编号从1到18
        if (currentSector < 0) {
            this.currentSector = 0;
        } else if (currentSector > 18) {
            this.currentSector = 18 - 1;
        } else {
            this.currentSector = currentSector - 1;
        }
    }

    public byte[] readFloppy(MagneticHead head,
                             int cylinderNum,
                             int sectorNum) {
        setMagneticHead(head);
        putCylinder(cylinderNum);
        putSector(sectorNum);

        List<List<byte[]>> disk = this.get(this.magneticHead);
        List<byte[]> cylinder = disk.get(this.currentCylinder);

        byte[] sector = cylinder.get(this.currentSector);
        return sector;
    }

    public void writeFloppy(MagneticHead head,
                            int cylinderNum,
                            int sectorNum,
                            byte[] buf) {
        setMagneticHead(head);
        putCylinder(cylinderNum);
        putSector(sectorNum);

        List<List<byte[]>> disk = this.get(this.magneticHead);
        List<byte[]> cylinder = disk.get(this.currentCylinder);

        byte[] buffer = cylinder.get(this.currentSector);
        System.arraycopy(buf, 0, buffer, 0, buf.length);
    }

    public void makeFloppy(String fileName) {
        try (DataOutputStream out = new DataOutputStream(new FileOutputStream(fileName))) {
            for (int cylinder = 0; cylinder < FloppyParam.CYLINDER_COUNT; cylinder++) {
                for (int head = 0; head < MagneticHead.count(); head++) {
                    for (int sector = 1; sector <= FloppyParam.SECTORS_COUNT; sector++) {
                        byte[] buf = readFloppy(MagneticHead.values()[head], cylinder, sector);
                        /*
                            if (head == 0 && cylinder == 0 && sector == 2) {
                                int k = 0;
                                k = 2;
                                byte[] buffer = new byte[]{'H', 'e', 'l','l','o', 'w', 'o', 'r', 'l', 'd'};
                                for (int i = 0; i < buffer.length; i++) {
                                buf[i] = buffer[i];
                            }
                        }
                        */
                        out.write(buf);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setMagneticHead(MagneticHead magneticHead) {
        this.magneticHead = magneticHead;
    }
}
