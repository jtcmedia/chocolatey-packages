$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/947e1ea5aa8d/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2018.3.9f1.exe'
$checksum64     = '4c6c6fd04a8df3d2f23d312a85bf1c53919fda958916a1726ba7096342cd4399'

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
