$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/b6f2b893ea32/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2021.1.25f1.exe'
$checksum64     = '70b53e7c48c5cd5f868c32dda287c14752b6c92f3dd68575b24d76681faeb933'

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
