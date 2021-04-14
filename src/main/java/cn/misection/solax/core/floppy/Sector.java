package cn.misection.solax.core.floppy;

/**
 * @author Military Intelligence 6 root
 * @version 1.0.0
 * @ClassName Sector
 * @Description 单个扇区;
 * @CreateTime 2021年04月14日 00:16:00
 */
public class Sector implements FloppyComponent {

    private final byte[] value;

    public Sector() {
        this.value = new byte[FloppyParam.SECTOR_SIZE];
    }

    public byte[] value() {
        return value;
    }
}
