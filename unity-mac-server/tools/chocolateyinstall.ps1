$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/244b723c30a6/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.3.19f1.exe'
$checksum64     = '57a36d0cc800539acfabceefca6d0206793710258ce098aeafb2afa0b1779939'

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
