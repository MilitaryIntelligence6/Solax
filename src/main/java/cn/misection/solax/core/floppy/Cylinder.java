package cn.misection.solax.core.floppy;

import cn.misection.solax.core.floppy.factory.IFactory;
import cn.misection.solax.core.floppy.factory.SectorFactory;

import java.util.ArrayList;

/**
 * @author Military Intelligence 6 root
 * @version 1.0.0
 * @ClassName Cylinder
 * @Description 一个柱面;
 * @CreateTime 2021年04月14日 00:14:00
 */
public class Cylinder
        extends ArrayList<Sector>
        implements FloppyComponent {

    public Cylinder() {
        super(FloppyParam.SECTORS_COUNT);
        init();
    }

    private void init() {
        IFactory sectorFactory = new SectorFactory();
        for (int i = 0; i < FloppyParam.SECTORS_COUNT; i++) {
            this.add((Sector) sectorFactory.create());
        }
    }
}
