$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/9b001d489a54/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-2019.1.11f1.exe'
$checksum64     = '89d9ae5b27427260704956a62fe395c521afffaab1f94606672fa90741a48120'

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
