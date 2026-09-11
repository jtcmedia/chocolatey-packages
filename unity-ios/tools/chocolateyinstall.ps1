$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/4e7b9b5b6244/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.3.24f1.exe'
$checksum64     = 'cd33f4347dd75fd4ed2c1b70f06abdf27881e9d7b4e7fc378b1dac9da19943bb'

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
