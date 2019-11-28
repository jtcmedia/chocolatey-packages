$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/49dd4e9fa428/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2019.2.14f1.exe'
$checksum64     = '3040715d3f4d81f651f9a421a5efd8ac58e2845f24cf069403ea3bf1e0480063'

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
