$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/1c4764c07fb4/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.0.23f1.exe'
$checksum64     = '60106363468c8036194536ea728fdc08d9f92819eeea9cae1f7896e78e5464ac'

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
