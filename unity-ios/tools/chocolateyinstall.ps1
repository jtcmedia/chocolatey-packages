$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/8a091f9adba4/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.1.18f1.exe'
$checksum64     = '440f6ffc95ee0985f4d44dad7a14caaf3ac08bab837abe8e1e7b3b7ade964e46'

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
