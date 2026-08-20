$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b57deb96f08d/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.5.9f1.exe'
$checksum64     = '5de0f68ba593e0e048c9d39091fba8a516489074478ef785ab74b786f2339f5a'

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
