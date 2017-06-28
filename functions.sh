function dockerenv(){
    docker run -it --rm -v `pwd`:/src $1
}

function dockerml(){
    docker run -it --rm -v $2:/src -v $3:/data $1 bash
}
