$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9492f7722ddd/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2023.1.14f1.exe'
$checksum64     = 'a29660b0f2e666ad45f3e80320b7ebac5ed04519237c1dc8c4da9fb0a568fec2'

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
