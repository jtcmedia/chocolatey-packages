$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/55531d7fa82e/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.2.3f1.exe'
$checksum64     = 'ea8b185ee229c1e11db8c54a665b1f558b8dec1e93c0cfe73b7fb7c8cc56a4c8'

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
