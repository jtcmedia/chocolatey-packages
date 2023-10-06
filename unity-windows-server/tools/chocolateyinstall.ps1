$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e5ad54273a6f/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2023.1.16f1.exe'
$checksum64     = '4fd67e8cf206d551c5d0ec657cd902725167312ff0475929df1f464bd9dbe8ec'

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
