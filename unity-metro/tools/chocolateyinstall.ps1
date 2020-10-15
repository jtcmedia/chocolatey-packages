$ErrorActionPreference = 'Stop';

$packageName    = 'unity-metro'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/145f5172610f/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2020.1.9f1.exe'
$checksum64     = '7afac55852340c3118a7fad5abab91ca4b4686d06ef9dc9f2eede2a37e476ff0'

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
