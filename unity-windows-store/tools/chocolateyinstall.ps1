$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a13dfa44d684/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2022.3.45f1.exe'
$checksum64     = '641ec7c40c9a045e8d48a3aeed16f6dc2482654ac79bf10775e4026b0b80bc33'

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
