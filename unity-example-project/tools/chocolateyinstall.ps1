$ErrorActionPreference = 'Stop';

$packageName    = 'unity-example-project'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64            = 'https://netstorage.unity3d.com/unity/a46d718d282d/WindowsExampleProjectInstaller/UnityExampleProjectSetup-2018.1.2f1.exe'
$checksum64       = 'a4b90f6e6f1a9b2590997b498e4884c5a61f33dc5516e615d044b5095712dce9'

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
