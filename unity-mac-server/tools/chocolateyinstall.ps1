$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/40eb3a945986/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2021.3.5f1.exe'
$checksum64     = 'e55db89610d06af7ab85d10312be8fa195ac69179e07b6a6415bd8e3a7764e19'

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
