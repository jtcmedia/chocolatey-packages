$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4fe6e059c7ef/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.3.12f1.exe'
$checksum64     = '1a055b98e1268bdff992002a022cd712e6c1b4769d00e401101bbad2b836c792'

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
