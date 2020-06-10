$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/0af376155913/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2019.4.0f1.exe'
$checksum64     = '6f5e535018281fb925fe69bfb6b9b966ede10fdc3fb81dd10aad1d814f05fa40'

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
