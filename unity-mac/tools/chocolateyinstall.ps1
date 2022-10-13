$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/01d83b40d570/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.1.20f1.exe'
$checksum64     = 'fa334784be43af76d7f3d5a68a308aab06a40a34957b727b26a2cb965206e377'

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
