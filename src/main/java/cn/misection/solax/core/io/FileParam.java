package cn.misection.solax.core.io;

import cn.misection.solax.core.config.Macro;

/**
 * @author Military Intelligence 6 root
 * @version 1.0.0
 * @ClassName FileParam
 * @Description TODO
 * @CreateTime 2021年04月14日 14:41:00
 */
public final class FileParam {
    /**
     * 汇编二进制文件来自nasm编译汇编代码;
     */
    public static final String BOOT_FILE =
            String.format("src/main/resources/asm/c%02d/boot.bin",
                    Macro.CUR_CHAPTER);

    public static final String KERNEL_FILE =
            String.format("src/main/resources/asm/c%02d/kernel.bin",
                    Macro.CUR_CHAPTER);

    public static final String OUT_IMG_FILE =
            String.format("src/main/resources/img/c%02d/systemC%02dGot.img",
                    Macro.CUR_CHAPTER,
                    Macro.CUR_CHAPTER);

    private FileParam() {}
}
