$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/019e31cfdb15/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2019.4.37f1.exe'
$checksum64     = '4012a98547904643b498924d219453e436f0819b025841be5cb1103a1157d4d6'

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
