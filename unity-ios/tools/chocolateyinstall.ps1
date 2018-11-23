$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/88933597c842/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2018.2.17f1.exe'
$checksum64     = 'f3d31793d9a849d460d4411de88d53111ac807081c8d841a03cc414b7949721a'

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
