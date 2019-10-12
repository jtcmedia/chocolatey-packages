$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ebce4d76e6e8/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2019.2.9f1.exe'
$checksum64     = '5f5649dbbe23d0c60d6d54b2839601a18e8192631fbba101313108e4007c6d78'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum       = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
