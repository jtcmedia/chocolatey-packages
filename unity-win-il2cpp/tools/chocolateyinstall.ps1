$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/e6e740a1c473/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2019.3.9f1.exe'
$checksum64     = '6a07589e92c1e375232362d3adb494ab1cf10c1e0ee7362643c7a65816b38d77'

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
