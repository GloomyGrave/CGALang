# China Great Again Lang

![来自百度百科](https://gss0.bdstatic.com/-4o3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike80%2C5%2C5%2C80%2C26/sign=9c21b2d28418367ab984778f4f1ae0b1/4a36acaf2edda3cc50a9c7db03e93901203f92ff.jpg)

社会主义核心价值观是社会主义核心价值体系的内核，体现社会主义核心价值体系的根本性质和基本特征，反映社会主义核心价值体系的丰富内涵和实践要求，是社会主义核心价值体系的高度凝练和集中表达。<br>
党的十八大以来，中央高度重视培育和践行社会主义核心价值观。习近平总书记多次作出重要论述、提出明确要求。中央政治局围绕培育和弘扬社会主义核心价值观、弘扬中华传统美德进行集体学习。中办下发《关于培育和践行社会主义核心价值观的意见》。党中央的高度重视和有力部署，为加强社会主义核心价值观教育实践指明了努力方向，提供了重要遵循。<br>
2017年10月18日，习近平同志在十九大报告中指出，要培育和践行社会主义核心价值观。要以培养担当民族复兴大任的时代新人为着眼点，强化教育引导、实践养成、制度保障，发挥社会主义核心价值观对国民教育、精神文明创建、精神文化产品创作生产传播的引领作用，把社会主义核心价值观融入社会发展各方面，转化为人们的情感认同和行为习惯。<br>

## 使用方法
会BrainFuck就会CGA,下面给出对应表：

|CGA           |BF                   |
|--------------|---------------------|
|     富强     |       [             |
|     民主     |       ]             |
|     文明     |       >             |
|     和谐     |       <             |
|     爱国     |       +             |
|     敬业     |       +++++         |
|     诚信     |       .             |
|     友善     |       ,             |
|     自由     |       -             |
|     平等     |       -----         |

## 编译方法
```
$ dmd -O cga src/cga.d src/main.d
```

## 运行方式

### UNIX：

```
$ cga examples/helloworld.cga
```
### Windows：
```
$ cga.exe examples/helloworld.cga
```

他会输出`Hello World!`在屏幕上。

# 许可：

  CGA Programming Language<br>
  Version    : 0.0.1<br>
  Last Update: 2018/11/03<br>
  Author     : GloomyGhost <GloomyGhost@foxmail.com><br>
  License    :<br>
    Copyright © 2014 TSUYUSATO Kitsune <make.just.on@gmail.com><br>
    Copyright © 2018 GloomyGhost <GloomyGhost@foxmail.com><br>
    This work is free. You can redistribute it and/or modify it under the<br>
    terms of the Do What The Fuck You Want To Public License, Version 2,<br>
    as published by Sam Hocevar. See http://www.wtfpl.net/ for more details.<br>
