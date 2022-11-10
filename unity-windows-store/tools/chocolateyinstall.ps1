$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/6b6e9fc2adda/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2022.1.22f1.exe'
$checksum64     = '2b13d9ff76b8b691365a7c4a92116ff541b83cc27b9212e55a8b53b5cc9b03ea'

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
