$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9dce81d9e7e0/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2023.1.5f1.exe'
$checksum64     = '480555cf3e65fc54b4c193ca1cf46b9096ef93ee63879f4c1cc7871d187cb978'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum       = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
