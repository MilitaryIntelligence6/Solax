package cn.misection.solax.core.floppy.factory;

import cn.misection.solax.core.floppy.FloppyComponent;
import cn.misection.solax.core.floppy.FloppyDisk;

/**
 * @author Military Intelligence 6 root
 * @version 1.0.0
 * @ClassName FloppyDiskFactory
 * @Description TODO
 * @CreateTime 2021年04月14日 13:22:00
 */
public class FloppyDiskFactory implements IFactory{

    @Override
    public FloppyComponent create() {
        return new FloppyDisk();
    }
}
