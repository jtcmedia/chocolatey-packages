$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/dc414eb9ed43/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2019.1.3f1.exe'
$checksum64     = 'b5553f563a2a82ebe0ac67273bbb87d32d450e0f2925f695890d69d06960698c'

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
