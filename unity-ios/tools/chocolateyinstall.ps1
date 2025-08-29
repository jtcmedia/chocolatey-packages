$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ea398eefe1c2/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.2.2f1.exe'
$checksum64     = 'b6475ce9b9ba8fb2d8eb3730e79af1c5011d1a03341360230b2d3bfa67bf7a7b'

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
