$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/76dd1f94b339/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2022.1.4f1.exe'
$checksum64     = '88c9a769decb432748fd2235e959e17932639077590210409c6f1c1873991e64'

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
