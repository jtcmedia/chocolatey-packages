$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/4ebd28dd9664/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2018.2.7f1.exe'
$checksum64     = '1c79e88984a3a5e1fd8c57fa91526423d56d92af886ca94d09082b37c243e885'

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
