package cn.misection.solax.core.floppy.factory;

import cn.misection.solax.core.floppy.Cylinder;
import cn.misection.solax.core.floppy.FloppyComponent;

/**
 * @author Military Intelligence 6 root
 * @version 1.0.0
 * @ClassName CylinderFactory
 * @Description TODO
 * @CreateTime 2021年04月14日 13:19:00
 */
public class CylinderFactory implements IFactory {

    @Override
    public FloppyComponent create() {
        return new Cylinder();
    }
}
