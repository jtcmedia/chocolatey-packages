$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/6a1e21c61430/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2023.2.11f1.exe'
$checksum64     = '538671faf6c79e4704f82de4babba64690282ca76a5663b7a611a6c7ed2e810d'

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
