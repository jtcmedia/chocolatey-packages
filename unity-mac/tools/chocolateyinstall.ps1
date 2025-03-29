$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/101c91f3a8fb/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.0.44f1.exe'
$checksum64     = 'f9e1317c497082b35caaaee6c14f29c8a4f656e2eb061b7316a3af13fba8f9af'

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
