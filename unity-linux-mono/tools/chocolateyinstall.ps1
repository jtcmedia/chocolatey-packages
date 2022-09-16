$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/fd6670bb8be9/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2020.3.39f1.exe'
$checksum64     = '69eb53d244c2e7ea4f4f89caf5582734c1b5c2e8c48411295e0d88fc62a4865b'

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
