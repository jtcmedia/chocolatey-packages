$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/2dcb6a0abc42/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.3.42f1.exe'
$checksum64     = '97d093ad78472e13cdd45f60ecdbbdcee40ab520ebe04beda9f58f6059944d91'

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
