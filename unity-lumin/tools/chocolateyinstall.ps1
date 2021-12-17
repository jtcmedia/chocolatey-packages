$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/6bd9e232123f/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2021.2.7f1.exe'
$checksum64     = '97c061f73949f3b73e08eea5d02da172fc79c3e695ba3535a6af69fa1e73f7a6'

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
