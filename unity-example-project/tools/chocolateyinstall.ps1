$ErrorActionPreference = 'Stop';

$packageName    = 'unity-example-project'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64            = 'https://download.unity3d.com/download_unity/d4d99f31acba/WindowsExampleProjectInstaller/UnityExampleProjectSetup-2018.1.0f2.exe'
$checksum64       = 'a8e3c4572c9bf2f49df8ba3e9c5af485f5063a79c429d9ed19e9989d493c10e0'

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
