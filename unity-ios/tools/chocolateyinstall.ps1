$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/6e9a27477296/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2018.3.0f2.exe'
$checksum64     = '32a7b52ba2ca4a21838b125e5600b8843cae4d88af61ced26b9c3e953fe35930'

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
