$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9f9d16c45e54/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.3.51f1.exe'
$checksum64     = '73f4f9c448c47b5953c8c11f88a35458d08851158e6be7d5ef389d5f0f1d4104'

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
