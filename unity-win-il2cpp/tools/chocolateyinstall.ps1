$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/611a2ee54063/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2023.1.4f1.exe'
$checksum64     = 'a49eec8f3dbcc6e6454097628228439bb7b9ff96874f5b08e8fc4ca6d2a80ba2'

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
