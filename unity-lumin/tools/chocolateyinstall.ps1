$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/4ba98e9386ed/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2019.3.8f1.exe'
$checksum64     = '03dc647643adff3eac84c91a0247331231d6dce71c4591409f3e5667eedec6ef'

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
