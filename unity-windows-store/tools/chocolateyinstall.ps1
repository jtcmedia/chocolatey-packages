$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b0a1d6caadd2/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.4.11f1.exe'
$checksum64     = '4b6a9b1d40e69434a1c9e72ab9b528cd49bdd71c09bb4262d2eb16c6c3cf87da'

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
