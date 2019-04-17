$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/8afd630d1f5b/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-2018.3.12f1.exe'
$checksum64     = '710295d2f1eb6592a99baf02de2c41144dcffecd261db3afe1a973dfedc961eb'

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
