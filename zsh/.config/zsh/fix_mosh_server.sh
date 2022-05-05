#!/bin/bash

fix_mosh_server() {
  local fw='/usr/libexec/ApplicationFirewall/socketfilterfw'
  local mosh_sym="$(which mosh-server)"
  local mosh_abs="$(greadlink -f $mosh_sym)"
  sudo "$fw" --setglobalstate off
  sudo "$fw" --add "$mosh_abs"
  sudo "$fw" --unblockapp "$mosh_abs"
  sudo "$fw" --setglobalstate on
}

fix_mosh_server

