$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a008fa768e6c/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2023.1.0f1.exe'
$checksum64     = '0f421b111963b2f6bfe56ad255fc8f07516b6506d42372ad0ba5a55cb1fc6d15'

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
