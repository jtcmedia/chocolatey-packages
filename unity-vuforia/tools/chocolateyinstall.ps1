$ErrorActionPreference = 'Stop';

$packageName    = 'unity-vuforia'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d4d99f31acba/TargetSupportInstaller/UnitySetup-Vuforia-AR-Support-for-Editor-2018.1.0f2.exe'
$checksum64     = 'e82696c04724f4010d9bb0844ab7e49073d4fb30abfc391e69adc9214a490e6e'

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
