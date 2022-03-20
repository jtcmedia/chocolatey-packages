$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/660c164b2fc5/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2019.4.36f1.exe'
$checksum64     = '49017d2e57f956da0e1e8d0bd7a65af1a0cdf32252d5a5896b36f08de7e6e983'

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
