$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/6c53ebaf375d/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.3.61f1.exe'
$checksum64     = 'f847c907980737ada906275d63d30c1875f6f501be6e362268be43d359fdda88'

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
