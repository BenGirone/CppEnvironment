/c/'Program Files'/'Docker Toolbox'/start.sh exit

if [[ "$(docker images -q cppenvironment:latest 2> /dev/null)" == "" ]]; then
    docker build --rm -f "Dockerfile" -t cppenvironment:latest tools
fi

if [[ "$1" == "run" ]]; then
    docker run --rm -v /$(pwd)/project://project -it cppenvironment bash -c 'cd project && make'
fi

if [[ "$1" == "debug" ]]; then
    docker run --rm -v /$(pwd)/project://project -it cppenvironment bash
fi
