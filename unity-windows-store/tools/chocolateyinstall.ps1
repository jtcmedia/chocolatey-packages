$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/240d06e2411b/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.6.0a7.exe'
$checksum64     = 'a4304d8ed116a155c33f67b04cd06dd207aba4ba2f02e4840df4d01ba33de9dd'

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
