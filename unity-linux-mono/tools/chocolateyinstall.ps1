$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/340ba89e4c23/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2022.3.37f1.exe'
$checksum64     = '45040844d7a008119934f74a3fc62ca288cad069a1c2521866157cd37b83cd77'

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
