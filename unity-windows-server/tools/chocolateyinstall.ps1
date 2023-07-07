$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e00e24c187a5/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2023.1.3f1.exe'
$checksum64     = 'bca29ad34adc123cf5dc3488f85243dacbc54c94ad382419983f587ecc0dad8a'

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
