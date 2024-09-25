$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/94d194ca434d/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2021.3.44f1.exe'
$checksum64     = 'ceaea09c3bc2777886b12eb860bc9330c54fdd9cc64285af858b418d5e6f7475'

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
