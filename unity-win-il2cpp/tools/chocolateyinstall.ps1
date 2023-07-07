$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e00e24c187a5/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2023.1.3f1.exe'
$checksum64     = 'ea5256d89d41311bff9dfdae4d35be591330377c631f684b7d41db0bc90fb89d'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum       = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
