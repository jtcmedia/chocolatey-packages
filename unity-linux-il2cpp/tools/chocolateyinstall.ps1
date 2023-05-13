$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/765657fe9343/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.2.19f1.exe'
$checksum64     = 'b8b7a91117984d2bdb04f25d567c5a2733dd5d9d3d4227e61d6cc985e5308c09'

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
