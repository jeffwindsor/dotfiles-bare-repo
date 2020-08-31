function brewup
    echo "doom emacs"
    $HOME/.emacs.d/bin/doom upgrade

    echo "to long did not read pages"
    tldr --update

    echo "Haskell Stack"
    stack update && stack upgrade --force-download

    echo "Brews"
    brew upgrade

    echo "Casks"
    brew cask upgrade

    echo "Masses"
    mas upgrade

    echo "Cleanup"
    brew cleanup
end