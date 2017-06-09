function dockerenv(){
    docker run -it -v `pwd`:/src $1
}

function dockerml(){
    docker run -it -v $2:/src -v $3:/data $1 /bin/bash
}
