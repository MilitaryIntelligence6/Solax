package cn.misection.solax.core.floppy.factory;

import cn.misection.solax.core.floppy.FloppyComponent;

/**
 * @author Military Intelligence 6 root
 * @version 1.0.0
 * @ClassName IFactory
 * @Description TODO
 * @CreateTime 2021年04月14日 15:12:00
 */
public interface IFactory {

    /**
     * 工厂;
     * @return
     */
    FloppyComponent create();
}
