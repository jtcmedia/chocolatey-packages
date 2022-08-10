$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/b30333d56e81/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2021.3.8f1.exe'
$checksum64     = 'a30e1d87dc5b31237b55898879a532a2b4d36ca6c539b7e99c0c9bd7b7c83e32'

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
