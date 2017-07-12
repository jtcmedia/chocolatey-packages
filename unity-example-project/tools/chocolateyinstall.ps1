$ErrorActionPreference = 'Stop';

$packageName    = 'unity-example-project'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64            = 'https://beta.unity3d.com/download/472613c02cf7/WindowsExampleProjectInstaller/UnityExampleProjectSetup-2017.1.0f3.exe'
$checksum64       = '02cc01e94187a518d0781cf935bc4ffb2845af8dbc0dcf60f95dfa29e0258a4f'

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
