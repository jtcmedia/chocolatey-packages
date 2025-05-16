$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d17678da8412/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.2.0b1.exe'
$checksum64     = '78b24ae6234813d54fbee269d544c00753331d3e97f98d130c58c49128a32c27'

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
