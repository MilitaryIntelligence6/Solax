package cn.misection.solax.core.floppy;

import cn.misection.solax.core.floppy.factory.FloppyDiskFactory;
import cn.misection.solax.core.floppy.factory.IFactory;

import java.io.DataOutputStream;
import java.io.FileOutputStream;
import java.util.HashMap;

/**
 * @author Administrator
 */
public class Floppy
        extends HashMap<MagneticHead, FloppyDisk>
        implements FloppyComponent {

    private MagneticHead magneticHead = MagneticHead.MAGNETIC_HEAD_0;

    private int currentCylinder = 0;

    private int currentSector = 0;

    public Floppy() {
        init();
    }

    private void init() {
        //一个磁盘有两个盘面
        IFactory factory = new FloppyDiskFactory();
        this.put(MagneticHead.MAGNETIC_HEAD_0, (FloppyDisk) factory.create());
        this.put(MagneticHead.MAGNETIC_HEAD_1, (FloppyDisk) factory.create());
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

        FloppyDisk disk = this.get(this.magneticHead);
        Cylinder cylinder = disk.get(this.currentCylinder);

        byte[] sector = cylinder.get(this.currentSector).value();
        return sector;
    }

    public void writeFloppy(MagneticHead head,
                            int cylinderNum,
                            int sectorNum,
                            byte[] buf) {
        setMagneticHead(head);
        putCylinder(cylinderNum);
        putSector(sectorNum);

        FloppyDisk disk = this.get(this.magneticHead);
        Cylinder cylinder = disk.get(this.currentCylinder);

        byte[] buffer = cylinder.get(this.currentSector).value();
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
