$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/770e33f6875c/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.6.2f1.exe'
$checksum64     = 'eb318dacaf1a7fbd7e594ed0fa6297299ae3b2f3a627040d322fba5ae391c86d'

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
