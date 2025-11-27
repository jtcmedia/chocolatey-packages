$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/589824c1fc31/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.2.14f1.exe'
$checksum64     = '7fba14c343fd4f40a6bb1c4a19702660d4ca1163f44505f855ff5b613f0686a7'

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
