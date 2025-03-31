$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/101c91f3a8fb/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.0.44f1.exe'
$checksum64     = 'f0a5f0c3cd2bf392cb33175d2b647fa39165373fd85ce5dce49376477df9528d'

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
