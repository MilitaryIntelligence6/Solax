package cn.misection.solax.tmp;

import java.io.*;

/**
 * @author Administrator
 */
public class ImageMaker {

    /**
     * 汇编二进制文件来自nasm编译汇编代码;
     */
    private static final String BOOT_FILE = "src/main/resources/asm/boot.bin.bin";

    private static final String IMG_FILE = "src/main/resources/img/system.img";

    /**
     * 1.40 M;
     * 0x168000 == 1474560 / 1024 / 1024 == 1.40625M;
     */
    private static final int IMG_SIZE = 0x168000;

    /**
     * 将512字节(一个扇区) 写入到磁盘, 第512必须是55aa, 否则硬盘不加载;
     */
    private static final byte[] endFlag = {0x55, (byte) 0xaa, (byte) 0xf0, (byte) 0xff, (byte) 0xff};

    private static final byte[] imgByteArray = new byte[IMG_SIZE];

    private static int pointer = 0;

    public ImageMaker() {
        readKernelFromFile(BOOT_FILE);
    }

    private void readKernelFromFile(String fileName) {
        File file = new File(fileName);
        InputStream in;
        try {
            in = new FileInputStream(file);
            int tempbyte;
            while ((tempbyte = in.read()) != -1) {
                imgByteArray[pointer++] = (byte) tempbyte;
            }
        } catch (IOException e) {
            e.printStackTrace();
            return;
        }
        // 必须以这一坨结束;
        for (byte b : endFlag) {
            imgByteArray[pointer++] = b;
        }
    }

    /**
     * 写入 img file;
     */
    public void makeFloppy() {
        try {
            DataOutputStream out = new DataOutputStream(
                    new FileOutputStream(
                            IMG_FILE));
            // 将 writeByte 改成write, 类内部跑for应该有内联, 减少了大量的io, 快多了;
            out.write(imgByteArray);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        System.out.println("hello, this is my first line of my operating system code");
        ImageMaker maker = new ImageMaker();
        maker.makeFloppy();
    }
}
