function dockerenv(){
    docker run -it -v `pwd`:/root/share $1
}
