$ErrorActionPreference = 'Stop';

$packageName    = 'unity-facebook'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/1d952368ca3a/TargetSupportInstaller/UnitySetup-Facebook-Games-Support-for-Editor-2018.3.4f1.exe'
$checksum64     = 'ad649258594fc322c20df0e75ee102ddab5641fb708bf5df7051dfb9ec4f6979'

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
