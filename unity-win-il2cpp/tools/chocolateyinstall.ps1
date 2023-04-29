$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/54cb9bda89c4/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.2.17f1.exe'
$checksum64     = '7bd80361c2e24c3083d6e65f6ec38b4be51d6425712625baba5d332024ae0cef'

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
