$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/30d813e1a2a9/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.2.15f1.exe'
$checksum64     = '3670e2e9e328e3f029d305f3d25e053126799eb889b522f4adb557036aa01169'

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
