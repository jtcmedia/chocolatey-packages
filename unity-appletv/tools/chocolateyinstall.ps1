$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/e89d5df0e333/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.2.12f1.exe'
$checksum64     = 'a115791c264971fef11fc1ccabd646cc2dc571f478697464840826f6a3e3e595'

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
