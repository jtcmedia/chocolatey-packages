$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/fa717bb873ec/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2020.1.4f1.exe'
$checksum64     = 'b82591484d9cfa885c861736921bd3acf99300f058af2e2f3bc48224d7cf3b0b'

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
