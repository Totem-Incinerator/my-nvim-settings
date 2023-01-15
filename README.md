# Preview, theme: catpuccin 
![Editor preview image](https://github.com/Totem-Incinerator/my-nvim-settings/blob/main/preview.PNG)
![Editor prewview image telescope](https://github.com/Totem-Incinerator/my-nvim-settings/blob/main/telescope.PNG)
## Notes 
For Treesitter to work on windows it is necessary to install MinGW toolchain, through Chocolatey with the command:

```powershell 
choco install mingw 
```
Then it is necessary to reopen the terminal and in nvim run: `:TSInstall c` and `:TSInstall cpp`
