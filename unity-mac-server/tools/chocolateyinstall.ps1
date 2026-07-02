$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/de66c00feac7/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.6.0b2.exe'
$checksum64     = '505b5e9577c6b439409731c2c717b24c74600cd2dfaecd93c822f70767b88c22'

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
