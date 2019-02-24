# Using IDEA for chisel development

在工作目录下放置scala source文件和build.sbt

 在此之上创建新项目

![img](./assets/wps1uRcJL.jpg) 

 

![img](./assets/wpsbv6IfK.jpg) 

 

选择导入SBT项目

![img](./assets/wpshpHiMI.jpg) 

 

![img](./assets/wps3VGElH.jpg) 

build产生Verilog文件，需要构建新的sbt task

![img](./assets/wpsV0khoQ.jpg) 

+新建一个SBT task，如下设置

![img](./assets/wps2n0VqZ.jpg) 

 

可以看到右上方出现刚才的设置。

![img](./assets/wps32XBt8.jpg) 

点运行按钮

![img](./assets/wpsRvijwh.jpg) 

在output有verilog文件出现了

![img](./assets/wpsFdc2yq.jpg) 

  

 