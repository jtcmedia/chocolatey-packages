$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/9c7b5e468860/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.0.56f1.exe'
$checksum64     = '9f262eeb513c49e97a8e2f441ec09c958f77f7def0533eb6a8ebfc69ade149b6'

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
