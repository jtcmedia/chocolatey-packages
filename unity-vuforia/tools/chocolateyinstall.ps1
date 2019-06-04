$ErrorActionPreference = 'Stop';

$packageName    = 'unity-vuforia'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/6f1140cf2297/TargetSupportInstaller/UnitySetup-Vuforia-AR-Support-for-Editor-2019.1.5f1.exe'
$checksum64     = 'b2ff75544019a3955c39d2968e757f55f93d0c08eefde40163672dcc3fade97b'

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
