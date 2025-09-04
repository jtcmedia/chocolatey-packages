$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b7b9860b7bbd/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.0.57f1.exe'
$checksum64     = '9bb102b7efa35632f3f760900e6b10750e19d9a985e3fb060828b0f0c87e3f8c'

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
