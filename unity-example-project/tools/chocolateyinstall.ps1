$ErrorActionPreference = 'Stop';

$packageName    = 'unity-example-project'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64            = 'https://netstorage.unity3d.com/unity/4cb482063d12/WindowsExampleProjectInstaller/UnityExampleProjectSetup-2018.1.7f1.exe'
$checksum64       = '5718d68050bbe9217cba28b2f44bff4d9d1bcc5f4b0c4863a650da365c2f07a4'

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
