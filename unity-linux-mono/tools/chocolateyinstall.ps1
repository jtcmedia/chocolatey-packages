$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/433b0a79340b/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.0.33f1.exe'
$checksum64     = '6aacbc1fed6f9fc619313039daf432232d8c175eacf7f3ce6cc86a216965a4f2'

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
