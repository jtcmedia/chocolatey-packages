$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ee5a2aa03ab2/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2021.3.33f1.exe'
$checksum64     = 'd5d41abcb371f985b03c2cddd7ed17f6c2ae17fb057c95b5e0725e3359e00704'

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
