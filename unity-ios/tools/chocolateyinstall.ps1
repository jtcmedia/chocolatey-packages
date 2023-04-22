$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d535843d11e1/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.2.16f1.exe'
$checksum64     = '910c5e588f8a1f2030af7844e09e958dad28500f282a997f721a787a12f8af57'

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
