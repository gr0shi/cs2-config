# My Counter-Strike 2 config

This CS2 config comes from years of accumulating information from various sources and maintaining it up to date with every game update introducing new features and deprecating others.

## Attribution and useful resources

This project includes the wonderful Orel's Text Mod and awesome BananaGaming's Color Mod available here: <https://gamebanana.com/gamefiles/3711>, and here: <https://maximhere.me/modifications/>, that will greatly simplify radio messages displayed in the chat.

Some part of the README are based on a great reddit post by /u/birkir: <https://www.reddit.com/r/GlobalOffensive/comments/8ax858/updated_csgo_tips_configs_and_more/>.

You can find a list of all the available CS:GO Cvars here: <https://developer.valvesoftware.com/wiki/List_of_CS:GO_Cvars>, it contains a description and the possible value of every one of them.

## Installation

Download an archive of this repository by clicking the "Clone or download" green button on the top*ish* right of this page and then clicking on "Download ZIP".

Copy the downloaded `cs2-config-main.zip` file to the folder where you want to store the config files, for example `%USERPROFILE%\Documents` and unzip it.

Edit the `copy-cfg-files-windows.cmd` script to verify that the `cs2_install_path` variable is identical to your CS:GO install path and change it if that's not the case.

Right click on the `copy-cfg-files-windows.cmd` file and click on "Execute as Administrator".

Verify that the files were correctly copied by navigating to your cs2 `cfg` folder and checking if the `.cfg` files of this project are present.

## Usage

### General

You don't need to add `+exec autoexec.cfg` to your CS:GO launch options but you need to add `-language textmod` or `-language colormod` to enable the Orel's or BananaGaming's Text Mod.

From now on you shouldn't modify CS:GO settings[1] by using the in-game menu. If you do so your modifications will be overwritten by the settings stored in the `.cfg` files the next time you open CS:GO. If you want to modify a particular setting you will need to directly edit the corresponding `.cfg` file.

[1] The only exception is video settings that are not modified by the `autoexec.cfg` file.

For optimal use, you shouldn't delete the folder that contains the git repository that's in your `Documents` folder in order to edit the files it contains later and just re-execute the `copy-cfg-files` script again.

### In-game

For example if you want to enable *Demo view mode* you just need the execute the `demos.cfg` file by opening the console (by pressing `=` or whatever you have set `toggleconsole` to in your binds), typing `exec demos` or `demoview` shortcut and pressing `ENTER`. Same thing if you want to enable *Other configs*, use `exec "config"` respectively.

## Configuration

### Launch Options

`-tickrate 128 -novid -nojoy -exec autoexec -language english`

- `tickrate 128` how many times per second the server calculates stuff. tickrate 128 - highest possible tickrate in CS
- `novid` to skip the video intro.
- `nojoy` is required for me since the Panorama update on Linux because I have an Xbox One controller plugged-in at all time and CS:GO crash at launch in this situation. See this [github issue](https://github.com/ValveSoftware/csgo-osx-linux/issues/1801) to learn more.
- `exec autoexec` used to automatically execute the config
- `cpu_frequency_monitoring 2` to see if CPU thermal throttling is an issue
- `language english` to enable by default english language.

### Video settings

- `VibranceGUI`, in-game vibrance level: **150**
  - VibranceGUI will automatically enable AMD Saturation or Nvidia Digital Vibrance when a specific configured game is full-screened. It makes the in-game colors "pop" more while the desktop can stay at it's standard value. I chose 150 because it's a good compromise between the dull CS2 default and the over the top maximal saturation.
- `Resolution`: **1024x768 Stretched**
  - It's down to personal preference and computer specs.
- `Display Mode`: **Fullscreen**
  - For the lowest input lag, chose `Fullscreen` because it give the game direct access to the graphics output without the OS interfering and adding display lag. `Windowed` and `Fullscreen windowed` will make alt-tabbing faster but because the video frames has to pass through the OS before being displayed it will add some display lag.

### Mouse settings

- `sensitivity`:  **1.1**
  - I tried a huge amount of sens and I settled on 1.1, because for me it turned out to be the best, with it I can easily turn around, and in general I feel comfortable when playing, your value may differ and the sensitivity value is selected solely by you and under you.
- `DPI`: **800**
  - I use one of the most common DPI, Before I used to use 400 DPI, but I had problems using the mouse inside windows and other programs / applications / games, your value may differ and the DPI value is selected solely by you and under you.
- `Polling Rate`: **1000Hz**
  - The amount of time per second that your OS will poll your mouse. If you have a wired mouse you want to set this to it's highest value possible. If you have a wireless mouse you also need to think about battery life and maybe set it to 1000Hz or 250Hz if you don't feel any difference.

## Contributing

Contributions are welcome if you see any area of improvement possible to the scripts or if there's new CS:GO config variables to tweak!
