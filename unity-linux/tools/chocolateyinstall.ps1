$ErrorActionPreference = 'Stop';

$packageName    = 'unity-linux'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/e20f6c7e5017/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-2019.2.13f1.exe'
$checksum64     = '65d19d4963799e52016e72fe8f2558665b978e47b976b70db561a59311a21f82'

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
