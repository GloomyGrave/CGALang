/*
  CGA Programming Language
  Version    : 0.0.1
  Last Update: 2018/11/03
  Author     : GloomyGhost <GloomyGhost@foxmail.com>)
  License    :
    Copyright © 2014 TSUYUSATO Kitsune <make.just.on@gmail.com>
    Copyright © 2018 GloomyGhost <GloomyGhost@foxmail.com>
    This work is free. You can redistribute it and/or modify it under the
    terms of the Do What The Fuck You Want To Public License, Version 2,
    as published by Sam Hocevar. See http://www.wtfpl.net/ for more details.
*/

/*
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
|     公正     |                     |
|     法制     |                     |
*/

//module cga;

import std.string;
import std.datetime;
import std.algorithm;
import std.array;
import std.stdio;

const BUFFER_SIZE = 30000;


const fq = "富强"w;
const mz = "民主"w;
const wm = "文明"w;
const hx = "和谐"w;
const ag = "爱国"w;
const jy = "敬业"w;
const cx = "诚信"w;
const ys = "友善"w;
const zy = "自由"w;
const pd = "平等"w;


enum Command {
  FQ,
  MZ,
  WM,
  HX,
  AG,
  JY,
  CX,
  YS,
  ZY,
  PD,
}

void run(wstring src) {
  Command[] cmds;

  // parsing
  for (int i = 0; i < src.length; i++) {
    ulong restLength = src.length - i;

    if (fq.length <= restLength && fq == src[i..i+fq.length]) {
      cmds ~= Command.FQ;
      i += fq.length - 1;
      continue;
    }
    if (mz.length <= restLength && mz == src[i..i+mz.length]) {
      cmds ~= Command.MZ;
      i += mz.length - 1;
      continue;
    }
    if (wm.length <= restLength && wm == src[i..i+wm.length]) {
      cmds ~= Command.WM;
      i += wm.length - 1;
      continue;
    }
    if (hx.length <= restLength && hx == src[i..i+hx.length]) {
      cmds ~= Command.HX;
      i += hx.length - 1;
      continue;
    }
    if (ag.length <= restLength && ag == src[i..i+ag.length]) {
      cmds ~= Command.AG;
      i += ag.length - 1;
      continue;
    }
    if (jy.length <= restLength && jy == src[i..i+jy.length]) {
      cmds ~= Command.JY;
      i += jy.length - 1;
      continue;
    }
    if (cx.length <= restLength && cx == src[i..i+cx.length]) {
      cmds ~= Command.CX;
      i += cx.length - 1;
      continue;
    }
    if (ys.length <= restLength && ys == src[i..i+ys.length]) {
      cmds ~= Command.YS;
      i += ys.length - 1;
      continue;
    }
    if (zy.length <= restLength && zy == src[i..i+zy.length]) {
      cmds ~= Command.ZY;
      i += ys.length - 1;
      continue;
    }
    if (pd.length <= restLength && pd == src[i..i+pd.length]) {
      cmds ~= Command.PD;
      i += pd.length - 1;
      continue;
    }
  }
  
  //writeln(cmds); // Debug

  // executing
  int i = 0;
  char [BUFFER_SIZE] b;
  int[] fqStack = [];
  for (int j = 0; j < BUFFER_SIZE; j++) b[j] = 0;

  for (int p = 0; p < cmds.length; p++) {
    auto c = cmds[p];

    //writeln(c, " ", i, " ", cast(int)b[i]); // Debug

    switch (c) {
    case Command.FQ:
      if (b[i] == 0) {
        int nest = 1;
        auto flag = false;
        do {
          p += 1;
          if (cmds[p] == Command.FQ)  nest += 1;
          if (cmds[p] == Command.MZ) nest -= 1;

          if (nest == 0) {
            flag = true;
            break;
          }
        } while (p < cmds.length);

        assert(flag);
      } else {
        fqStack ~= p;
      }
      break;

    case Command.MZ:
      assert(fqStack.length != 0);

      p = fqStack[fqStack.length-1] - 1;
      fqStack.popBack();
      break;

    case Command.WM:
      i += 1;
      assert(i < BUFFER_SIZE);
      break;

    case Command.HX:
      i -= 1;
      assert(i >= 0);
      break;

    case Command.AG:
      b[i] += 1;
      break;

    case Command.JY:
      b[i] += 5;
      break;

    case Command.ZY:
      b[i] -= 1;
      break;

    case Command.PD:
      b[i] -= 5;
      break;

    case Command.CX:
      writef("%c", b[i]);
      break;

    case Command.YS:
      readf("%c", &b[i]);
      break;
    
    default:
      assert(false);
    }
  }
}
