$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/240f4c1f462c/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.1.7f1.exe'
$checksum64     = '102e2a13e5459dc46b065522baf34f0106708d1a0536049fe827412294b6bb26'

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
