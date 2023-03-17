$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/1b156197d683/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2021.3.21f1.exe'
$checksum64     = 'cec2b4c8eb8f0db6b5973a4fe8a21ce2480c554ddcb441ff1a04a0f5698d285f'

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
