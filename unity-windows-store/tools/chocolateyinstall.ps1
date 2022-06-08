$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/18e4db7a9996/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2020.3.35f1.exe'
$checksum64     = 'e1915fee23cc04590fe18ce067218ab5f844244705b3725a4488fce80d3b3835'

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
