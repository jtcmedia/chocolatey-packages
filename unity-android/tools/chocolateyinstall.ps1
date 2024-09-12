$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8e9b8558c41a/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2022.3.46f1.exe'
$checksum64     = '2eaba4ccddd15ac5fa6b545c0c0c5089460031205d92d40e4b88575bd17efef0'

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
