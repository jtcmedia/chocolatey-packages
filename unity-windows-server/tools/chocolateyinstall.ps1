$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/2b639e48c919/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2023.1.18f1.exe'
$checksum64     = '94622d64eb47398e4eb0ef0a5e3288ea4eaa5c75f56f1eb9e6c8e83423b63ade'

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
