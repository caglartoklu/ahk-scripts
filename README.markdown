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


## Security

Some antivirus software will report the Windows binaries for these scripts as malicious software,
such as [this one](http://www.autohotkey.com/board/topic/61342-comodo-reports-autohotkeynet-as-malware/).
It is a false positive, they are not.
If you are suspicious, simply download the source code in `.ahk` format,
then compile them yourself, or simply use them in their source code form.


## Usage

Simply run the corresponding script.

Some of them are triggered by special hotkeys,
some of them do their thing when they are executed.

Please see the source code of the corresponding script.


## Script Index

### [youtube-dl-helper.ahk](https://github.com/caglartoklu/ahk-scripts/tree/master/youtube-dl-helper)

[Download youtube-dl-helper.exe](http://caglar.toklu.co/d/youtube-dl-helper.exe)

[youtube-dl](http://rg3.github.io/youtube-dl/) is an incredible video downloader
supporting a ton of online services.
`youtube-dl-helper.ahk` is a simple script providing less typing when using youtube-dl.

To use it, copy the video URL to clipboard, switch to `cmd.exe` as you would with
`youtube-dl` and type `y22` to download the video in high definition.
`y22` will expand to this, waiting for you to press `ENTER`:

    youtube-dl -t --write-description -f 22 -- "<WHATEVER FROM THE CLIPBOARD>"

The script will perform when the hotstrings are used.


### [excel2010_untrust_docs.ahk](https://github.com/caglartoklu/ahk-scripts/blob/master/office/excel2010_untrust_docs.ahk)

Automates Microsoft Excel 2010 to clear trusted documents.
The script will perform at the moment it is executed.


### [cmdexe.ahk](https://github.com/caglartoklu/ahk-scripts/blob/master/cmdexe/cmdexe.ahk)

[Download cmdexe.exe](http://caglar.toklu.co/d/cmdexe.exe)

Provides:

- `ctrl-shift-v` to paste
- `ctrl-v` to paste
- `ctrl-a` to select all
- `ctrl-f` to open find dialog

The script will perform when the shortcuts are used.


### [disable_shift_del.ahk](https://github.com/caglartoklu/ahk-scripts/blob/master/windows/disable_shift_del.ahk)

[Download disable_shift_del.exe](http://caglar.toklu.co/d/disable_shift_del.exe)

Disables `shift-delete` key on Windows, and switches it with regular `delete` key.
So, whenever `shift-delete` is used, file will go to Recycle Bin instead.
Tested with Windows 7 and Windows 8.
On Windows 7, presses `yes` for the dialog afterwards too.

Reference:
http://stackoverflow.com/a/18074871

The script will perform when the shortcuts are used.


### [snipping-tool-new.ahk](https://github.com/caglartoklu/ahk-scripts/blob/master/windows/snipping-tool-new.ahk)

[Download snipping-tool-new.exe](http://caglar.toklu.co/d/snipping-tool-new.exe)

Launch the *Snipping Tool* of Windows and automatically activates *New*.

### [copy_path.ahk](https://github.com/caglartoklu/ahk-scripts/blob/master/windows/copy_path.ahk)

[Download copy_path.exe](http://caglar.toklu.co/d/copy_path.exe)

It is a simple script that will copy the files dropped to its icon to clipboard.


### [recyclebin-shredder-using-mcafee.ahk](https://github.com/caglartoklu/ahk-scripts/tree/master/recyclebin-shredder-using-mcafee/recyclebin-shredder-using-mcafee.ahk)

When executed, it shreds Windows Recycle Bin using McAfee's Shredder,
since McAfee Live Save - Internet Security 12.8 does not place such a
right click menu to the Recycle Bin.


### [firefox_save_in_archive.ahk](https://github.com/caglartoklu/ahk-scripts/blob/master/firefox/firefox_save_in_archive.ahk)

[Download firefox_save_in_archive.exe](http://caglar.toklu.co/d/firefox_save_in_archive.exe)

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


### [ie_save_in_archive.ahk](https://github.com/caglartoklu/ahk-scripts/blob/master/internet-explorer/ie_save_in_archive.ahk)

[Download ie_save_in_archive.exe](http://caglar.toklu.co/d/ie_save_in_archive.exe)

When executed, it overrides `ctrl-s` (only when Internet Explorer is active).
It makes sure that the web pages are saved as `Web Archive, single file (*.mht)`.


### [clean_temp_files_of_ie.ahk](https://github.com/caglartoklu/ahk-scripts/blob/master/internet-explorer/clean_temp_files_of_ie.ahk)

This little script opens the *Internet Options* and cleans history by
pressing *Delete* button.

### disable_modifier_keys

A few simple scripts to disable `control`, `alt` and `shift` keys on your keyboard.
These scripts, especially the left ones, can be used to slow you down when the pinky finger is too much stressed
under heavy coding.

- [disable_left_alt.ahk](https://github.com/caglartoklu/ahk-scripts/blob/master/disable_modifier_keys/disable_left_alt.ahk)
Download [disable_left_alt.exe](http://caglar.toklu.co/d/disable_left_alt.exe)
- [disable_left_ctrl.ahk](https://github.com/caglartoklu/ahk-scripts/blob/master/disable_modifier_keys/disable_left_ctrl.ahk)
Download [disable_left_ctrl.exe](http://caglar.toklu.co/d/disable_left_ctrl.exe)
- [disable_left_shift.ahk](https://github.com/caglartoklu/ahk-scripts/blob/master/disable_modifier_keys/disable_left_shift.ahk)
Download [disable_left_shift.exe](http://caglar.toklu.co/d/disable_left_shift.exe)
- [disable_right_alt.ahk](https://github.com/caglartoklu/ahk-scripts/blob/master/disable_modifier_keys/disable_right_alt.ahk)
Download [disable_right_alt.exe](http://caglar.toklu.co/d/disable_right_alt.exe)
- [disable_right_ctrl.ahk](https://github.com/caglartoklu/ahk-scripts/blob/master/disable_modifier_keys/disable_right_ctrl.ahk)
Download [disable_right_ctrl.exe](http://caglar.toklu.co/d/disable_right_ctrl.exe)
- [disable_right_shift.ahk](https://github.com/caglartoklu/ahk-scripts/blob/master/disable_modifier_keys/disable_right_shift.ahk)
Download [disable_right_shift.exe](http://caglar.toklu.co/d/disable_right_shift.exe)



### [sleep_after_vlc.ahk](https://github.com/caglartoklu/ahk-scripts/blob/master/vlc/sleep_after_vlc.ahk)

[Download sleep_after_vlc.exe](http://caglar.toklu.co/d/sleep_after_vlc.exe)

Shutdowns the computer in 10 seconds after
[VLC Media Player](http://www.videolan.org/vlc/index.html)
is closed.
For this to work, `Quit at the end of playlist` should be selected in VLC media player,
as in the following screenshot:

![Quit at the end of playlist](https://raw.github.com/caglartoklu/ahk-scripts/media/vlc/quit_at_the_end_of_playlist.jpg)

If the the [sleep_after_vlc.ini](https://github.com/caglartoklu/ahk-scripts/blob/master/vlc/sleep_after_vlc.ini)
is provided, it will be automatically read by sleep_after_vlc.

### [vlc_few_seconds_back.ahk](https://github.com/caglartoklu/ahk-scripts/blob/master/vlc/vlc_few_seconds_back.ahk)

[Download vlc_few_seconds_back.exe](http://caglar.toklu.co/d/vlc_few_seconds_back.exe)

If a VLC window exists, it will activate it, and it will jump back 20 seconds.
In my configuration, it is bound to the extra left side button of my
[Microsoft Wireless Mouse 5000](http://www.microsoft.com/hardware/en-us/d/wireless-mouse-5000).

### [vlc_few_seconds_forward.ahk](https://github.com/caglartoklu/ahk-scripts/blob/master/vlc/vlc_few_seconds_forward.ahk)

[Download vlc_few_seconds_forward.exe](http://caglar.toklu.co/d/vlc_few_seconds_forward.exe)

If a VLC window exists, it will activate it, and it will jump forward 20 seconds.
In my configuration, it is bound to the extra right side button of my
[Microsoft Wireless Mouse 5000](http://www.microsoft.com/hardware/en-us/d/wireless-mouse-5000).

### [vlc_toggle_play.ahk](https://github.com/caglartoklu/ahk-scripts/blob/master/vlc/vlc_toggle_play.ahk)

[Download vlc_toggle_play.exe](http://caglar.toklu.co/d/vlc_toggle_play.exe)

If a VLC window exists, it will activate it, and toggle playing, that is, by sending a `space` keypress.
In my configuration, it is bound to the wheel button click of my
[Microsoft Wireless Mouse 5000](http://www.microsoft.com/hardware/en-us/d/wireless-mouse-5000).


### [clip_length.ahk](https://github.com/caglartoklu/ahk-scripts/blob/master/text/clip_length.ahk)

[Download clip_length.exe](http://caglar.toklu.co/d/clip_length.exe)

When `ctrl-shift-c` is pressed, shows the length of the clipboard contents in a small dialog box.

### [selected_length.ahk](https://github.com/caglartoklu/ahk-scripts/blob/master/text/selected_length.ahk)

[Download selected_length.exe](http://caglar.toklu.co/d/selected_length.exe)

When `ctrl-shift-s` is pressed, shows the length of the selected content in a small dialog box.
This will almost work in any text editor or application.

![Selected Length](https://raw.github.com/caglartoklu/ahk-scripts/media/strings/selected_length.png)

### [selected_lower.ahk](https://github.com/caglartoklu/ahk-scripts/blob/master/text/selected_lower.ahk)

[Download selected_lower.exe](http://caglar.toklu.co/d/selected_lower.exe)

When `ctrl-shift-l` is pressed, lower case the selected text.
This will almost work in any text editor or application.

### [selected_upper.ahk](https://github.com/caglartoklu/ahk-scripts/blob/master/text/selected_upper.ahk)

[Download selected_upper.exe](http://caglar.toklu.co/d/selected_upper.exe)

When `ctrl-shift-u` is pressed, UPPER case the selected text.
This will almost work in any text editor or application.

### [text_paste.ahk](https://github.com/caglartoklu/ahk-scripts/blob/master/text/text_paste.ahk)

[Download text_paste.exe](http://caglar.toklu.co/d/text_paste.exe)

Pastes the contens of the clipboard without pictures and formatting (ctrl-shift-p).

### [vs2013_keys_for_sharpdevelop441.ahk](https://github.com/caglartoklu/ahk-scripts/blob/master/sharpdevelop/vs2013_keys_for_sharpdevelop441.ahk)

[SharpDevelop](http://www.icsharpcode.net/OpenSource/SD/Default.aspx)
is a free and open source IDE for .NET framework, supporting, C#, VB.NET, Python, F# and some other languages.
Most of its shortcuts are similar to Visual Studio, except some.
This little AutoHotKey script maps common Visual Studio keyboard shortcuts to SharpDevelop.


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
