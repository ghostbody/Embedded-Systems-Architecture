    本实验得到的结果为，打开超级终端，设置波特率为115200，数据流控制位为无。运行系统，就会显示“UART EXPERIMENT,PLEASE INPUT FROM THE KEYBOARD”，我们就可以通过写串口操作。
    在flash调试时，需要修改RO BASE为0x00000000，其他不用修改，重新编译下载就可运行。
   在sdram调试时，需要修改RO BASE为0xa0000000，其他不用修改，重新编译下载就可运行。