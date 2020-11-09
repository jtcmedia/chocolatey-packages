$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/55b56f0a86e3/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2020.1.12f1.exe'
$checksum64     = '076ff74f1e4fdef122a8b9899483ff61a00440f5d470111ebe6904085a4e9e0a'

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
