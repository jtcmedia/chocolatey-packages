$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/55531d7fa82e/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.2.3f1.exe'
$checksum64     = 'da2e081cbba3dd9486c9e4fff5c187774a0a5c967b4d10b4febe03afd7e644e8'

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
