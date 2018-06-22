$ErrorActionPreference = 'Stop';

$packageName    = 'unity-facebook'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/57cc34175ccf/TargetSupportInstaller/UnitySetup-Facebook-Games-Support-for-Editor-2018.1.6f1.exe'
$checksum64     = 'c0f7d502fabc0c55caf302af45f9cfe39f69f9e4fbc1cb82c22a53a5e60667ea'

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
