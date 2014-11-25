#!/bin/bash
#
# Usage: locale.sh <locale>
# Description: Set timezone for container
#

set -e

apt-get update -yy
apt-get install -yy locales language-pack-ja-base

cat > /etc/default/locale <<-'EOF'
LANGUAGE="ja_JP:ja"
LC_ALL="ja_JP.UTF-8"
LC_CTYPE="ja_JP.UTF-8"
LANG="ja_JP.UTF-8"
EOF
