$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8e2281df4c52/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.1.2f1.exe'
$checksum64     = '745ac6a54b119843a06d621285185cfc88f5f1b38446c1d564eae2e2d58a3318'

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
