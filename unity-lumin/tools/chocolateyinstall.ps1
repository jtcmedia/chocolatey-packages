$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/6437fd74d35d/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2019.3.7f1.exe'
$checksum64     = '41014fa42f2169904f8dfc8f9a5f4ad3716725a0e92d2bf353c6aad6bf5f0a0b'

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
