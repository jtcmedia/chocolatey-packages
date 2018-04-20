$ErrorActionPreference = 'Stop';

$packageName    = 'unity-example-project'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64            = 'https://netstorage.unity3d.com/unity/9231f953d9d3/WindowsExampleProjectInstaller/UnityExampleProjectSetup-2017.4.1f1.exe'
$checksum64       = 'ac47b3b719042e242f475c1b89d89c1268fbf8eeef10fdd54043e1da5a52ed72'

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
