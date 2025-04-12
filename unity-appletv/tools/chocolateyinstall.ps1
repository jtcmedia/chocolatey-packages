$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/fb93bc360d3a/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.0.46f1.exe'
$checksum64     = 'f429fd1e5e0293c2379a9fe49de6de08141a0ffa67bd10ff8002ec452d588b32'

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
