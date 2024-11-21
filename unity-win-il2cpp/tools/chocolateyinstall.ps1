$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/df4e529d20d3/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.3.53f1.exe'
$checksum64     = '402723ec8718e25b77caad29a7fea3f55396b176960d035b9445d009255d8aae'

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
