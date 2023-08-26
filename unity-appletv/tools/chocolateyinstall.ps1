$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/661833f8c66c/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-2023.1.10f1.exe'
$checksum64     = 'a68833ea5baab6f302f8c9faa3c5577e1bdd57a5c87f8aeb152cb427f8b821e4'

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
