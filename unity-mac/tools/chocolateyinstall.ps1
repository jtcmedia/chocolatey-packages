$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/2207421190e9/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2018.2.9f1.exe'
$checksum64     = '03333cde668ddf118910677f7db974c384b451d11fb88011d6cf55cc957e057d'

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
