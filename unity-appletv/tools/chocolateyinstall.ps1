$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url            = 'https://download.unity3d.com/download_unity/88d00a7498cd/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-5.5.1f1.exe'
$checksum       = 'a84cde7fab0f96f909a89fd59ddced103b40ad42cebc836916355a3afdf15718'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url            = $url
  checksum       = $checksum
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
