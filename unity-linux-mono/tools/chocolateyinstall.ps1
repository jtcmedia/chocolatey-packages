$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/923722cbbcfc/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.1.5f1.exe'
$checksum64     = 'e9a66fd50d3805db31fddd158c1fe2ebabca4e2665b9929c2a7df2f1b1d3524b'

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
