package cn.misection.solax.core.floppy;

/**
 * @author Military Intelligence 6 root
 * @version 1.0.0
 * @ClassName FloppyConfig
 * @Description TODO
 * @CreateTime 2021年04月13日 23:47:00
 */
public final class FloppyParam {
    /**
     * 软盘参数;
     * size == 2 * 512 * 18 * 80 Byte
     * == 1.40625 M
     */
    public static final int SECTOR_SIZE = 512;

    /**
     * 80个柱面;
     */
    public static final int CYLINDER_COUNT = 80;

    public static final int SECTORS_COUNT = 18;
}
