# hitorigotos reinstall script
# make sure to run 
# Set-ExecutionPolicy RemoteSigned -Scope CurrentUser 
# before using



#functions
function Install-Scoop
{
	Write-Host "Attemtping to install scoop..."
	Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
	irm get.scoop.sh | iex
}

function Sync-ScoopBuckets
{
	Write-Host "Attemtping to add scoop buckets: extras, versions, and games..."
	scoop bucket add extras
	scoop bucket add versions
	scoop bucket add games

}

function Install-ScoopPackages
{
	Write-Host "Attemtping to install packages..."
	scoop install sudo paint.net paint.net-plugin-pyrochild python vscode audacity obs-studio git curl wget cat libreoffice qbittorrent spotify spicetify-cli vlc-nightly discord-canary steam steamcmd vcredist2015 vcredist2017 directx powertoys epic-games-launcher openshot

}

function Update-ScoopPackages
{
	Write-Host "Attemtping to update & upgrade packages..."
	scoop update

}

Install-Scoop
Sync-ScoopBuckets
Install-ScoopPackages
Update-ScoopPackages
Write-Host "All done!"
Read-Host -Prompt "Press any key to finish..." 
