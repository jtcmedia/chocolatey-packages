$ErrorActionPreference = 'Stop';

$packageName   = 'unity'
$toolsDir      = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32         = 'http://download.unity3d.com/download_unity/38b4efef76f0/Windows32EditorInstaller/UnitySetup32-5.5.0f3.exe'
$url64         = 'http://download.unity3d.com/download_unity/38b4efef76f0/Windows64EditorInstaller/UnitySetup64-5.5.0f3.exe'
$checksum32    = '63ba231501656aa3a733a2ca2d11a1ed755e52206a3a5aeb81407f1db0a30f2a'
$checksum64    = '34ed4e70d9f152fcc14e25aac816d237b542828490f7ad09579073734eb180e6'
$url_sa        = 'http://download.unity3d.com/download_unity/38b4efef76f0/WindowsStandardAssetsInstaller/UnityStandardAssetsSetup-5.5.0f3.exe'
$checksum_sa   = 'c77681ae9612f956351ebd19a9cdac3990e02b0b6be566b3d8ec69c5f714fe15'
$url_ep        = 'http://download.unity3d.com/download_unity/38b4efef76f0/WindowsExampleProjectInstaller/UnityExampleProjectSetup-5.5.0f3.exe'
$checksum_ep   = 'f6aa75ecdcf069f7ea3da5577e6709fcda4942622d9fc1e52a74bda392a3c3c7'
$url_docs      = 'http://download.unity3d.com/download_unity/38b4efef76f0/WindowsDocumentationInstaller/UnityDocumentationSetup-5.5.0f3.exe'
$checksum_docs = '005995880702efa3e33c603783a64d394a4ed408a683b6eddb2ab8297453acde'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'EXE'
  url           = $url32
  url64bit      = $url64
  softwareName  = 'Unity'
  checksum      = $checksum32
  checksumType  = 'sha256'
  checksum64    = $checksum64
  checksumType64= 'sha256'
  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs

$pp = Get-PackageParameters
if ($pp.sa) { Write-Host 'Param: The Standard Assets will be installed' }
if ($pp.ep) { Write-Host 'Param: The Example Project will be installed' }
if ($pp.docs) { Write-Host 'Param: Unity Documentation will be installed' }

if ($pp.sa) {
    Write-Host 'Installing Standard Assets...'
    
    $packageArgs = @{
        packageName   = "$packageName-standard-assets"
        fileType      = 'EXE'
        url           = $url_sa
        checksum      = $checksum_sa
        checksumType  = 'sha256'
        silentArgs   = '/S'
        validExitCodes= @(0)
    }
    
    Install-ChocolateyPackage @packageArgs
    
}

if ($pp.ep) {
    Write-Host 'Installing the Example Project...'
    
    $packageArgs = @{
        packageName   = "$packageName-example-project"
        fileType      = 'EXE'
        url           = $url_ep
        checksum      = $checksum_ep
        checksumType  = 'sha256'
        silentArgs   = '/S'
        validExitCodes= @(0)
    }
    
    Install-ChocolateyPackage @packageArgs
}

if ($pp.docs) {
    Write-Host 'Installing Documentation...'
    
    $packageArgs = @{
        packageName   = "$packageName-docs"
        fileType      = 'EXE'
        url           = $url_docs
        checksum      = $checksum_docs
        checksumType  = 'sha256'
        silentArgs   = '/S'
        validExitCodes= @(0)
    }
    
    Install-ChocolateyPackage @packageArgs
}
