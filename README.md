# Introduction
CHISEL 基于Scala Embedded Language, 属于internal DSL。直接写scala，调用chisel内置的库构造出硬件结构，然后产生出C和verilog代码，同时也提供testbench用于快速验证。

在RISC-V Rocket Core项目中实际上使用了chisel3, 他实际上是将chisel分解为两部分，构造出了一个IR层，后端是firrtl, 是一个简化版的硬件描述语言，属于external DSL, 用ANTLR编写。他们希望在此之上发展出各种灵活的前端，也许不拘泥于scala语言。
Chisel3现在是两部分，CORE用于描述硬件，tester是做验证的

firrtl也添加了一个interpreter包用于高层仿真而不依赖于仿真器。

整个软件包也支持吐出verilog给verilator或VCS仿真。

## 问题
* 最大的问题应该是产生的rtl有很多temp signal，跟原来的描述要对应比较困难
* interface的定义也不够有层次

# Learn

最好的方法是自己动手写些文件看产生的rtl是什么样子。
* [Tutorial](./chisel/tutorial.md)
* [IDEA usage](./chisel/IDEA.md)



# Links

* [官网](https://chisel.eecs.berkeley.edu/)
* [基于Jupyter的教程](https://github.com/freechipsproject/chisel-bootcamp.git)
* [Chisel3 wiki](https://github.com/freechipsproject/chisel3/wiki)
* [最新chiesel 文档](https://chisel.eecs.berkeley.edu/api/latest/index.html)
* [cs250: VLSI Systems Design](http://inst.eecs.berkeley.edu/~cs250)

