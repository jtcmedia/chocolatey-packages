$ErrorActionPreference = 'Stop';

$packageName    = 'unity-tizen'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url            = 'https://download.unity3d.com/download_unity/3829d7f588f3/TargetSupportInstaller/UnitySetup-Tizen-Support-for-Editor-5.5.2f1.exe'
$checksum       = 'a01cd5a694b04439a2345746b3a89c1f667fa075111cbe8ddc1d59102b5676aa'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url            = $url
  checksum       = $checksum
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
