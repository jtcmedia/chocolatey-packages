$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/8ff31bc5bf5b/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2020.2.3f1.exe'
$checksum64     = '5d34830103d02a6afd7064fa751748a24bbff4fbb9e9604ccd5790332d025775'

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
