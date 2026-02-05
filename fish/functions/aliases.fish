# -----------------------------------------------------
# ALIASES (Fish functions)
# -----------------------------------------------------

# -----------------------------------------------------
# General
# -----------------------------------------------------
function c
    clear
end

function ll
    ls -l $argv
end

function la
    ls -a $argv
end

function n
    nvim $argv
end

function wifi
    nmtui
end
