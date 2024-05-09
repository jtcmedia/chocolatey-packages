$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/6bae5ce6b222/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2022.3.28f1.exe'
$checksum64     = 'bc0aaecdfc122b7a7a9b4bcf66cf94c1ba445935ed873bd042ed503f9282f9e4'

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
