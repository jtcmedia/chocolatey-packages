$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e7adf66625be/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.0.66f1.exe'
$checksum64     = '26b77c0962c5ad0842c2630e39f03973554ae137bd0e4f99e3d47c2bc8aadf13'

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
