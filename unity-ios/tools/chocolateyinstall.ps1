$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d0d63d039a6f/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2023.2.0f1.exe'
$checksum64     = 'bc8b8f907799639adfa064bb708efa956842885bc9283ad2983cb0d52952db95'

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
