$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/fa01dd6b76d5/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.0.11f1.exe'
$checksum64     = '2413fd36886f3b02f36474e35b5ac50de4369f1a2bc9c384c5a5c881c3934839'

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
