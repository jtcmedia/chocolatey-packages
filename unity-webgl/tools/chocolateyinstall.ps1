$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/07e076b6d414/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2022.1.9f1.exe'
$checksum64     = 'f4e0252879d2bd69b287a42d92905dc09b8ece4b2becaf09c4a96c625bc0cf56'

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
