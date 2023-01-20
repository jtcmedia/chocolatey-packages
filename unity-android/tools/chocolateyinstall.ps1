$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7f159b6136da/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2020.3.44f1.exe'
$checksum64     = '80ede7f1ed5a745f335e5828181fb464b36082f25dfd3421d8417f06cf72a76c'

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
