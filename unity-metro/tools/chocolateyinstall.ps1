$ErrorActionPreference = 'Stop';

$packageName    = 'unity-metro'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/a9f86dcd79df/TargetSupportInstaller/UnitySetup-Metro-Support-for-Editor-2017.3.0f3.exe'
$checksum64     = 'cac2d3fc807ab2df9db8d196fc4595cfa1e31896bc1b64b42384e697999d1632'

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
