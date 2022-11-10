$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/6b6e9fc2adda/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.1.22f1.exe'
$checksum64     = '76be7c46b4c9c338a21cebe7bbfb168f2a4cb2ab913189141f4a5483fe2c0ff6'

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
