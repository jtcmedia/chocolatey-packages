$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/57cc34175ccf/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2018.1.6f1.exe'
$checksum64     = '14c809bd441ef6f46c0e60c317dccea9b8c4e1a65faeec69bc4736d36b3302f1'

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
