$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/40e81493c67d/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.6.10f1.exe'
$checksum64     = '52ecd440dfa48da6426e21fb85af1cf3fdd3f566145d0ad4e565aa03dac98045'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
