$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/6a96561936c0/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.0.15f1.exe'
$checksum64     = '822a93336aa0124ac5bac547d22243f471e13259a444bbeb0480fa9300c71eb5'

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
