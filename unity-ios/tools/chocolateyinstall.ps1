$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/e2bacb8dee3a/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.0.21f1.exe'
$checksum64     = 'df5061b6bdbda616be5872f421c42463659014cd0ad6e3d6a490bafbe2fc1e4f'

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
