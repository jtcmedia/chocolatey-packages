$ErrorActionPreference = 'Stop';

$packageName    = 'unity-example-project'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64            = 'https://download.unity3d.com/download_unity/a2913c821e27/WindowsExampleProjectInstaller/UnityExampleProjectSetup-5.6.2f1.exe'
$checksum64       = 'a7195f5a0c0ce889dc940ae31338ba9d528abc785ab429eaa602437a6cf6c3c7'

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
