$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c93c5d3acf5b/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.2.2f1.exe'
$checksum64     = 'c05ef5a98efa25d690c818d9966919d9ebf3c51e670d2150db25073e7f0c3d76'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum       = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
