$ErrorActionPreference = 'Stop';

$packageName    = 'unity-example-project'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64            = 'https://netstorage.unity3d.com/unity/b8cbb5de9840/WindowsExampleProjectInstaller/UnityExampleProjectSetup-2018.1.1f1.exe'
$checksum64       = '7409a8ad8e301fa73b464547a0caea74af5ceb2a5c97c2b7bee598f9c2aaa8aa'

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
