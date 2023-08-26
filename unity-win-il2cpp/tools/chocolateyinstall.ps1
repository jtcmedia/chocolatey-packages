$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/661833f8c66c/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2023.1.10f1.exe'
$checksum64     = 'ef69ead4485fd80eb7cae2882761f96b3e90914c7fb885df39395f93fd85a0cd'

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
