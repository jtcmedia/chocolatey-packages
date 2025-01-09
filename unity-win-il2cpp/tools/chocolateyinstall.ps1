$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/433b0a79340b/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.0.33f1.exe'
$checksum64     = '3edff765d4eb12729f701c44f5c8bdb515146dad65d64cb16176912d9b5e3aac'

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
