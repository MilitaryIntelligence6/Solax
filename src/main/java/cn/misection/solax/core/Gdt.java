package cn.misection.solax.core;

/**
 * |BYTE7| BYTE6 | BYTE5 | BYTE4 | BYTE3 | BYTE2 | BYTE1 | BYTE0
 * @author Administrator
 */
public class Gdt {
    /**
     * BYTE1| BYTE0;
     */
    byte[] segmentLength_low = new byte[2];

    /**
     * BYTE2 | BYTE3 | BYTE4;
     */
    byte[] baseAddressLow = new byte[3];

    /**
     * BYTE5 | BYTE6;
     * BYTE6 的头4个bit 用于segment length, 于是段长度的字长为20bit;
     */
    byte[] attribute = new byte[2];

    /**
     * BYTE7;
     */
    byte addressHigh = 0;
    //实模式下的寻找方式
    //段寄存器 * 16 + 偏移(16bit)
}
