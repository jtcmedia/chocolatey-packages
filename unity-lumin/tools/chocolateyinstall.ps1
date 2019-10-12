$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ebce4d76e6e8/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2019.2.9f1.exe'
$checksum64     = '84bc293d454c42c86044333c63d2342f572555562e43c494591fdc4bec287529'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
