$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/c1cd6601d4c1/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.2.0b5.exe'
$checksum64     = 'f5c59ee47f2a0defeedff5eb88bd219e426e274bba49ee60a100d02b90a5e5cc'

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
