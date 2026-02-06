$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/696ec25a53d1/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.3.7f1.exe'
$checksum64     = 'a81b0f15c214555f5f19145a111a464a93a1a0257f1b5d2725acb78824d2f69d'

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
