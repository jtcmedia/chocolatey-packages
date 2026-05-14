$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/26349cd2a5c8/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.0.75f1.exe'
$checksum64     = 'e9764aa98c52b403acfa0698957d50567cae4547fad662206633dd956b52444c'

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
