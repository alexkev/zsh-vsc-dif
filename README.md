# zsh-vsc-dif: a simple difftool

## Problem Statement 
Potential security risks when using an online difftools.

## Solution
A local difftool. This plugin extends upon vscode's intregated difftool by dynamically generating files for any file extensions used and stores them in your local repo. 

## Features

| Command                   | Action                                                |
| :------------------------ | :---------------------------------------------------- |
| `dif`                     | creates/loads & compares files: dif1.txt & dif2.txt   |
| `dif .ext`                | creates/loads & compares files: dif1.ext & dif2.ext   |
| `dif ~/foo.ext`           | creates/loads existing file with same file extention as foo.ext and compares files |
| `dif ~/foo.ext ~/bar.ext` | compares files                                        |                                                                        
| `dif delete`              | deletes all generated files                           |                                                                        

.ext refers to the file extention (ex: .js .txt .json etc.)

## Requiremnets
- [Visual Studio Code](https://code.visualstudio.com/)
- [oh-my-zsh](https://ohmyz.sh/)

## Install Instructions 
- https://github.com/ohmyzsh/ohmyzsh/wiki/Customization
- https://opensource.com/article/19/9/adding-plugins-zsh 

## Enjoy!

Support Open Source Code by buying me a drink ⚡🥤 😉.

[![paypal](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=axel720%40gmail.com&currency_code=USD&source=url)