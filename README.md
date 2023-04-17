# SIMGE-UOW

A collection of...
* scripts made for my uni and completed subjects.
* assignment material that is 'ok' to make public.

If you see a `.sh` file, any of the following will work:
* [Windows' Git Bash][gitforwindows]
* [WSL] (Windows Subsystem for Linux)
    * Run `wsl --set-default-version 2` to set WSL2 as the default.
* [macOS Terminal][Terminal]
* [bash] / [zsh] / ash / ksh / tcsh / sh

[gitforwindows]: https://gitforwindows.org/

[WSL]: https://learn.microsoft.com/en-us/windows/wsl/install

[Terminal]: https://support.apple.com/guide/terminal/welcome/mac

[bash]: https://www.gnu.org/software/bash/

[zsh]: https://zsh.sourceforge.io/

## Overview

### [SIMCalendar](SIMCalendar.sh)

This script fixes problems encountered when importing the `.ics`
on any non-Outlook calendar app.

#### Usage

Download the script:
```bash
wget https://raw.githubusercontent.com/mkamsani/school/main/SIMCalendar.sh
```

Set the script to be executable as program:
```bash
chmod +x SIMCalendar.sh
```

Run the script:
```bash
./SIMCalendar.sh 7c91f167d6bfd41d44aa5473b5acbc48
```

Replace `7c91f167d6bfd41d44aa5473b5acbc48` with your calendar URL's ID.

To receive a prompt to rename each subject, run the script as such:
```bash
changename=true ./SIMCalendar.sh 7c91f167d6bfd41d44aa5473b5acbc48
# Cybersecurity: YOUR_INPUT
# Software Developmnt Methodolog: YOUR_INPUT
```

Credits to [hizkifw] for publishing the first solution to this problem.

[hizkifw]: https://gist.github.com/hizkifw/7c91f167d6bfd41d44aa5473b5acbc48
