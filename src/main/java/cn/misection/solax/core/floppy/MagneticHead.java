package cn.misection.solax.core.floppy;

public enum MagneticHead {

    /**
     * 磁头;
     */
    MAGNETIC_HEAD_0,

    MAGNETIC_HEAD_1,
    ;

    public static int count() {
        return values().length;
    }
}
