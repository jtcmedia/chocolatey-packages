$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/1c7d0df0160b/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2021.3.10f1.exe'
$checksum64     = 'c30603b681b0837226e3c26cfb80ee60fcf05c659861eb1fdba6ef73c92d435e'

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
