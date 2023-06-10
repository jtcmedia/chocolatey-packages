$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ca3ffb99bcc6/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2021.3.27f1.exe'
$checksum64     = '2eba24a86caf81dea065738d4fbeb3b7ddb88aed39c66d42572a1917158c83bb'

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
