def material_selector
  materials = ["#1 Plastic Non-Beverage Bottles", "#2 ﻿Plastic Jugs - Clear", "#2 ﻿Plastic Jugs - Colored", "#5 ﻿Plastic Caps", "#5 ﻿Rigid Plastics", "Aluminum ﻿Beverage Cans"]
  items = 1 + rand(5)
  materials = materials[0..items]
end
