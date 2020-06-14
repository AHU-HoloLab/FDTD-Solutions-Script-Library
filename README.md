# 超表面全息 FDTD Solutions 脚本库

![](https://img.shields.io/badge/build-passing-brightgreen)
![](https://img.shields.io/badge/language-Lumerical-orange)
![](https://img.shields.io/badge/license-GPLv3-lightgrey)

FDTD Solutions Script Library for Metasurface Holographic

暂时自用，未完成。

## 项目简介

Lumerical FDTD Solutions 仿真超表面（Metasurface）用到的脚本文件。

## 功能特性

`./data/Material/`: 存放材料数据

`./source/`: 存放 lsf 源代码

`./source/模板.lsf`: 构建超表面阵列脚本模板

`./source/结果分析/`: 如下

``` Lumerical

FarField.lsf                # 远场投影
PhaseAnalysis.lsf           # 扫描后相位分析
CircularPolarization.lsf    # 圆极化分析
EfficiencyAnalysis.lsf      # 效率分析

```

## 协议

* GNU GPLv3

## P.S.
* UTF-8 without BOM