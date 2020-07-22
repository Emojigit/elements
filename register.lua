-- elements.register_element(id,name,metal,radio)
elements.register_element("1","Hydrogen",false,false)
elements.register_element("2","Helium",false,false)
elements.register_element("3","Lithium",true,false)
elements.register_element("4","Beryllium",true,false)
elements.register_element("5","Boron",false,false)
minetest.register_alias("elements:element_6", "default:coal_lump")
elements.register_element("7","Nitrogen",false,false)
elements.register_element("8","Oxygen",false,false)
elements.register_element("9","Fluorine",false,false)
elements.register_element("10","Neon",false,false)
elements.register_element("11","Sodium",true,false)
elements.register_element("12","Magnesium",true,false)
elements.register_element("13","Aluminium",true,false)
if minetest.get_modpath("mesecons") then -- element 14 silicon
    -- mesecons_materials:silicon
    minetest.register_alias("elements:element_14", "mesecons_materials:silicon")
    if minetest.get_modpath("basic_materials") then
        -- basic_materials:silicon
        minetest.register_alias("basic_materials:silicon", "mesecons_materials:silicon")
    end
else
    elements.register_element("14","Silicon",false,false)
end
elements.register_element("15","Phosphorus",false,false)
if minetest.get_modpath("technic") then -- element 16 sulfur
    minetest.register_alias("elements:element_16", "technic:sulfur_lump")
else
    elements.register_element("16","Sulfur",false,false)
end
elements.register_element("17","Chlorine",false,false)
elements.register_element("18","Argon",false,false)
elements.register_element("19","Potassium",true,false)
elements.register_element("20","Calcium",true,false)
elements.register_element("21","Scandium",true,false)
elements.register_element("22","Titanium",true,false)
elements.register_element("23","Vanadium",true,false)
if minetest.get_modpath("technic") then -- element 24 Chromium
    minetest.register_alias("elements:element_24", "technic:chromium_ingot")
else
    elements.register_element("24","Chromium",false,false)
end
elements.register_element("25","Manganese",true,false)
minetest.register_alias("elements:element_26", "default:steel_ingot")
elements.register_element("27","Cobalt",true,false)
elements.register_element("28","Nickel",true,false)
minetest.register_alias("elements:element_29", "default:copper_ingot")
if minetest.get_modpath("technic") then -- element 30 Zinc
    minetest.register_alias("elements:element_30", "technic:zinc_ingot")
else
    elements.register_element("30","Zinc",true,false)
end
elements.register_element("31","Gallium",true,false)
elements.register_element("32","Germanium",true,false)
elements.register_element("33","Arsenic",false,false)
elements.register_element("34","Selenium",false,false)
elements.register_element("35","Bromine",false,false)
elements.register_element("36","Krypton",false,false)
elements.register_element("37","Rubidium",true,false)
elements.register_element("38","Strontium",true,false)
elements.register_element("39","Yttrium",true,false)
elements.register_element("40","Zirconium",true,false)
elements.register_element("41","Niobium",true,false)
elements.register_element("42","Molybdenum",true,false)
elements.register_element("43","Technetium",true,false)
elements.register_element("44","Ruthenium",true,false)
elements.register_element("45","Rhodium",true,false)
elements.register_element("46","Palladium",true,false)
if minetest.get_modpath("moreores") then -- element 47 Silver
    minetest.register_alias("elements:element_47", "moreores:silver_ingott")
else
    elements.register_element("47","Silver",true,false)
end
elements.register_element("48","Cadmium",true,false)
elements.register_element("49","Indium",true,false)
minetest.register_alias("elements:element_50", "default:tin_ingot")
elements.register_element("51","Antimony",false,false)
elements.register_element("52","Tellurium",false,false)
elements.register_element("53","Iodine",false,false)
elements.register_element("54","Xenon",false,false)
elements.register_element("55","Cesium",true,false)
elements.register_element("56","Barium",true,false)
elements.register_element("72","Hafnium",true,false)
elements.register_element("73","Tantalum",true,false)
elements.register_element("74","Tungsten",true,false)
elements.register_element("75","Rhenium",true,false)
elements.register_element("76","Osmium",true,false)
elements.register_element("77","Iridium",true,false)
elements.register_element("78","Platinum",true,false)
minetest.register_alias("elements:element_79", "default:gold_ingot")
elements.register_element("80","Mercury",false,false) -- element 80 is liquid
elements.register_element("81","Thallium",true,false)
if minetest.get_modpath("technic") then -- element 82 Lead
    minetest.register_alias("elements:element_82", "technic:lead_ingot")
else
    elements.register_element("82","Lead",true,false)
end
elements.register_element("83","Bismuth",false,false)
elements.register_element("84","Polonium",false,false)
elements.register_element("85","Astatine",false,false)
elements.register_element("86","Radon",false,false)
elements.register_element("57","Lanthanum",true,false)
elements.register_element("58","Cerium",true,false)
elements.register_element("59","Praseodymium",true,false)
elements.register_element("60","Neodymium",true,false)
elements.register_element("61","Promethium",true,false)
elements.register_element("62","Samarium",true,false)
elements.register_element("63","Europium",true,false)
elements.register_element("64","Gadolinium",true,false)
elements.register_element("65","Terbium",true,false)
elements.register_element("66","Dysprosium",true,false)
elements.register_element("67","Holmium",true,false)
elements.register_element("68","Erbium",true,false)
elements.register_element("69","Thulium",true,false)
elements.register_element("70","Ytterbium",true,false)
elements.register_element("71","Lutetium",true,false)
elements.register_element("89","Actinium",true,false)
elements.register_element("90","Thorium",true,false)
elements.register_element("91","Protactinium",true,false)
if minetest.get_modpath("technic") then -- element 92 Uranium
    minetest.register_alias("elements:element_92", "technic:uranium_ingot")
else
    elements.register_element("92","Uranium",true,false)
end
elements.register_element("93","Neptunium",true,false)
elements.register_element("94","Plutonium",true,false)
elements.register_element("95","Americium",true,false)
elements.register_element("96","Curium",true,false)
elements.register_element("97","Berkelium",true,false)
elements.register_element("98","Californium",true,false)