$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b84c4024cd38/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2023.1.17f1.exe'
$checksum64     = '3134e578354a082186f64dac157a77b4c8d9e0a818d2d63db81daef58a00580c'

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
