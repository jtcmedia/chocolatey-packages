$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/2b639e48c919/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2023.1.18f1.exe'
$checksum64     = 'cfab55c15ef83a3c6ef3ba1c64f13ce669bf29434a691c63c3dc7fcf9494ab41'

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
