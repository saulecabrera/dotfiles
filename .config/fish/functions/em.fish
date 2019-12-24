function em
    emacsclient -n -e "(if (> (length (frame-list)) 1) 't)" 2> /dev/null | grep t

    if [ "$status" -eq "1" ]
        echo "opened"
        emacsclient -a '' -nqc "$argv"
    else
        echo "was not opened"
        emacsclient -nq "$argv"
    end
end
