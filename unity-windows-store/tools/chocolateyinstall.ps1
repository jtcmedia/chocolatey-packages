$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4e1b0f82c39a/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2022.3.39f1.exe'
$checksum64     = '6b4c46ea3d623c380fa8018ccf8079e960e21d721fa50742e4ae2cdb7a742fa6'

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
