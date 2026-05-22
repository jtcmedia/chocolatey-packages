$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/342347f1f18f/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.5.0b9.exe'
$checksum64     = 'd50ce5e12406e69959ae9f2051981c579f4be88f8c68095e886bfdfaf0a71206'

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
