$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/cb45f9cae8b7/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2021.3.4f1.exe'
$checksum64     = '407608d60f11eb2f77438bad8c2516ada415923b6e3dabb2d6e587bdf9b34f30'

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
