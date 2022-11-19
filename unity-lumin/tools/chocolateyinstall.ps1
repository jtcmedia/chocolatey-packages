$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7ade1201f527/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2020.3.42f1.exe'
$checksum64     = 'b94630cd830a81c3d5fa80dd6b3b3c9d8643cf75e0adc5a1fbfa5eefe3680ab8'

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
