# uwu.asm

A few months ago, I made the [Brainfuck uwuifier](https://github.com/lasermtv07/brainfuck-uwufier), a program that **uwuifies** *(replaces all instances of `r` and `l` characters with `w`)*. It's not very useful, however it is atleast interesting. Well, recently I started learning x86 assembler (with **NASM**), so.. my first intutition was to make an uwuifier again. So I did. Well, it has some problems, if it takes input from commandline arguments the string is padded with `  ` (two spaces). Why? Eh, idk. It works so I kinda not care.
## how to use?
Well, it's kinda easy. It can accept input using two ways:
- from **command line arguments** - just write the entire text as command line arguments: It doesn't need any `'` or `\ `, just write the text like this: `./uwu hello world` and it should echo `  hello world`
- from **standart input** - just provide no arguments,a prompt of standard input should appeared,just write it in and hit enter :)

---

*(c) lasermtv07, 2024, under WTFPL by Sam Hocevar.*
