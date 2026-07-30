$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0e0577a1a2ac/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.5.6f1.exe'
$checksum64     = 'd93c6846be01b6c22497a073435d6d257854847c5dfeadb63c83a0f6ceb75e75'

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
