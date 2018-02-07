$ErrorActionPreference = 'Stop';

$packageName    = 'unity-facebook'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/fc1d3344e6ea/TargetSupportInstaller/UnitySetup-Facebook-Games-Support-for-Editor-2017.3.1f1.exe'
$checksum64     = 'ca47a020679fc1e3bbdc3057ca2e1afb93cab6249b3247a823de57bacec971b1'

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
