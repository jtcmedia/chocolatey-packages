$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/7b32bc54ba47/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2020.1.2f1.exe'
$checksum64     = 'f1673a471bbd0bf87390d0582662639361ebde0a263b87cfcbce1150c2e1f6a5'

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
