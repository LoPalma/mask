# mask: a simple shell utility

## Reason
Mask is a simple utility. It was born out of my need to experiment things quickly and doing so in just one command.
Normally, a user must manually rename their precious `file.txt` to something like `file.txt.bak`.
While this solution is perfectly fine I hate to go through the struggle of having to do `mv` twice, and the annoyance
of the backup file causing ambiguity with the normal one when using tab completion.

## Installation
To install mask you can just run the following commands: 

````bash
$ git clone https://github.com/LoPalma/mask.git
$ cd mask
$ chmod +x ./*
$ sudo ./install.sh 
````

## Un-installation

To un-install mask, you can run the `uninstall.sh` script.

## How to use mask

Running mask on any `file` will rename it to `\x01##file##`. The ASCII 1 character "SOH" in the beginning ensures you cannot properly enter the filename on your keyboard, whereas the surrounding `##` make it visually distinct.

You may not by default rename directories, but you can achieve such behavior with the `-d`, `--dir` flag. 

## Possible upgrades in the future:

- **Masking history**: have mask keep a record of all the files you masked in your system.
- **Actual masking from FS**: as of right now mask is just a "clever trick" to "hide" files. In the future, if it is even possible, I could consider to have mask _actually_ hide files from the FS (File System).
