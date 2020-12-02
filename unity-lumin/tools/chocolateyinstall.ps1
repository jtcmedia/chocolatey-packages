$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/97d0ae02d19d/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2020.1.15f1.exe'
$checksum64     = 'b67641639b9f7bb9c37beb6f2de3f58408b9473412b107ba22e67dfca913291d'

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
