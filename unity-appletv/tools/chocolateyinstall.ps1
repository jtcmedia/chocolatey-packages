$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/589824c1fc31/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.2.14f1.exe'
$checksum64     = '95af54f6cba6c92681dd27d53bd81ea431d890d795658c8c8eb4dacd8256cf42'

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
