$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e348e726afe7/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2023.1.2f1.exe'
$checksum64     = 'a076668897ac3ecd62c97bb689cdc6354d1f62735d2eed1040ebfbf7f6e5afea'

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
