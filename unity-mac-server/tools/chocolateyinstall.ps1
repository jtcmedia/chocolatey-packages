$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a56f230f6470/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.3.16f1.exe'
$checksum64     = 'e2881e367c4cd8c895c850923a1c4674228b8fd7c73c48b7c1cb1bf2c3489e73'

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
