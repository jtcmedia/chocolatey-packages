$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/6a1e21c61430/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2023.2.11f1.exe'
$checksum64     = 'f18265917bf954a3af9732bd159252a1a3fa8f6f41aeab1b72ad4f54635b7f8c'

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
