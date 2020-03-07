# China Great Again Lang

![来自百度百科](https://gss0.bdstatic.com/-4o3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike80%2C5%2C5%2C80%2C26/sign=9c21b2d28418367ab984778f4f1ae0b1/4a36acaf2edda3cc50a9c7db03e93901203f92ff.jpg)

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

## 例子
```
敬业 敬业
富强
     文明 敬业 爱国 爱国  
     文明 敬业 敬业 
     文明 爱国 爱国 爱国 
     文明 爱国 
和谐 和谐 和谐 和谐 自由 
民主
文明 爱国 爱国 诚信
文明 爱国 诚信
敬业 爱国 爱国 诚信
诚信
爱国 爱国 爱国 诚信
文明 爱国 爱国 诚信
和谐 和谐 敬业 敬业 敬业 诚信
文明 诚信
爱国 爱国 爱国 诚信
平等 自由 诚信
平等 自由 自由 自由 诚信
文明 爱国 诚信
文明 诚信
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
