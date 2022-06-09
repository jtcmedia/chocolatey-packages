$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/76dd1f94b339/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2022.1.4f1.exe'
$checksum64     = '5eecdff0119e0f05181bb3f7ec23ea916f25c63a7311045709ed268f841201d6'

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
