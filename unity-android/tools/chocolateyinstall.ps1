$ErrorActionPreference = 'Stop';

$packageName    = 'unity-android'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/b8cbb5de9840/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2018.1.1f1.exe'
$checksum64     = '27d0572170215c8b92b302c8be057fee2e0c71ccff545f3ef918bcc0e94a49f2'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
