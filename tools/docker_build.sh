/c/'Program Files'/'Docker Toolbox'/start.sh exit

if [[ "$(docker images -q cppenvironment:latest 2> /dev/null)" == "" ]]; then
    "Building Docker image..."
    docker build --rm -f "Dockerfile" -t cppenvironment:latest tools && "Docker image built"
fi

echo "Setup scripts done."