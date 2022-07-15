$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/07e076b6d414/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2022.1.9f1.exe'
$checksum64     = '7abf2754e366ef1b151b09a5a2a1a6bec40cfb23b29b95e571f1bf98371a31f9'

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
