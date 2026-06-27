$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/bec83302551e/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.6.0b1.exe'
$checksum64     = '297363d0a109a844ed8fe662eac3021189df777dec841bbb02ee244f7e06d0f5'

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
