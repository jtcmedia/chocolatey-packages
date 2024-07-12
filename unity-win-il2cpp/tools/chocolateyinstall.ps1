$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/413673acabac/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.0.10f1.exe'
$checksum64     = 'd75cd870ba209d9b9b517d48fa070adf84a12f8be0beb8b93a4d27f3e3fadd24'

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
