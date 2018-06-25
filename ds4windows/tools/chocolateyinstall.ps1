$ErrorActionPreference = 'Stop';

$packageName  = $env:ChocolateyPackageName
$packageTitle = $env:ChocolateyPackageTitle
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://github.com/Ryochan7/DS4Windows/releases/download/v1.4.121/DS4Windows_1.4.121_x86.zip'
$checksum     = 'e8bf448979f5c9c6d0b4f778b3a18717acfa0eb20c7df43d73c1749f49fb6f10'
$url64        = 'https://github.com/Ryochan7/DS4Windows/releases/download/v1.4.121/DS4Windows_1.4.121_x64.zip'
$checksum64   = 'a66a4f41219af56aee2b487786c8de11795655a68eb37fac04c6a5d3af3143ca'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  url64bit      = $url64
  checksum      = $checksum
  checksumType  = 'sha256'
  checksum64    = $checksum64
  checksumType64= 'sha256'
  validExitCodes= @(0)
}

Install-ChocolateyZipPackage @packageArgs

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
