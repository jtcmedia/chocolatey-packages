$ErrorActionPreference = 'Stop';

$packageName    = 'unity-example-project'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64            = 'https://netstorage.unity3d.com/unity/57cc34175ccf/WindowsExampleProjectInstaller/UnityExampleProjectSetup-2018.1.6f1.exe'
$checksum64       = '9e686b4214ba1a09611159da8605a92ce168bf047411ed41df0844bf078bd427'

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
