$ErrorActionPreference = 'Stop';

$packageName    = 'unity-metro'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/cb262d9ddeaf/TargetSupportInstaller/UnitySetup-UWP-.NET-Support-for-Editor-2018.2.4f1.exe'
$checksum64     = '9974597069572cb03c6c144adf20c31fe7b55d70578c3c032b06c6957f7d1430'

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
