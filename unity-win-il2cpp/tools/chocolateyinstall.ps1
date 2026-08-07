$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/53d4abb44f07/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.6.0b7.exe'
$checksum64     = 'a6cdb6aac1c2d6398ed40be682d07abbd62b6533dfeff10d2b3bba469290ddba'

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
