local omid= " @heset_ni_zendgi "

local function run(msg, matches)
     if matches[1] == "omid" then
          return "سلام بابا جونم😍"
     else
          return "hi"..matches[1]
     end
end

return {
      description = "",
      usage = "",
      patterns = {
           "^[Ss][Aa][Ll][Aa][Mm]",
"^سلام"‚
      },
      run = run,
}
