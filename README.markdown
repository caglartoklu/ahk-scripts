# ahk-scripts

[AutoHotKey](http://www.autohotkey.com/)
scripts I have written.

Please note that, these are not full blown applications.
Some of them are very specific to some applications,
versions and even languages.
There is a strong possibility that a script in this repository may work
on a system, but not on another.

It is also possible they will behave differently with different keyboard layouts.

So please use them at your own risk.

See the
[LICENSE](https://github.com/caglartoklu/ahk-scripts/blob/master/LICENSE)
file.

Home page: https://github.com/caglartoklu/ahk-scripts


## Installation

Copy the corresponding script to a directory of your choice,
and run it.


## Supported Environments

Windows 7 and Windows 8 has been used for testing.
But, almost all of the scripts here automate some applications/platforms,
so the exact supported environment varies from script to script.
Better to check the source code for the exact results.

Tested with AutoHotkey 1.1.13.01.


## Usage

Simply run the corresponding script.

Some of them are triggered by special hotkeys,
some of them do their thing when they are executed.

Please see the source code of the corresponding script.


## Script Index

### youtube-dl-helper.ahk
[youtube-dl](http://rg3.github.io/youtube-dl/) is an incredible video downloader
supporting a ton of online services.
`youtube-dl-helper.ahk` is a simple script providing less typing when using youtube-dl.

To use it, copy the video URL to clipboard, switch to `cmd.exe` as you would with
`youtube-dl` and type `y22` to download the video in high definition.
`y22` will expand to this, waiting for you to press `ENTER`:

    youtube-dl -t --write-description -f 22 -- "<WHATEVER FROM THE CLIPBOARD>"

The script will perform when the hotstrings are used.


### excel2010_untrust_docs.ahk
Automates Microsoft Excel 2010 to clear trusted documents.
The script will perform at the moment it is executed.


### cmdexe.ahk
Provides:

- `ctrl-shift-v` to paste
- `ctrl-v` to paste
- `ctrl-a` to select all
- `ctrl-f` to open find dialog

The script will perform when the shortcuts are used.


### disable_shift_del.ahk
Disables `shift-delete` key on Windows, and switches it with regular `delete` key.
So, whenever `shift-delete` is used, file will go to Recycle Bin instead.
Tested with Windows 7 and Windows 8.
On Windows 7, presses `yes` for the dialog afterwards too.

Reference:
http://stackoverflow.com/a/18074871

The script will perform when the shortcuts are used.


### recyclebin-shredder-using-mcafee.ahk

When executed, it shreds Windows Recycle Bin using McAfee's Shredder,
since McAfee Live Save - Internet Security 12.8 does not place such a
right click menu to the Recycle Bin.


### firefox_save_in_archive.ahk

When executed, it overrides `ctrl-s` (only when Firefox is active)
by sending `alt-f` key for file menu and press `g` for `Save Page In Archive As`.

Firefox does not have a `Save Page In Archive As` method by default.
This menu item comes with the
[Mozilla Archive Format](https://addons.mozilla.org/En-us/firefox/addon/mozilla-archive-format/)
add-on.
Since `Save Page In Archive As` menu item does not have a shortcut,
this little script provides one by overriding `Save Page As`.

Here is a screenshot for the menu structure:
![Firefox, MAF, Save Page In Archive Menu](https://raw.github.com/caglartoklu/ahk-scripts/media/firefox/firefox_save_in_archive.png)



## License

Licensed with 2-clause license ("Simplified BSD License" or "FreeBSD License").
See the
[LICENSE](https://github.com/caglartoklu/ahk-scripts/blob/master/LICENSE)
file.


## Legal

The company, product and service names used in this web site are for identification purposes only.
All trademarks and registered trademarks are the property of their respective owners.


## Contact Info

You can find me on
[Google+](https://plus.google.com/108566243864924912767/posts)

Feel free to send bug reports, or ask questions.
