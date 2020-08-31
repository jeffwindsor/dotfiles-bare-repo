function brewlist
    echo "Current Languages"
    echo "Clojure: (clj -Sdescribe | grep :version)"
    java -version
    kotlin -version
    git --version
    go version
    stack ghc -- --version
    echo "Idris : (idris --version)"
    echo "Node  : (node --version)"
    echo "Npm   : (npm --version)"
    python --version
    ruby --version
    scala --version

    echo "Current Brews"
    brew list

    echo "Current Brew: Casks"
    brew cask list

    echo "Current Brew: Mas"
    mas list
end