$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/07e076b6d414/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.1.9f1.exe'
$checksum64     = '0453eb8ec8f1b10f4452712d94519a65eb49ac85f8ac73f7d264d88f6e05357d'

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
