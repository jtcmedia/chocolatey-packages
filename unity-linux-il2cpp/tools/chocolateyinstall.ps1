$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/03b40fe07a36/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.1.17f1.exe'
$checksum64     = '84e8d221c19d795e431b0c4f8154539842e9d33eb3d84b8ddc83f3e956f81fdc'

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
