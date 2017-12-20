$ErrorActionPreference = 'Stop';

$packageName    = 'unity-example-project'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64            = 'https://download.unity3d.com/download_unity/a9f86dcd79df/WindowsExampleProjectInstaller/UnityExampleProjectSetup-2017.3.0f3.exe'
$checksum64       = '3dfe4c86031ace826b87f4d7d23fe689d2563872153264ad7100727cd249cb42'

$packageArgs = @{
  packageName      = $packageName
  fileType         = 'EXE'
  url64bit         = $url64
  checksum64       = $checksum64
  checksumType64   = 'sha256'
  silentArgs       = '/S'
  validExitCodes   = @(0)
}

Install-ChocolateyPackage @packageArgs
