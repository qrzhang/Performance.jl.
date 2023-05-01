export getchar, set_homedir, get_homedir

const charset = 'a':'z'

getchar(idx) = charset[idx]

homedir = "wrong"

function set_homedir(path)
    global homedir = path
end
get_homedir() = homedir::String

