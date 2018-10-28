$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/3262fb3b0716/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2018.2.14f1.exe'
$checksum64     = 'b8dda611c8b017910c1ad7d0576472facb3e52f9c17973098915ef7881555efb'

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
