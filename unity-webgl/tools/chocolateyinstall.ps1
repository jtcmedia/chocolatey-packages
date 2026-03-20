$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/253a859729df/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.5.0a9.exe'
$checksum64     = 'ac31756aae378e6cb0407b9c6c6c8c3e11cde17db1eb89a16fdeedb1e6ef0feb'

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
