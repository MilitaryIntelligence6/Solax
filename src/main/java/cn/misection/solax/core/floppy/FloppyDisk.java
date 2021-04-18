package cn.misection.solax.core.floppy;

import cn.misection.solax.core.floppy.factory.CylinderFactory;
import cn.misection.solax.core.floppy.factory.IFactory;

import java.util.ArrayList;

/**
 * @author Military Intelligence 6 root
 * @version 1.0.0
 * @ClassName FloppyDisk
 * @Description 一个盘面;
 * @CreateTime 2021年04月14日 00:14:00
 */
public class FloppyDisk
        extends ArrayList<Cylinder>
        implements FloppyComponent {

    public FloppyDisk() {
        super(FloppyParam.CYLINDER_COUNT);
        init();
    }

    private void init() {
        IFactory cylinderFactory = new CylinderFactory();
        for (int i = 0; i < FloppyParam.CYLINDER_COUNT; i++) {
            this.add((Cylinder) cylinderFactory.create());
        }
    }
}
