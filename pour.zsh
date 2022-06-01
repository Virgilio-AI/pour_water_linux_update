#!/usr/bin/zsh
###############################
# Author: Virgilio Murillo Ochoa
# Date: 01/June/2022 - Wednesday
# personal github: Virgilio-AI
# linkedin: https://www.linkedin.com/in/virgilio-murillo-ochoa-b29b59203
# contact: virgiliomurilloochoa1@gmail.com
# web: virgiliomurillo.com
# #########################################



# home/folder
homeFolder=$1
# git/repo/folder
gitRepoFolder=$2


# ==========================
# ========== Sync the .confi folder ======
# ==========================
# nvim:
sudo rsync -aAXv --exclude=personal --exclude=skeletons.vim --exclude=UltiSnips --exclude=Plugins --exclude=.vimdata $homeFolder/.config/nvim/ $gitRepoFolder/.config/nvim/
# awesome:
sudo rsync -aAXv --exclude=personal $homeFolder/.config/awesome/ $gitRepoFolder/.config/awesome/
# mpd:
sudo rsync -aAXv --exclude=personal $homeFolder/.config/mpd/ $gitRepoFolder/.config/mpd/
# ncmpcpp:
sudo rsync -aAXv --exclude=personal $homeFolder/.config/ncmpcpp/ $gitRepoFolder/.config/ncmpcpp/
# neofetch:
sudo rsync -aAXv --exclude=personal $homeFolder/.config/neofetch/ $gitRepoFolder/.config/neofetch/
# ranger:
sudo rsync -aAXv --exclude=personal $homeFolder/.config/ranger/ $gitRepoFolder/.config/ranger/
# zsh:
sudo rsync -aAXv --exclude=personal $homeFolder/.config/zsh/ $gitRepoFolder/.config/zsh/



# ==========================
# ========== sync the .local files ======
# ==========================

# bin:
sudo rsync -aAXv --exclude=personal $homeFolder/.local/bin/ $gitRepoFolder/.local/bin/
# etc:
sudo rsync -aAXv --exclude=personal $homeFolder/.local/etc/ $gitRepoFolder/.local/etc/
# lib:

# suckless files
# dwm:
sudo rsync -aAXv --exclude=personal $homeFolder/.local/src/dwm $gitRepoFolder/.local/src/dwm
# dwmblocks:
sudo rsync -aAXv --exclude=personal $homeFolder/.local/src/dwmblocks $gitRepoFolder/.local/src/dwmblocks
# dmenu:
sudo rsync -aAXv --exclude=personal $homeFolder/.local/src/dmenu $gitRepoFolder/.local/src/dmenu
# awesome:
sudo rsync -aAXv --exclude=personal $homeFolder/.local/src/awesome $gitRepoFolder/.local/src/awesome
# st:
sudo rsync -aAXv --exclude=personal $homeFolder/.local/src/st $gitRepoFolder/.local/src/st

cd $gitRepoFolder
lazygit
