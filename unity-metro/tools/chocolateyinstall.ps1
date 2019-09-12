$ErrorActionPreference = 'Stop';

$packageName    = 'unity-metro'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://beta.unity3d.com/download/9dace1eed4cc/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2019.2.5f1.exe'
$checksum64     = '26f81add9c6ef6a7dcf6c8f8742579bcc1cc5cddaf83eeb2a852a0c9f6160e64'

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
