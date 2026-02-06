$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/696ec25a53d1/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.3.7f1.exe'
$checksum64     = 'd924e10a2aa30c12af24fa4ae9798ba25c5baa7af5704ceba0917ae0707a4f16'

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
