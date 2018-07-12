$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/787658998520/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2018.2.0f2.exe'
$checksum64     = 'feaefa45a259dfa53a8e5dc9deae55d4d946fc6df65a0d381a78dc07d63c5d6f'

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
