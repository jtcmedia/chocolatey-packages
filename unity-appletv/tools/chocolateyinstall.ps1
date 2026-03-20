$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/253a859729df/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.5.0a9.exe'
$checksum64     = 'f69f45e2525b3ba1f70017050541b85fa0144b0c68a1ee509601b1461ce58e23'

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
