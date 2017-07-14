def material_selector(barcode)
  if barcode == "021908453019"
    materials = [8, 7]
  elsif barcode == "021908509266"
    materials = [7]
  elsif barcode == "051500255377"
    matierals = [5, 6]
  end
  materials
end
