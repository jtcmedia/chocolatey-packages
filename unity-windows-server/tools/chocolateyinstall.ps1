$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c1cd6601d4c1/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.2.0b5.exe'
$checksum64     = '57f85f2046dc90df70ffedc979f6551c22452f49ac4158dfa7afe590a8378226'

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
