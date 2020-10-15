# Initial Scripts
## Powershell scripts to implement settings lazily.

## 1. Start with fresh install of Windows 10
This is nice to get your apps installed on a fresh install of windows 10. This uses chocolatey to automate this step. Once the script has started, no interaction is needed until  the script is done, and a reboot will be recommended to allow all newly installed apps a chance to initialize themselves. 
### 1.1 Install [Chocolatey](https://chocolatey.org/install)
```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

```
### 1.2 Install desired apps

```powershell
iex "& { $(irm https://aka.ms/install-powershell.ps1) } -UseMSI";
choco install -y git, postman, vscode, python, kodi, microsoft-windows-terminal, docker-desktop, docker-compose, vscode-docker, lazydocker, jdk8, teamviewer, vcxsrv, googlechrome, winscp, putty, wsl2, wsl-ubuntu-1804, 
```


## 2. Theming / extras
Getting a backround image, dark mode, VSCode themes/addons, 

```powershell
Install-Module PANSIES -AllowClobber
Install-Module PowerLine 
Install-Module posh-git -Scope CurrentUser
Install-Module oh-my-posh -Scope CurrentUser
Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck

```

```powershell
Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox
```

## 3. Clone git pjts
```powershell
cd "to local directory for all git projects"
curl https://link/to/list/of/projects
for each item in list:
    cd "into first item or mkdir"
    git clone or git pull of these projects
    cd ..
echo "complete!"
```

## 4. Miscellanious
### 4.1 Edit Powershell profile
```powershell
$StuffForProfile = @"
Import-Module PowerLine
Set-PowerLinePrompt -SetCurrentDirectory
Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox
"@

if (!(Test-Path $PROFILE)){
    New-Item -itemType File -Path $PROFILE -Name ($PROFILE)
}

Add-Content -Path $PROFILE -Value $StuffForProfile

```

