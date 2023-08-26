$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/661833f8c66c/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2023.1.10f1.exe'
$checksum64     = '7929d1e830673f1f35efbb11b8758123b0d79b5cd7101ae1733ed52d3994ccbc'

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
