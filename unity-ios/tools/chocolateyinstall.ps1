$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/76b3e37670a4/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2018.3.5f1.exe'
$checksum64     = '409764479a85e9e5c210a7f0e9352273482fff7206ef77b9aa66d0c548d29f83'

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
