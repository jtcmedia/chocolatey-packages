$ErrorActionPreference = 'Stop';

$packageName    = 'hadoop'
$packageVersion = $env:chocolateyPackageVersion
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$hadoop_home    = "C:\Hadoop"
$zipFile        = "$toolsDir\*.tar_x32.gz"

$pp = Get-PackageParameters
if ($pp.unzipLocation) { 
    $hadoop_home = $pp.unzipLocation
    Write-Host "Param: Unzipping (installing) to $hadoop_home"
}

# unzip gzip file
Get-ChocolateyUnzip -FileFullPath $zipFile -destination $toolsDir
# unzip tar
Get-ChocolateyUnzip -FileFullPath "$toolsDir\*.tar_x32" -Destination $hadoop_home

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

# don't need tar or tar.gz anymore
Remove-Item $toolsDir\*.tar* -ErrorAction SilentlyContinue -Force
