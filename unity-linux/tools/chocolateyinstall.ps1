$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/4ebd28dd9664/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-2018.2.7f1.exe'
$checksum64     = '0328f7024ba9c672e16d85a4c80e32c94f9a7a57a2b87c3ca37f0d9ccc796f4e'

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
