$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8c66806a0c04/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2020.3.37f1.exe'
$checksum64     = '253746fbf72272eba1d723977b52c1f8a05656eeb41b82b0416e77f9a729d0cb'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
