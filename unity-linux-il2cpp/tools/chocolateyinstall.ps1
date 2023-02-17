$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/660cd1701bd5/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2020.3.45f1.exe'
$checksum64     = '61c1e365a16f45a7269bacd5caaf5d6a3b53011084d4b3368b9782c9bc007a98'

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
