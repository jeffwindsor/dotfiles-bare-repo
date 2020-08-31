function stack-new
    stack new $1 && cd $1 && stack setup && stack build;
end