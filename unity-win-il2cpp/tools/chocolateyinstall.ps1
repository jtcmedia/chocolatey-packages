$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/35dcd44975df/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.2.0f1.exe'
$checksum64     = '305b5ca0adc8e83fbc8f682a309f3cfe2b7bc6f9ef7962475b606b7f1e4cf3f8'

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
