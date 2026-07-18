$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c9ba695d4f07/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.3.20f1.exe'
$checksum64     = '48bea63acf6a46e2fd3003361d7ff4ce092261bcea03983172635358bfd134c3'

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
