$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/fb119bb0b476/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.3.0f1.exe'
$checksum64     = 'e945659216a8f7d7930bcea6d3df6420aba5792b1f9b5786dba3101195f25e51'

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
