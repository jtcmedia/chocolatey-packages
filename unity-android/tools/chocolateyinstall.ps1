$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/302b264628f9/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.0.19f1.exe'
$checksum64     = 'ace56315a53cd9f861c3af983584b6de3b084df0f91103367c31691668e1d822'

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
