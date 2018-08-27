$ErrorActionPreference = 'Stop';

$packageName  = $env:ChocolateyPackageName
$packageTitle = $env:ChocolateyPackageTitle
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://github.com/Ryochan7/DS4Windows/releases/download/v1.5.8/DS4Windows_1.5.8_x86.zip'
$checksum     = '525fa102d8e7bce26997c081192ea82826feee002859955800c142c021622f0b'
$url64        = 'https://github.com/Ryochan7/DS4Windows/releases/download/v1.5.8/DS4Windows_1.5.8_x64.zip'
$checksum64   = 'addec333a4ff31f074d46d020bcef0e741277690cf559616a0e3f85429a6a330'

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
