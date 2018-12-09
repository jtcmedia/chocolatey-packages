$ErrorActionPreference = 'Stop';

$packageName    = 'unity-docs'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/06990f28ba00/WindowsDocumentationInstaller/UnityDocumentationSetup-2018.2.19f1.exe'
$checksum64     = 'ea922298748135ff668a70e1e6c5cdd73e00c735dedd37eb3040445fb9b5ba53'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
