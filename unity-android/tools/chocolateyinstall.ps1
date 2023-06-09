$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/f18e0c1b5784/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2022.3.1f1.exe'
$checksum64     = '5efc302938f8c14c43c32c546c05a14e33ee58d169fa2c6ffb8bd6866e4e085e'

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
