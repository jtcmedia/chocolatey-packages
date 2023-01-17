$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c93c5d3acf5b/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.2.2f1.exe'
$checksum64     = '5d99fd93aa017ab8cdb05ee7ba8aa9a49c52568b46e17de286e7592a0754ddc3'

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
