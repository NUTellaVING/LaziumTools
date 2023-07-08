print("@@GREEN@@")
print("          <----------------->          \n")
print("                HTTP SPY             \n")
print("          <----------------->          \n\n")
print("@@WHITE@@")

local old;
old = hookfunction(game.HttpGet, function(a,b,...)
    print("   [-] Method: Http Get".." | Url: "..b.."\n")
    return old(a,b,...) 
end)
print("     [-] Applied http get hook\n")

local old;
old = hookfunction(game.HttpGetAsync, function(a,b,...)
    print("   [-] Method: Http Get Async".." | Url: "..b.."\n")
    return old(a,b,...) 
end)
print("     [-] Applied http get async hook\n")

local old;
old = hookfunction(game.HttpPost, function(a,b,...)
    print("   [-] Method: Http Post".." | Url: "..b.."\n")
    return old(a,b,...) 
end)
print("     [-] Applied http post hook\n")

local old;
old = hookfunction(game.HttpPostAsync, function(a,b,...)
    print("   [-] Method: Http Post Async".." | Url: "..b.."\n")
    return old(a,b,...) 
end)
print("     [-] Applied http post async hook\n")

if syn then
local old = syn.request
setreadonly(syn, false)
syn.request = function(data)
    print("   [-] Method: Syn Request".." | Url: "..data.Url.."\n")
    return old(data)
end setreadonly(syn, true) end
print("     [-] Applied syn request hook\n\n")