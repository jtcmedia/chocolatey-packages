$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/e20f6c7e5017/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2019.2.13f1.exe'
$checksum64     = '2d355613c2be670efc7e417b3148d444508ed33f67ad0d72ab8e88b28063337d'

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
