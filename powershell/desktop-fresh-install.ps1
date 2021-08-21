# 


# install powershell core 7
# https://www.thomasmaurer.ch/2019/03/how-to-install-and-update-powershell-6/
iex "& { $(irm https://aka.ms/install-powershell.ps1) } -UseMSI"

# powerLine
# https://github.com/Jaykul/PowerLine
Install-Module PANSIES -AllowClobber
Install-Module PowerLine
Import-Module PowerLine
Set-PowerLinePrompt -SetCurrentDirectory -RestoreVirtualTerminal -Newline -Timestamp -Colors "#FFDD00", "#FF6600"
# not needed
Set-PowerLinePrompt -Colors "#00DDFF", "#0066FF"
$prompt

# POSH-GIT
# https://www.hanselman.com/blog/HowToMakeAPrettyPromptInWindowsTerminalWithPowerlineNerdFontsCascadiaCodeWSLAndOhmyposh.aspx
Install-Module posh-git -Scope CurrentUser
Install-Module oh-my-posh -Scope CurrentUser
Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
# IN NOTEPAD $PROFILE:
Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox

# download Cascadia Code PL from
# https://github.com/microsoft/cascadia-code/releases?WT.mc_id=-blog-scottha
# add "fontFace":  "Cascadia Code PL"
# to settings.json in terminal


# https://github.com/timmay54/initialScripts/blob/master/README.md
# https://www.youtube.com/watch?v=2dsnwlnNBzs

# Install chocolatey 
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco install -y git vscode postman winscp 