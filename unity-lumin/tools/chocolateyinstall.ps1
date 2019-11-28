$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/49dd4e9fa428/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2019.2.14f1.exe'
$checksum64     = '383410a46ca258c623d9e10b49a0d283ef9af97aff59cd23bcc3f8964435869a'

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
