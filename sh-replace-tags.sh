#!/bin/bash
# -----------------------------------------------------------------
# FileName: sh-replace-tags.sh
# Date: 2020-10-05
# Author: jiftle
# Description: 
# -----------------------------------------------------------------
sed -i 's/tags: /tags: [/g;s/tags: .*/&]/g' `grep tags -rl ./source/_posts/`

