$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8331acaee5d3/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2022.2.7f1.exe'
$checksum64     = '21c477b41913bfb6256bc780991613ef801a92455d680dfc6af6f40413047f34'

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
