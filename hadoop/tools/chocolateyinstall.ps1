$ErrorActionPreference = 'Stop';

$packageName    = 'hadoop'
$packageVersion = $env:chocolateyPackageVersion
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$hadoop_home    = "C:\Hadoop"
$mirrors        = 'http://www.apache.org/dyn/closer.cgi/hadoop/common/hadoop-2.8.0/hadoop-2.8.0.tar.gz'
$checksum32     = '3c0c6053651970c3ce283c100ee3e4e257c7f2dd7d7f92c98c8b0a3a440c04a0'

# d/l from closest mirror
$get_mirror_page = Invoke-WebRequest -Uri $mirrors -UseBasicParsing
$url32 = $get_mirror_page.links | ? href -match '\.tar\.gz$' | select -First 1 -expand href


$pp = Get-PackageParameters
if ($pp.unzipLocation) { 
    $hadoop_home = $pp.unzipLocation
    Write-Host "Param: Unzipping (installing) to $hadoop_home"
}


$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url32
  checksum      = $checksum32
  checksumType  = 'sha256'
  validExitCodes= @(0)
}

Install-ChocolateyZipPackage @packageArgs

# unzip tar
Get-ChocolateyUnzip -FileFullPath "$toolsDir\*.tar" -Destination $hadoop_home

Install-ChocolateyEnvironmentVariable `
    -VariableName "HADOOP_HOME" `
    -VariableValue $hadoop_home `
    -VariableType 'Machine'

Install-ChocolateyPath `
    -PathToInstall "%HADOOP_HOME%\$packageName-$packageVersion\bin" `
    -PathType 'Machine'

# Hadoop needs 8.3 path to find Java    
$sp = New-Object -ComObject Scripting.FileSystemObject
$f = $sp.GetFolder($env:JAVA_HOME)

Install-ChocolateyEnvironmentVariable `
    -VariableName "JAVA_HOME" `
    -VariableValue $f.ShortPath `
    -VariableType 'User'

# don't need tar anymore
Remove-Item $toolsDir\*.tar -ErrorAction SilentlyContinue -Force
