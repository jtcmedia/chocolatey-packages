$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/9492f7722ddd/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-2023.1.14f1.exe'
$checksum64     = '44de12317749a7e8eb0a4f64da6ad04a79348c83ad2d3b7b89b7ceab38ee2fc4'

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
