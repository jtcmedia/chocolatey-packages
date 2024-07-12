$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/413673acabac/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.0.10f1.exe'
$checksum64     = 'da74ef7a34546478b913a498496ec07da24e64099db6206f0c9be075bb1fb619'

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
