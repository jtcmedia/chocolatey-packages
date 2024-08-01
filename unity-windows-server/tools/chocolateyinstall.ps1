$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/cbdda657d2f0/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2022.3.40f1.exe'
$checksum64     = '6870b254f35353e701696cc6193cce699fcd55fb16aa06ad8c963b7552cb37aa'

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
