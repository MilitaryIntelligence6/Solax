package cn.misection.solax.core.floppy.factory;

import cn.misection.solax.core.floppy.Floppy;
import cn.misection.solax.core.floppy.FloppyComponent;

/**
 * @author Military Intelligence 6 root
 * @version 1.0.0
 * @ClassName FloppyFactory
 * @Description TODO 总觉得抽象工厂应该是单例;
 * @CreateTime 2021年04月14日 13:22:00
 */
public class FloppyFactory implements IFactory {

    @Override
    public FloppyComponent create() {
        return new Floppy();
    }
}
