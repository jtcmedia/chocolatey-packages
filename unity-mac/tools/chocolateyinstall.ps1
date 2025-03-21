$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/97272b72f107/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.0.43f1.exe'
$checksum64     = '9933e8cac97980cfd8658b04ee3ddca8bd53a3512a597eb1b78239c89f1b5029'

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
