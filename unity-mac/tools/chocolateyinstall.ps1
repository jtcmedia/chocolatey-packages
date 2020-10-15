$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/145f5172610f/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2020.1.9f1.exe'
$checksum64     = '5a6f866e8d23ead9556c8977c29fbbf811e09c8d674ae2ae7b39b40e387a968c'

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
