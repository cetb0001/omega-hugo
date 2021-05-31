#!/bin/sh
set -ex
icons="skull-crossbones  sad-tear pills comment-slash"

dest=.
url=https://github.com/FortAwesome/Font-Awesome/tree/master/svgs/solid

mkdir -p "${dest}"
for icon in $icons; do
  icon="${icon}.svg"
  wget -O "${dest}/${icon}" "${url}/${icon}"
done