$ErrorActionPreference = 'Stop';

$packageName    = 'unity-example-project'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64            = 'https://netstorage.unity3d.com/unity/94bf3f9e6b5e/WindowsExampleProjectInstaller/UnityExampleProjectSetup-2017.2.1f1.exe'
$checksum64       = '4ffbffdd5e9721b4df51a3ea47d17165a0377de6a03aebacbfda9955f1e0746f'

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
