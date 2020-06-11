$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/0af376155913/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2019.4.0f1.exe'
$checksum64     = '322116ac82f19213cfd12b4f22ccac4424bf735267f5d790192bb425f09ee474'

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
