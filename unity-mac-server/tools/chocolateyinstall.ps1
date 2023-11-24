$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/eff2de9070d8/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.3.14f1.exe'
$checksum64     = 'c3eab0c778d6c426b00aeb789f1e92d2fef032814a93afc247c6cee8c2d151e6'

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
