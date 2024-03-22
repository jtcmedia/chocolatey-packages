$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/887be4894c44/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.3.22f1.exe'
$checksum64     = 'dade1a0452bcaeeb64a4c0c49c093a6947c853e27d938672746d7113f7a28182'

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
