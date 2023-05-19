$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b805b124c6b7/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2020.3.48f1.exe'
$checksum64     = 'e768530f37fbf00c234c3843a1ae32cd6cfadf4334ad0a4705cdfe2e21c5e0d2'

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
