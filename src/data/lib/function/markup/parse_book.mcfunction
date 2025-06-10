# 1. Dump all book contents into one big list of pages, as plain strings
data modify storage lib:markup full_text set value []
$data modify storage lib:markup full_text append string storage $(source) input.pages[].raw

# 2. Loop through that list of pages, creating an ast
function lib:markup/read_pages

# 3. Write first node from ast
$data modify storage $(destination) output set from storage lib:markup ast