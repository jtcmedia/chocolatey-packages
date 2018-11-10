$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/65e0713a5949/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2018.2.15f1.exe'
$checksum64     = 'db24481b530c40994678c83db278e8e8e7a424577e9eb8b61cfc5c9ec4998ddb'

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
