-------------------
-- GLOBAL COLORS --
-------------------    
Color.AliceBlue = Color('F0F8FF')
Color.AntiqueWhite = Color('FAEBD7')
Color.Aqua = Color('00FFFF')
Color.Aquamarine = Color('7FFFD4')
Color.Azure = Color('F0FFFF')
Color.Beige = Color('F5F5DC')
Color.Bisque = Color('FFE4C4')
Color.BlanchedAlmond = Color('FFEBCD')
Color.BlueViolet = Color('8A2BE2')
Color.Brown = Color('A52A2A')
Color.BurlyWood = Color('DEB887')
Color.CadetBlue = Color('5F9EA0')
Color.Chartreuse = Color('7FFF00')
Color.Chocolate = Color('D2691E')
Color.Coral = Color('FF7F50')
Color.CornflowerBlue = Color('6495ED')
Color.Cornsilk = Color('FFF8DC')
Color.Crimson = Color('DC143C')
Color.Cyan = Color('00FFFF')
Color.DarkBlue = Color('00008B')
Color.DarkCyan = Color('008B8B')
Color.DarkGoldenRod = Color('B8860B')
Color.DarkGray = Color('A9A9A9')
Color.DarkGreen = Color('006400')
Color.DarkKhaki = Color('BDB76B')
Color.DarkMagenta = Color('8B008B')
Color.DarkOliveGreen = Color('556B2F')
Color.DarkOrange = Color('FF8C00')
Color.DarkOrchid = Color('9932CC')
Color.DarkRed = Color('8B0000')
Color.DarkSalmon = Color('E9967A')
Color.DarkSeaGreen = Color('8FBC8F')
Color.DarkSlateBlue = Color('483D8B')
Color.DarkSlateGray = Color('2F4F4F')
Color.DarkTurquoise = Color('00CED1')
Color.DarkViolet = Color('9400D3')
Color.DeepPink = Color('FF1493')
Color.DeepSkyBlue = Color('00BFFF')
Color.DimGray = Color('696969')
Color.DodgerBlue = Color('1E90FF')
Color.FireBrick = Color('B22222')
Color.ForestGreen = Color('228B22')
Color.Fuchsia = Color('FF00FF')
Color.Gainsboro = Color('DCDCDC')
Color.Gold = Color('FFD700')
Color.GoldenRod = Color('DAA520')
Color.Gray = Color('808080')
Color.GreenYellow = Color('ADFF2F')
Color.HoneyDew = Color('F0FFF0')
Color.HotPink = Color('FF69B4')
Color.IndianRed = Color('CD5C5C')
Color.Indigo = Color('4B0082')
Color.Khaki = Color('F0E68C')
Color.Lavender = Color('E6E6FA')
Color.LavenderBlush = Color('FFF0F5')
Color.LawnGreen = Color('7CFC00')
Color.LemonChiffon = Color('FFFACD')
Color.LightBlue = Color('ADD8E6')
Color.LightCoral = Color('F08080')
Color.LightCyan = Color('E0FFFF')
Color.LightGoldenRodYellow = Color('FAFAD2')
Color.LightGray = Color('D3D3D3')
Color.LightGreen = Color('90EE90')
Color.LightPink = Color('FFB6C1')
Color.LightSalmon = Color('FFA07A')
Color.LightSeaGreen = Color('20B2AA')
Color.LightSkyBlue = Color('87CEFA')
Color.LightSlateGray = Color('778899')
Color.LightSteelBlue = Color('B0C4DE')
Color.LightYellow = Color('FFFFE0')
Color.Lime = Color('00FF00')
Color.LimeGreen = Color('32CD32')
Color.Linen = Color('FAF0E6')
Color.Magenta = Color('FF00FF')
Color.Maroon = Color('800000')
Color.MediumAquaMarine = Color('66CDAA')
Color.MediumBlue = Color('0000CD')
Color.MediumOrchid = Color('BA55D3')
Color.MediumPurple = Color('9370DB')
Color.MediumSeaGreen = Color('3CB371')
Color.MediumSlateBlue = Color('7B68EE')
Color.MediumSpringGreen = Color('00FA9A')
Color.MediumTurquoise = Color('48D1CC')
Color.MediumVioletRed = Color('C71585')
Color.MidnightBlue = Color('191970')
Color.MintCream = Color('F5FFFA')
Color.MistyRose = Color('FFE4E1')
Color.Moccasin = Color('FFE4B5')
Color.Navy = Color('000080')
Color.OldLace = Color('FDF5E6')
Color.Olive = Color('808000')
Color.OliveDrab = Color('6B8E23')
Color.Orange = Color('FFA500')
Color.OrangeRed = Color('FF4500')
Color.Orchid = Color('DA70D6')
Color.PaleGoldenRod = Color('EEE8AA')
Color.PaleGreen = Color('98FB98')
Color.PaleTurquoise = Color('AFEEEE')
Color.PaleVioletRed = Color('DB7093')
Color.PapayaWhip = Color('FFEFD5')   
Color.PeachPuff = Color('FFDAB9')
Color.Peru = Color('CD853F')
Color.Pink = Color('FFC0CB')
Color.Plum = Color('DDA0DD')    
Color.PowderBlue = Color('B0E0E6')
Color.RosyBrown = Color('BC8F8F')
Color.RoyalBlue = Color('4169E1')
Color.SaddleBrown = Color('8B4513')
Color.Salmon = Color('FA8072')
Color.SandyBrown = Color('F4A460')
Color.SeaGreen = Color('2E8B57')
Color.SeaShell = Color('FFF5EE')
Color.Sienna = Color('A0522D')
Color.Silver = Color('C0C0C0')
Color.SkyBlue = Color('87CEEB')
Color.SlateBlue = Color('6A5ACD')
Color.SlateGray = Color('708090')
Color.SpringGreen = Color('00FF7F')
Color.SteelBlue = Color('4682B4')
Color.Tan = Color('D2B48C')
Color.Teal = Color('008080')
Color.Thistle = Color('D8BFD8')
Color.Tomato = Color('FF6347')
Color.Turquoise = Color('40E0D0')
Color.Violet = Color('EE82EE')
Color.Wheat = Color('F5DEB3')
Color.YellowGreen = Color('9ACD32')






---------------------------------
----------NO HEAT  v1.0 ---------
----------- By: Neo -------------
---------------------------------






function JobManager:heat_to_experience_multiplier(heat)
    return 1.15 --default maximum multiplier is 115%
end

--Additional insurance, so to speak
function JobManager:_check_add_heat_to_jobs(debug_job_id, ignore_debug_prints)
    if not self._global.heat then
            self:_setup_job_heat()
    end
    for job_id, _ in pairs(self._global.heat) do
            self:_change_job_heat(job_id, 500)
    end
end

--HEAT COLOR AND INTENSITY
function JobManager:get_job_heat(job_id) return math.random(25,100) end

function JobManager:get_job_heat_color(job_id)
-- return tweak_data.screen_colors.heat_warm_color --default bonus color
local function generate_key_list(t)
    local keys = {}
        for k, v in pairs(t) do
            keys[#keys+1] = k
        end
    return keys
end
   
local Colorkey = generate_key_list(Color)
table.sort(Colorkey)
return Color[Colorkey[math.random(1,127)]]
end