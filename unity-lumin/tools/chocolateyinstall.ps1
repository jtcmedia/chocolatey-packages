$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/18e4db7a9996/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2020.3.35f1.exe'
$checksum64     = 'f35541050b73de1ee8417cb021ef4f3cf1649578acf80d8bf58dcb0574f33255'

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
