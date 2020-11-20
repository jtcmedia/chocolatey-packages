$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d81f64f5201d/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2020.1.14f1.exe'
$checksum64     = '789497b5ff23860126f52fd342a667860818893a60fcb851e669c6c93058a7b7'

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
