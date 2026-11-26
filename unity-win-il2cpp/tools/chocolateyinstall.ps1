$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/34837772f4f8/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.6.11f1.exe'
$checksum64     = 'bcbb5f766ab46179773aaf214f35b4cbbe7df4fb691a5d2da9bf4adb151c4775'

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
