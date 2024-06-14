$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/fb3b7b32f191/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.3.39f1.exe'
$checksum64     = '9378acabf6912b4640966a4e75ee4d54812d86a9d7ce5775368262aab905120e'

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
