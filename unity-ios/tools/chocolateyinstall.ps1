$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/70558241b701/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.3.30f1.exe'
$checksum64     = '42f4b7c03a730c30c310b7eb6aa915ca1b060edfb841023df56bf21ef31be201'

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
