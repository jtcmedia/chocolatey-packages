$ErrorActionPreference = 'Stop';

$packageName    = 'unity-metro'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/2285c3239188/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2020.1.1f1.exe'
$checksum64     = '5351dc926e0bcb9bf98105c6a57fb14f149e162547a34e923ffa52c5e6ed971a'

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
