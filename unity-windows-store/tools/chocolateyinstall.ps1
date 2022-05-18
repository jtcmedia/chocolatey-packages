$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/78d14dfa024b/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2019.4.39f1.exe'
$checksum64     = '57153b14fcfb6e6e3e12c9a30126c3f2fbaa007976ed1ec3f34db1c883871852'

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
