$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e49a51cf6290/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.1.6f1.exe'
$checksum64     = '3107663faddafb379a665417eb32abcbb0fdeece15e6a31b6fb44e632fcb04f6'

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
