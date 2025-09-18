$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/43d04cd1df69/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.2.5f1.exe'
$checksum64     = 'dabd73f0a2fc57b42a23d12700dee429d4d1a08cd641ec908b5a0f090048cafe'

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
