$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/07e076b6d414/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.1.9f1.exe'
$checksum64     = '1667ced828c356e31c0dfe371feb64e3faa65833d46357f262234a16be620480'

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
