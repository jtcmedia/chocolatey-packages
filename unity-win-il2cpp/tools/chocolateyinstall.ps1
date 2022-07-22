$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8c66806a0c04/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2020.3.37f1.exe'
$checksum64     = 'fff1eae856ffa375886f2cf708d28a3c341e999f9de3962d8a7209bfa16e8915'

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
