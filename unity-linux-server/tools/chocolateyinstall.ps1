$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8c45277fb9c5/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.6.9f1.exe'
$checksum64     = '8726c3fb61c2af44723da040bf18b562036747629897470d61d1f2810da9e39f'

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
