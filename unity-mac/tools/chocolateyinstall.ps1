$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/27ab2135bccf/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2019.3.0f6.exe'
$checksum64     = 'e9af337b59bb07e02631c2dcfab138710509056b94a0f08d610b1cc41d903db5'

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
