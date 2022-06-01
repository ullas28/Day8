#!/bin/bash
declare -A sounds
sounds[dog]="Bark"
sounds[cat]="Meow"
sounds[Duck]="Quack"

echo ${sounds[@]}
echo ${!sounds[@]}
