$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/0c9c2e1f4bef/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2023.2.9f1.exe'
$checksum64     = 'eb4c10f4a69fd9a54728a1f6fd699530c4eaf0fac3c347063a7616988f9b8f82'

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
