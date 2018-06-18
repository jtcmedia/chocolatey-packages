$ErrorActionPreference = 'Stop';

$packageName    = 'unity-example-project'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64            = 'https://netstorage.unity3d.com/unity/732dbf75922d/WindowsExampleProjectInstaller/UnityExampleProjectSetup-2018.1.5f1.exe'
$checksum64       = '6fc77e3143e6d781ed38d13024f45294480935c8a8a625d333e30adc33821f30'

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
