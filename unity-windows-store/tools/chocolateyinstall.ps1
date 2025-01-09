$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/433b0a79340b/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.0.33f1.exe'
$checksum64     = '6f4984457e709148b002019a0e0a4ee81209e89b8d53c74a4f4a20e640715ca4'

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
