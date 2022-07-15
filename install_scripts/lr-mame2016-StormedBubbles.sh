#!/usr/bin/env bash

# This file is not part of The RetroPie Project

rp_module_id="lr-mame2016-StormedBubbles"
rp_module_desc="MAME emulator - MAME 0.174 port for libretro"
rp_module_help="ROM Extension: .zip\n\nCopy your MAME roms to either $romdir/mame-libretro or\n$romdir/arcade"
rp_module_licence="GPL2 https://raw.githubusercontent.com/libretro/mame2016-libretro/master/LICENSE.md"
rp_module_repo="git https://github.com/StormedBubbles/mame2016-libretro.git hacks"
rp_module_section="exp"
rp_module_flags=""

function depends_lr-mame2016-StormedBubbles() {
    getDepends libasound2-dev
}

function sources_lr-mame2016-StormedBubbles() {
    gitPullOrClone
}

function build_lr-mame2016-StormedBubbles() {
    rpSwap on 1200
    local params=($(_get_params_lr-mame) SUBTARGET=arcade)
    make -f Makefile.libretro clean
    make -f Makefile.libretro "${params[@]}"
    rpSwap off
    md_ret_require="$md_build/mamearcade2016_libretro.so"
}

function install_lr-mame2016-StormedBubbles() {
    md_ret_files=(
        'mamearcade2016_libretro.so'
    )
}

function configure_lr-mame2016-StormedBubbles() {
    local system
    for system in arcade mame-libretro; do
        mkRomDir "$system"
        ensureSystemretroconfig "$system"
        addEmulator 0 "$md_id" "$system" "$md_inst/mamearcade2016_libretro.so"
        addSystem "$system"
    done
}
