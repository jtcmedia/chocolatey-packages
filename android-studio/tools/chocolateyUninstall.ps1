# Common Functions and Config
. (Join-Path $(Split-Path -parent $MyInvocation.MyCommand.Definition) 'Common.ps1')

#$studioExe = (gci "${installdir}/bin/studio64.exe").FullName | sort -Descending | Select -first 1
$studioExe = GetStudioExe

# Remove Pinned Item if it exist
Uninstall-ChocolateyPinnedTaskBarItem $studioExe

# Remove Desktop Lnk if it exist
$desktop = $([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::DesktopDirectory))

$desktopLink = Join-Path $desktop "$([System.IO.Path]::GetFileName($studioExe)).lnk"
if (Test-Path ($desktopLink)) {Remove-Item $desktopLink -force}

# Remove Android Studio Directory
# Remove-Item -Recurse -Force $installDir
$params = @{
	PackageName = $package;
	FileType = "exe";
	SilentArgs = "/S";
	File = GetUninstallFile;
}


Uninstall-ChocolateyPackage @params

# if nothing else is in the $extractionPath besides Android Studio then delete it as well.
if( (Get-ChildItem $extractionPath | Measure-Object).Count -eq 0)
{
	Write-Host "Deleting $extractionPath"
	Remove-Item -Force $extractionPath
}
