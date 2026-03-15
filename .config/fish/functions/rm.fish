function rm
    if test (count $argv) -eq 0
        echo "Usage: rm FILE..." >&2
        return 1
    end

    # отбрасываем флаги вроде -rf (trash не поддерживает их)
    set -l files
    for arg in $argv
        if string match -qr '^-' $arg
            continue
        end
        set files $files $arg
    end

    if test (count $files) -eq 0
        echo "No files specified to delete." >&2
        return 1
    end

    trash $files
end
