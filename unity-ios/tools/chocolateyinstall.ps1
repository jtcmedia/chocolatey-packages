$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/24e8595d6d43/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2021.3.7f1.exe'
$checksum64     = '5cb85dab98588179dd5b10bd6ece32ece456c49f9212be39bc76d85faa978e81'

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
