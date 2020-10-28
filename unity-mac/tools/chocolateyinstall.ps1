$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/974a9d56f159/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2020.1.10f1.exe'
$checksum64     = '64eaf70b8c7b7b3f2befbc53c1fb8674c6068433a38384c589be0d6a1ad93d66'

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
