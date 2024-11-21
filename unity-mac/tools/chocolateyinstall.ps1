$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/df4e529d20d3/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.3.53f1.exe'
$checksum64     = '4e86d738ec97a5273bda6e1b26af3c04339d8d43aa7aef3dfcc9fa2b17d44ef2'

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
