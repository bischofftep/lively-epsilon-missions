My = My or {}

local navyAlphabet = {
    "Able",
    "Baker",
    "Charlie",
    "Dog",
    "Easy",
    "Fox",
    "George",
    "How",
    "Item",
    "Jig",
    "King",
    "Love",
    "Mike",
    "Nutley",
    "Oboe",
    "Peter",
    "Queen",
    "Roger",
    "Sail",
    "Tare",
    "Uncle",
    "Victor",
    "William",
    "X-Ray",
    "Yoke",
    "Zebra",
}

local englishAlphabet = {
    "Alfa",
    "Bravo",
    "Charlie",
    "Delta",
    "Echo",
    "Foxtrot",
    "Golf",
    "Hotel",
    "India",
    "Juliet",
    "Kilo",
    "Lima",
    "Mike",
    "November",
    "Oscar",
    "Papa",
    "Quebec",
    "Romeo",
    "Sierra",
    "Tango",
    "Uniform",
    "Victor",
    "Whiskey",
    "X-Ray",
    "Yankee",
    "Zulu",
}

local colors = {
    "Red",
    "Blue",
    "Green",
    "White",
    "Yellow",
    "Teal",
    "Purple",
    "Pink",
    "Black",
    "Cyan",
    "Brown",
}

local cantoneseNumerals = {
    "ling",
    "jat",
    "ji",
    "saam",
    "sei",
    "ng",
    "luk",
    "cat",
    "baat",
    "gau",
    "sap",
}

local roles = {
    "Advisor",
    "Administrator",
    "Assistant",
    "Astrologer",
    "Baron",
    "Bodyguard",
    "Chief",
    "Count",
    "Duke",
    "Emir",
    "Emperor",
    "Excellency",
    "General",
    "Guard",
    "Instructor",
    "Judge",
    "Khan",
    "King",
    "Lord",
    "Minister",
    "Nobility",
    "Officer",
    "Prince",
    "Royal",
    "Ruler",
    "Shah",
    "Sheik",
    "Soldier",
    "Sultan",
    "Tsar",
}

local sector = {
    "Alpherg",
    "Altair",
    "Andromedae",
    "Antilla",
    "Antares",
    "Apollo",
    "Apus",
    "Aquarius",
    "Aquila",
    "Ara",
    "Aries",
    "Atria",
    "Auriga",
    "Caelum",
    "Cancer",
    "Canis",
    "Capella",
    "Cassiopeia",
    "Cepheus",
    "Centauri",
    "Cetus",
    "Columba",
    "Corvus",
    "Crater",
    "Cygnus",
    "Deneb",
    "Draco",
    "Eri",
    "Fornax",
    "Gemini",
    "Grus",
    "Herculis",
    "Hydra",
    "Indus",
    "Leporis",
    "Leonis",
    "Lepus",
    "Libra",
    "Lupus",
    "Luyten",
    "Lyra",
    "Mensae",
    "Musca",
    "Naos",
    "Norma",
    "Octans",
    "Ori",
    "Pavonis",
    "Pegasi",
    "Persei",
    "Phoenicis",
    "Piscium",
    "Pollux",
    "Proycon",
    "Regulus",
    "Rigel",
    "Ross",
    "Sagitta",
    "Scorpius",
    "Sirius",
    "Sol",
    "Taurus",
    "Ursea",
    "Vega",
    "Virginis",
}

local sectorMod = {
    "Alpha ",
    "Beta ",
    "Gamma ",
    "Tau ",
    "Proxima ",
    "Primus ",
    "Secundus ",
    "Tertius ",
    "Quadrus ",
    " Prime",
    " Minor",
    " Major",
    " Librae",
    " Prior",
    " Ultimate",
    " Minutus",
    " Borealis",
    " Orientis",
    " Australis",
    " Occidens",
    "Magna ",
    "Old ",
    "New ",
    "Far ",
    " Nova",
    " Veteris",
    " Tantum",
}



My.nebulaName = My.deduplicateName(function()
    local version = math.random(1,3)
    if version == 1 then
        return Util.random(Names.greekAlphabet) .. " " .. Util.random(Names.greekTitans)
    elseif version == 2 then
        return Util.random(Names.bodyPart) .. " of " .. Util.random(Names.greekTitans)
    else
        return Names.possessive(Util.random(Names.greekTitans)) .. " " .. Util.random(Names.bodyPart)
    end
end)

My.sectorName = My.deduplicateName(function()
    local name = Util.random(sector)

    local mod = Util.random(sectorMod)
    if mod:sub(1,1) == " " then
        name = name .. mod
    else
        name = mod .. name
    end

    return name
end)
