$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9f9d16c45e54/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.3.51f1.exe'
$checksum64     = '92bfd8126ec002b491bfa0e029aaf2a52a44c9e85a2c555aa06e445bbeb2b969'

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
