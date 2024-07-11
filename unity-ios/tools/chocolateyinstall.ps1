$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/340ba89e4c23/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.3.37f1.exe'
$checksum64     = 'e8762a302991467ce413b14b075895c99170af03a8949de4a95f20997f8290d3'

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
