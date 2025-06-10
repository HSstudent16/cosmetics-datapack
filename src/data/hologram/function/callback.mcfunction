$data modify storage hologram:book lecternData set value $(Book)

# Extract book contents from the lectern
execute if data storage hologram:book lecternData.components."minecraft:written_book_content" run data modify storage hologram:book input set from storage hologram:book lecternData.components."minecraft:written_book_content"
execute if data storage hologram:book lecternData.components."minecraft:writable_book_content" run data modify storage hologram:book input set from storage hologram:book lecternData.components."minecraft:writable_book_content"

# parse the book
function lib:markup/parse_book {source:"hologram:book",destination:"hologram:book"}

# Create the hologram 
execute align xyz positioned ~0.5 ~0.5 ~0.5 run function hologram:create_hologram with storage hologram:book
