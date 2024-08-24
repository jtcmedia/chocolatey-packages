$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ae37dbaefed8/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.0.16f1.exe'
$checksum64     = '768bfe0facf93f3ffd4ad800e31ae71aea0a7d225e286c490e8d0a8c3119000b'

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
