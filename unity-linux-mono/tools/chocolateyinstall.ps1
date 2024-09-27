$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/e2bacb8dee3a/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.0.21f1.exe'
$checksum64     = '758783cae2331a0ea787608af999ebeabc1a50cd1e80c5c7a7112f398ef774a4'

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
