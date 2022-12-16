$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4016570cf34f/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2021.3.16f1.exe'
$checksum64     = '173fb4d35b7e881379508ebff69f2d5eaf649d9e4c00dfc628d914f904f82f07'

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
