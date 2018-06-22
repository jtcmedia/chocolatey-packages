$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/57cc34175ccf/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2018.1.6f1.exe'
$checksum64     = 'fd96a42c7fc0a59c82dbe3ad338f7fa6bf5f546ccde56a57f00323fcf61768c4'

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
