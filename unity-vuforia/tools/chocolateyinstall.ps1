$ErrorActionPreference = 'Stop';

$packageName    = 'unity-vuforia'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/dc414eb9ed43/TargetSupportInstaller/UnitySetup-Vuforia-AR-Support-for-Editor-2019.1.3f1.exe'
$checksum64     = '091cd2a67a63ad52d02c51eae95b8f84a6fa0858a883d65d437b9c44ca1fff89'

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
