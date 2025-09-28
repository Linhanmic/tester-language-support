----------这是注释----------
----------CAN设备初始化----------
----------tcaninit 设备ID,设备索引,通道索引,仲裁波特率[,数据域波特率]----------
tset

tcaninit 70,0,0,500//车身网CAN
tcaninit 70,0,1,500,2000//智能进入网CANFD

tend

ttitle=模板示例1
1 tstart=用例描述
  tcans 121,12 02 00 00 00 00 00 00,100,1
  tcans 12d,00 00 00 0c 00 00 00 00,100,1
  tdelay 1000
  tcanr 121,1.0-2.3,530,1000
tend

2 tstart=用例描述2
  tcans 121,12 02 00 00 00 00 00 00,100,1
  tcans 12d,00 00 00 0c 00 00 00 00,100,1
  tdelay 1000
  tcanr 121,1.0-2.3,530,1000
tend

ttitle-end

ttitle=模板示例2
3 tstart=用例描述3
  tcans 121,12 02 00 00 00 00 00 00,100,1
  tcans 12d,00 00 00 0c 00 00 00 00,100,1
  tdelay 1000
  tcanr 121,1.0-2.3,print
tend

ttitle-end