$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/a46d718d282d/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2018.1.2f1.exe'
$checksum64     = '071c98e3f8043b5ed59ea73ef1aaf0ad301b572d7fbe5127aa4a742813ba8fa3'

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
