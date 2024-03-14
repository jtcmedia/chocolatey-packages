$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/eeca29774eb5/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2023.2.14f1.exe'
$checksum64     = '2d07dc57db9a27fdac3f5f79e30f73877dddb47b2f922dbe2edde83bd4dbbe09'

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
