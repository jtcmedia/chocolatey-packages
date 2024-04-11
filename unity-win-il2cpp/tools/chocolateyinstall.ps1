$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/334eb2a0b267/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.3.24f1.exe'
$checksum64     = '648f4ac3e6fb891acb97e32772915fd1e8d2af4f9fd7a099ebdc4d0504b52b75'

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
