#!/bin/bash
# -----------------------------------------------------------------
# FileName: sh-deploy-gitee.sh
# Date: 2020-10-03
# Author: jiftle
# Description: 
# -----------------------------------------------------------------
# hexo·clean·&&·hexo·generate·--config·_config-gitee.yml·&&·hexo·d·--config·_config-gitee.yml
# hexo·clean
HexoBin='/usr/local/bin/hexo'

echo "  |--> 清理"
$HexoBin clean

echo "  |--> 构建"
HexoBin="/usr/local/bin/hexo"
$HexoBin·g·--config·./_config-gitee.yml

echo "  |--> 发布"
HexoBin='/usr/local/bin/hexo'
$HexoBin·d·--config·./_config-gitee.yml
echo "  |--> 发布到Gitee完成"
