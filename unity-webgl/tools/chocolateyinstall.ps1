$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/6b6e9fc2adda/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2022.1.22f1.exe'
$checksum64     = '073ed921d876d4ea4676cc0d4089d98cd103693998fa95508812c888c5cc5564'

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
