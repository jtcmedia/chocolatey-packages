$ErrorActionPreference = 'Stop';

$packageName    = 'unity-example-project'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64            = 'https://netstorage.unity3d.com/unity/5d30cf096e79/WindowsExampleProjectInstaller/UnityExampleProjectSetup-2017.1.1f1.exe'
$checksum64       = '503b441a5d189673b61be6fc5e0d0c9461d1d74ac8d4d4df8d42b34a1bcf2283'

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
