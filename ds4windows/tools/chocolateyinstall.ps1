$ErrorActionPreference = 'Stop';

$packageName  = $env:ChocolateyPackageName
$packageTitle = $env:ChocolateyPackageTitle
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64        = 'https://github.com/Ryochan7/DS4Windows/releases/download/v1.4.115/DS4Windows_1.4.115_x64.zip'
$checksum64   = '8933ef24d5038f5d79a5c1476c8c135509ca58c310d8dd05f9896e57620934f6'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url64bit      = $url64
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
