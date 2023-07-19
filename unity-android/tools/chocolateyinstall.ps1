$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/611a2ee54063/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2023.1.4f1.exe'
$checksum64     = '8add23466cd612d072284bf255c140b37e6191c585a92706c7874de8ea6b9e1a'

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
