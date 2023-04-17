$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/213b516bf396/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2021.3.23f1.exe'
$checksum64     = '29a139180e1a9b0dcd7c0ec34a0157d6947ab36017d4362a10720ab88d737b7f'

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
