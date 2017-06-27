$ErrorActionPreference = 'Stop';

$packageName  = $env:ChocolateyPackageName
$packageTitle = $env:ChocolateyPackageTitle
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$zipFile      = Get-Item "$toolsDir\*_x64.zip"

Get-ChocolateyUnzip -FileFullPath64 $zipFile `
    -PackageName $packageName `
    -Destination $toolsDir

$startupPath = [Environment]::GetFolderPath("Startup")
$startMenuPath = [Environment]::GetFolderPath("CommonPrograms")

if(Test-Path -Path "$startupPath\$packageName.lnk") {
    Install-ChocolateyShortcut `
        -ShortcutFilePath "$startupPath\$packageName.lnk" `
        -TargetPath "$env:ChocolateyInstall\bin\$packageTitle.exe"
}

Install-ChocolateyShortcut `
  -ShortcutFilePath "$startMenuPath\$packageName.lnk" `
  -TargetPath "$env:ChocolateyInstall\bin\$packageTitle.exe"

# don't need installer zip archive anymore; delete old files if exist
Remove-Item $toolsDir\* -Exclude $packageTitle, *.ps1, *.txt -ErrorAction SilentlyContinue -Force
