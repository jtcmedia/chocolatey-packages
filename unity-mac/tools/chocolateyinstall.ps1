$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/732dbf75922d/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2018.1.5f1.exe'
$checksum64     = 'f9265578fc43a4fe8c8fc59a3d1d030ae1a92b90a5a59423591adf8314d7c27d'

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
