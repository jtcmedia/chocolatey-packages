$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/240f4c1f462c/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2022.1.7f1.exe'
$checksum64     = 'e499bca2084c18c4bcd31da4d5152f0726ca26caf80fbfcc534e2660356afa77'

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
