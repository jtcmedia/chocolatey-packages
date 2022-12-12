$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/35dcd44975df/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.2.0f1.exe'
$checksum64     = 'a9fbf3b62a9e6179a59434ba8eb35f51c3bd2a1e7cc26015f0779e40e2ec3231'

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
