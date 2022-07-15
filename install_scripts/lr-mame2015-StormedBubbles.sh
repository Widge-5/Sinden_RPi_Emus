#!/usr/bin/env bash

# This file is not part of The RetroPie Project

rp_module_id="lr-mame2015-StormedBubbles"
rp_module_desc="Arcade emu - MAME 0.160 port for libretro"
rp_module_help="ROM Extension: .zip\n\nCopy your MAME roms to either $romdir/mame-libretro or\n$romdir/arcade"
rp_module_licence="NONCOM https://raw.githubusercontent.com/libretro/mame2015-libretro/master/docs/license.txt"
rp_module_repo="git https://github.com/StormedBubbles/mame2015-libretro.git hacks"
rp_module_section="exp"

function _update_hook_lr-mame2015-StormedBubbles() {
    # move from old location and update emulators.cfg
    renameModule "lr-mame2014" "lr-mame2015-StormedBubbles"
}

function sources_lr-mame2015-StormedBubbles() {
    gitPullOrClone
}

function build_lr-mame2015-StormedBubbles() {
    rpSwap on 1200
    make clean
    make
    rpSwap off
    md_ret_require="$md_build/mame2015_libretro.so"
}

function install_lr-mame2015-StormedBubbles() {
    md_ret_files=(
        'mame2015_libretro.so'
        'docs/README-original.md'
        'docs/license.txt'
    )
}

function configure_lr-mame2015-StormedBubbles() {
    local system
    for system in arcade mame-libretro; do
        mkRomDir "$system"
        ensureSystemretroconfig "$system"
        addEmulator 0 "$md_id" "$system" "$md_inst/mame2015_libretro.so"
        addSystem "$system"
    done
}
