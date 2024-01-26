$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/0a9195b3d453/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2023.2.7f1.exe'
$checksum64     = '8df06c835c149e9bf570648323848da84b4e96b57fd0b0fb737f8d4769588542'

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
