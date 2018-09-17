$ErrorActionPreference = 'Stop';

$packageName    = 'unity-metro'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/ae1180820377/TargetSupportInstaller/UnitySetup-UWP-.NET-Support-for-Editor-2018.2.8f1.exe'
$checksum64     = '6be6d095482055e96707d552b37e27a5aef29b392afecc6c82d691f021c2576a'

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
