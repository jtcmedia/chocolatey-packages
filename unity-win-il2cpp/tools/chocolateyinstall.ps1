$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/660cd1701bd5/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2020.3.45f1.exe'
$checksum64     = 'f9f1b183230dd2feb5cfdeabb8cadd0abf213e2558c86f77b42c7fa3b8380c7f'

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
