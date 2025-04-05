$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d91bd3d4e081/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.0.45f1.exe'
$checksum64     = '4139c0678da2d002ca21c1b0ea36bc01ed5b0e6bc47b2b5843bc6c0172d8793b'

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
