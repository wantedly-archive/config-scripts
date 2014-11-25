#!/bin/bash
#
# Usage: locale-ja.sh
# Description: Set Japanese locale for container
#

set -e

apt-get update -y && \
    apt-get install -y locales language-pack-ja-base

cat > /etc/default/locale <<-'EOF'
LANGUAGE="ja_JP:ja"
LC_ALL="ja_JP.UTF-8"
LC_CTYPE="ja_JP.UTF-8"
LANG="ja_JP.UTF-8"
EOF
