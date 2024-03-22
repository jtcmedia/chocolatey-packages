$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/887be4894c44/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.3.22f1.exe'
$checksum64     = '7734d872567e7c950431e6ee290de1912cfc4b538d4743dc883a3c3c7ebbfcd4'

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
