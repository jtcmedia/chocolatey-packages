$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a13dfa44d684/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2022.3.45f1.exe'
$checksum64     = '06709daa95ef21c7f0453fe8f424d570e26ada1239ec4172b82a2dc03f38a810'

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
