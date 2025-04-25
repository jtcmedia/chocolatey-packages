$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9ea152932a88/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.1.0f1.exe'
$checksum64     = 'e21446eb3bd966393dd6b4db23a4038fa96bd128c9ed1898013e23c5116a6f7d'

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
