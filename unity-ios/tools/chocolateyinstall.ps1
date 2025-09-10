$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c7638eb16d91/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.2.3f1.exe'
$checksum64     = '22d94d0749b86ed7a14cfea0d3c79511854251b50f1a267e972766b262b3b7ab'

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
