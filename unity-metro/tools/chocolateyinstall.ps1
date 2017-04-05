$ErrorActionPreference = 'Stop';

$packageName    = 'unity-metro'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url            = 'https://download.unity3d.com/download_unity/3829d7f588f3/TargetSupportInstaller/UnitySetup-Metro-Support-for-Editor-5.5.2f1.exe'
$checksum       = '895c15e322138329eb14cc30bd002d5cbed68138c9ecb7a05a456a211088aad0'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url            = $url
  checksum       = $checksum
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
