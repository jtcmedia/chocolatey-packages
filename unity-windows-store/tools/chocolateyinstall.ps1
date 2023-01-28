$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8216e0211249/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2022.2.4f1.exe'
$checksum64     = 'f4635d828a03dbe74a69fde343a5b92e9878d722df8027ea937ed43bb8571f64'

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
