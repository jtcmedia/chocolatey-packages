$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e7adf66625be/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.0.66f1.exe'
$checksum64     = '4d88ff23b4ee80eb0e4a8e65be2f786f665bce5bb02476e8ebf551a59efb96be'

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
