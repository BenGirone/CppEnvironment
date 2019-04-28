
if ([System.IO.File]::Exists("C:\Program Files\Docker Toolbox\start.sh")) {
    "Docker already installed"
} else {
    "Downloading Docker. This may take some time..."
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12 
    (New-Object System.Net.WebClient).DownloadFile('http://github.com/docker/toolbox/releases/download/v18.09.3/DockerToolbox-18.09.3.exe', 'tools/toolbox.exe')

    "Launching Docker installer..."
    Start-Process "$pwd/tools/toolbox.exe" -wait

    "Docker install script done."
}
