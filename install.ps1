# hitorigotos reinstall script
# make sure to run 
# Set-ExecutionPolicy Unrestricted -Scope CurrentUser 
# before using



#functions
function Install-Scoop
{
	Write-Host "Attemtping to install scoop..." -ForegroundColor DarkCyan
	Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
	irm get.scoop.sh | iex
}

function Install-GitViaScoop
{
	Write-Host "Scoop requires git to be installed before buckets can be synced..." -ForegroundColor DarkCyan
	Write-Host "Attempting to install git..." -ForegroundColor DarkCyan
	scoop install git
}

function Sync-ScoopBuckets
{
	Write-Host "Attemtping to add scoop buckets: extras, versions, and games..." -ForegroundColor DarkCyan
	scoop bucket add extras
	scoop bucket add versions
	scoop bucket add games

}

function Install-ScoopPackages
{
	Write-Host "Attemtping to install packages..." -ForegroundColor DarkCyan
	scoop install sudo winget paint.net paint.net-plugin-pyrochild vscode audacity obs-studio git curl wget libreoffice qbittorrent spotify spicetify-cli vlc-nightly discord-canary steam steamcmd vcredist2015 vcredist2017 powertoys epic-games-launcher openshot

}



# attempts to install the HEVC video extensions plugin for free
# lmafo fuck microsoft for trynna charge $2 for this shit
# the moment EGL and fortite get a native linux release
# i'm dropping their stupid ass OS entirely

function Install-WingetHevcPackage
{
	Write-Host "Attemtping to install HEVC video support..." -ForegroundColor DarkCyan
	winget install 9N4WGH0Z6VHQ
}

function Update-ScoopPackages
{
	Write-Host "Attemtping to update & upgrade packages..." -ForegroundColor DarkCyan
	scoop update

}


Install-Scoop
Install-GitViaScoop
Sync-ScoopBuckets
Install-ScoopPackages
Update-ScoopPackages
Install-WingetHevcPackage
Write-Host "Scoop python doesn't come with pip, so you may want to manually install python." -ForegroundColor DarkCyan
Write-Host "All done!" -ForegroundColor DarkGreen
Read-Host -Prompt "Press any key to finish..." -ForegroundColor DarkGreen
