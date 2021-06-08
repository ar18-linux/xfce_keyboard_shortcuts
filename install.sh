#!/bin/bash

set -x
set -e

if [[ "$(whoami)" != "root" ]]; then
  read -p "[ERROR] must be root!"
  exit 1
fi

script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

. "${script_dir}/vars"

mkdir -p "${install_dir}"

cp -f "${script_dir}/xfce_keyboard_shortcuts/xfce4-keyboard-shortcuts.xml" "${install_dir}/xfce4-keyboard-shortcuts.xml"
chown "${user_name}:${user_name}" "${install_dir}/xfce4-keyboard-shortcuts.xml"
chmod 664 "${install_dir}/xfce4-keyboard-shortcuts.xml"
