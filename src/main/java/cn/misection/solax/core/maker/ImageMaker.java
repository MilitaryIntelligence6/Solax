package cn.misection.solax.core.maker;

import cn.misection.solax.core.floppy.Floppy;
import cn.misection.solax.core.floppy.FloppyParam;
import cn.misection.solax.core.floppy.MagneticHead;
import cn.misection.solax.core.floppy.factory.FloppyFactory;
import cn.misection.solax.core.io.FileParam;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

/**
 * @author Administrator
 */
public class ImageMaker {

    private Floppy floppy;

    public ImageMaker() {
        init();
    }

    private void init() {
        floppy = (Floppy) new FloppyFactory().create();
        writeFileToFloppy(FileParam.BOOT_FILE, true, 0, 1);
    }

    private void writeFileToFloppy(String fileName,
                                   boolean bootable,
                                   int cylinder,
                                   int beginSec) {
        File file = new File(fileName);
        InputStream in;

        try {
            in = new FileInputStream(file);
            byte[] buf = new byte[512];
            if (bootable) {
                // 如果要能引导, 结尾必须以55aa结束;
                buf[510] = 0x55;
                buf[511] = (byte) 0xaa;
            }

            while (in.read(buf) > 0) {
                // 将内核读入到磁盘第0面，第0柱面，第1个扇区
                floppy.writeFloppy(MagneticHead.MAGNETIC_HEAD_0, cylinder, beginSec, buf);
                beginSec++;
                System.out.printf("Load file %s to floppy with cylinder: %d and sector:%d%n",
                        fileName,
                        cylinder,
                        beginSec);
                if (beginSec > FloppyParam.SECTORS_COUNT) {
                    beginSec = 1;
                    cylinder++;
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
            return;
        }
    }

    public void makeFloppy() {
        writeFileToFloppy(FileParam.KERNEL_FILE, false, 1, 2);
        floppy.makeFloppy(FileParam.OUT_IMG_FILE);
        System.out.printf("successfully write to %s\n", FileParam.OUT_IMG_FILE);
    }

    public static void main(String[] args) {
        ImageMaker maker = new ImageMaker();
        maker.makeFloppy();
    }
}
