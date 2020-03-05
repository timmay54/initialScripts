# initialScripts
Powershell scripts to implement settings lazily.

## 1. Fresh install of windows
This is nice to get your apps installed on a fresh install of windows 10. This uses chocolatey to automate this step. Once the script has started, no interaction is needed until  the script is done, and a reboot will be recommended to allow all newly installed apps a chance to initialize themselves. 

## 2. Theming / extras
Getting a backround image, dark mode, VSCode themes/addons, 

Install-Module PANSIES -AllowClobber
Import-Module PowerLine
Install-Module PowerLine
Import-Module PowerLine
Set-PowerLinePrompt -SetCurrentDirectory 
Install-Module posh-git -Scope CurrentUser
Install-Module oh-my-posh -Scope CurrentUser
Install-Module -Name PSReadLine -AllowPrerelease -Sco…   
Import-Module posh-git
Import-Module oh-my-posh

## 3. Clone git pjts

## 4. Miscellanious

