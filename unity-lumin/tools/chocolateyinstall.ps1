$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/fc477ca6df10/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2020.1.6f1.exe'
$checksum64     = '44b0e909da1a2c27779e6f17652bd30fd67277b4aff81ddf19a1d2e9e9898daf'

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
