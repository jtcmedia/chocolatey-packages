$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d64b1a599cad/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.1.6f1.exe'
$checksum64     = '49c75e2c91d7b2f6a344108ffc22447b116fa037ba339eb261f0488aec9dfb11'

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
