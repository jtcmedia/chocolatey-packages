$ErrorActionPreference = 'Stop';

$packageName    = 'unity-example-project'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64            = 'https://netstorage.unity3d.com/unity/fc1d3344e6ea/WindowsExampleProjectInstaller/UnityExampleProjectSetup-2017.3.1f1.exe'
$checksum64       = 'bdf8badcdab714d16009d0ef8d7ba28aacaebb1d487b11d7eb21741c392baf54'

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
