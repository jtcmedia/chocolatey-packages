$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/5c3fb0a11183/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2019.3.6f1.exe'
$checksum64     = 'b23dee8c9bd87fd48bcde3c29496211a0385b31090e9c2ca4d068504c9f7e61c'

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
