-- ==========================================
-- 🌶️ LIMBO HUB - Ultimate Thai Translator
-- แปลไทยโดย : nookky_ 👑
-- Version : 1.1 (Full Real-time / No Filter)
-- ==========================================

local GuiService = (gethui and gethui()) or game:GetService("CoreGui")
local StarterGui = game:GetService("StarterGui")

-- ==========================================
-- 1. DICTIONARY (ครบทุกคำจาก LIMBO HUB)
-- ==========================================
local dict = {
    -- 🏠 เมนูหลัก (Sidebar)
    ["Information"] = "📄 ข้อมูล",
    ["Eggs"] = "🥚 ไข่",
    ["Automation"] = "⚙️ ระบบอัตโนมัติ",
    ["Event"] = "🎁 กิจกรรม",
    ["Webhook"] = "🔗 เว็บฮุค",
    ["Settings"] = "⚙️ การตั้งค่า",
    ["Search features..."] = "🔎 ค้นหาฟีเจอร์...",

    -- 🥚 แท็บ Eggs (Steal Eggs)
    ["Steal Eggs"] = "🥚 ขโมยไข่",
    ["Esp Eggs"] = "👁️ มองทะลุไข่ (ESP)",
    ["Combat"] = "⚔️ การต่อสู้",
    ["Auto Steal"] = "⚡ ขโมยอัตโนมัติ",
    ["Steal Mode"] = "🎯 โหมดการขโมย",
    ["Legit"] = "🚶 โหมดปกติ (เดิน)",
    ["Movement Speed"] = "💨 ความเร็วในการเคลื่อนที่",
    ["Help Friends"] = "🤝 ช่วยเพื่อน",
    ["Target Filters"] = "🎯 ตัวกรองเป้าหมาย",
    ["Area"] = "🗺️ พื้นที่",
    ["Any"] = "ทั้งหมด / ใดก็ได้",
    ["Categories"] = "📦 หมวดหมู่",
    ["Rarities"] = "💎 ระดับความหายาก",
    ["Mutation"] = "🧬 การกลายพันธุ์",
    ["Value"] = "💰 มูลค่า",
    ["Search options..."] = "🔎 ค้นหาตัวเลือก...",
    ["Instant"] = "⚡ ทันที",
    ["Manual Steal"] = "🥚 ขโมยด้วยตัวเอง (แมนนวล)",
    
    -- 👁️ แท็บ Esp Eggs
    ["Egg ESP"] = "👁️ มองทะลุไข่",
    ["ESP Details"] = "📋 รายละเอียด ESP",
    ["Name, Rarity,..."] = "ชื่อ, ความหายาก,...",
    ["Backpack Value/s"] = "💰 มูลค่าในกระเป๋า/วินาที",

    -- ⚔️ แท็บ Combat
    ["Player Steal"] = "🥷 ขโมยจากผู้เล่น",
    ["Standby"] = "⏳ สแตนด์บาย (รอคำสั่ง)",
    ["Target Player"] = "🎯 ผู้เล่นเป้าหมาย",
    ["Any Player"] = "ผู้เล่นคนใดก็ได้",
    ["Skip Friends"] = "⏭️ ข้ามเพื่อน",
    ["Auto Steal Player"] = "⚡ ขโมยจากผู้เล่นอัตโนมัติ",
    ["Aura Bat"] = "🏏 ไม้ตีออร่า",
    ["Min Value/s"] = "💰 มูลค่าขั้นต่ำ/วินาที",
    ["500k, 2m, 1b"] = "500k, 2m, 1b (รูปแบบตัวเลข)",

    -- 🏃 แท็บ Automation (Main)
    ["Main"] = "🏠 หน้าหลัก",
    ["Upgrade"] = "⬆️ อัปเกรด",
    ["General"] = "⚙️ ทั่วไป",
    ["Auto Tutorial"] = "📜 ทำ Tutorial อัตโนมัติ",
    ["Auto Claim Index"] = "📖 รับรางวัลสารบัญอัตโนมัติ",
    ["Auto Equip Best Pets"] = "🐾 สวมสัตว์เลี้ยงที่ดีที่สุดอัตโนมัติ",
    ["Auto Treadmill"] = "🏃 ลู่วิ่งอัตโนมัติ",
    ["Anti Hit Guard"] = "🛡️ ป้องกันการถูกตี",
    ["Claim Offline Earnings"] = "💰 รับรายได้ออฟไลน์",
    
    -- 💰 แท็บ Automation (Auto Sell)
    ["Auto Sell"] = "💰 ขายอัตโนมัติ",
    ["Pets"] = "🐾 สัตว์เลี้ยง",
    ["None"] = "ไม่มี",
    ["Max Value/s"] = "💰 มูลค่าสูงสุด/วินาที",
    ["100k, 2m, 1b"] = "100k, 2m, 1b (รูปแบบตัวเลข)",
    ["Below Weight (kg)"] = "⚖️ ต่ำกว่าน้ำหนัก (กก.)",
    ["0 = Any weight"] = "0 = น้ำหนักเท่าไหร่ก็ได้",

    -- ⬆️ แท็บ Automation (Upgrade)
    ["Unfavorite Everything"] = "💔 ยกเลิกติดดาวทั้งหมด",
    ["Hatchery"] = "🥚 โรงฟักไข่",
    ["Place"] = "📍 วาง",
    ["Hatch"] = "🐣 ฟัก",
    ["Auto Place Eggs"] = "📍 วางไข่อัตโนมัติ",
    ["Apply Mutation Now"] = "🧬 ใส่การกลายพันธุ์ตอนนี้",
    ["Auto Fuse"] = "🔧 ผสมอัตโนมัติ",
    ["Fusion Rule"] = "📜 กฎการผสม",
    ["Any Species"] = "ทุกสายพันธุ์",
    ["Rarities to Fuse"] = "💎 ระดับที่ต้องการผสม",
    ["Species to Fuse"] = "🐾 สายพันธุ์ที่ต้องการผสม",

    -- ⭐ แท็บ Automation (Auto Favorite)
    ["Auto Favorite"] = "⭐ ติดดาวอัตโนมัติ",
    ["Favorite Rule"] = "📜 กฎการติดดาว",
    ["Rarity"] = "💎 ความหายาก",
    ["Rarities to Keep"] = "💎 ระดับที่ต้องการเก็บ",
    ["Species to Keep"] = "🐾 สายพันธุ์ที่ต้องการเก็บ",
    ["Select Mutation"] = "🧬 เลือกการกลายพันธุ์",
    ["Egg Names"] = "🥚 ชื่อไข่",
    ["Retry Until Mutated"] = "🔄 ลองใหม่จนกว่าจะกลายพันธุ์",
    ["Auto Apply Mutation"] = "🧬 ใส่การกลายพันธุ์อัตโนมัติ",

    -- 👽 แท็บ Event (Alien)
    ["Alien"] = "👽 เอเลี่ยน",
    ["Butterfly"] = "🦋 ผีเสื้อ",
    ["Admin Abuse"] = "👑 แอดมิน",
    ["Shooting Star"] = "🌠 ดาวตก",
    ["Area: Normal | Cosmic Eclipse: in 17m 29s"] = "พื้นที่: ปกติ | สุริยุปราคาคอสมิก: ในอีก 17 นาที 29 วินาที",
    ["Krakens caught: 0 this session"] = "คราเคนที่จับได้: 0 ตัวในเซสชันนี้",
    ["Alien Quest"] = "📜 เควสเอเลี่ยน",
    ["Speed: 6683.0B / 250.0B"] = "ความเร็ว: 6683.0B / 250.0B",
    ["Alien Rod: Obtained"] = "เบ็ดตกปลาเอเลี่ยน: ได้รับแล้ว",
    ["Auto Claim Alien Rod"] = "🎣 รับเบ็ดตกปลาเอเลี่ยนอัตโนมัติ",
    ["Claim Rod Now"] = "🎣 รับเบ็ดตกปลาตอนนี้",
    ["Fishing Mastery"] = "🏆 ความชำนาญในการตกปลา",
    ["Caught: 3790 | Lagoon: 20/20 - Unlocked"] = "จับได้: 3790 | ลากูน: 20/20 - ปลดล็อกแล้ว",
    ["Next reward: 450 catches - Dark Matter Glacigon"] = "รางวัลถัดไป: จับได้ 450 ตัว - Dark Matter Glacigon",
    ["Auto Claim Rewards"] = "🏆 รับรางวัลอัตโนมัติ",
    ["Pearl Trade"] = "🦪 แลกไข่มุก",

    -- 🎣 แท็บ Event (Travel / Fishing)
    ["Auto Equip Best Rod"] = "🎣 สวมเบ็ดตกปลาที่ดีที่สุดอัตโนมัติ",
    ["Save Fishing Spot"] = "📍 บันทึกจุดตกปลา",
    ["Normal: Auto | Lagoon: Auto"] = "ปกติ: ออโต้ | ลากูน: ออโต้",
    ["Relic Gate"] = "🚪 ประตูโบราณ (Relic)",
    ["Relics: 0 / 7 placed"] = "วัตถุโบราณ: วางแล้ว 0 / 7",
    ["Red Relic: Owned"] = "วัตถุโบราณสีแดง: เป็นเจ้าของแล้ว",
    ["Orange Relic: Owned"] = "วัตถุโบราณสีส้ม: เป็นเจ้าของแล้ว",
    ["Yellow Relic: Owned"] = "วัตถุโบราณสีเหลือง: เป็นเจ้าของแล้ว",
    ["Green Relic: Owned"] = "วัตถุโบราณสีเขียว: เป็นเจ้าของแล้ว",
    ["Travel"] = "🚀 เดินทาง / วาร์ป",
    ["Go To Ferryman"] = "🚢 ไปหาเรือข้ามฟาก (Ferryman)",
    ["Go To Lagoon"] = "🏝️ ไปที่ลากูน (Lagoon)",
    ["Return To Main Map"] = "🗺️ กลับไปแผนที่หลัก",
    ["Catch Notifications"] = "🔔 การแจ้งเตือนการจับ",
    ["Open Webhook -> Fishing Webhook to choose which catches to send."] = "เปิด Webhook -> Fishing Webhook เพื่อเลือกว่าจะส่งการจับอะไรไปบ้าง",

    -- 🔗 แท็บ Webhook
    ["Webhook URL"] = "🔗 ลิงก์เว็บฮุค",
    ["https://discord.com/api/webhooks/..."] = "ลิงก์ดิสคอร์ดเว็บฮุค",
    ["Rarity Filter"] = "🎯 ตัวกรองความหายาก",
    ["All rarities"] = "ทุกระดับความหายาก",
    ["Notify On Steal"] = "🔔 แจ้งเตือนเมื่อขโมยได้",
    ["Notify On Hatch"] = "🔔 แจ้งเตือนเมื่อฟักไข่",
    ["Disconnect Alert"] = "⚠️ แจ้งเตือนเมื่อหลุดการเชื่อมต่อ",
    ["Fishing Webhook"] = "🎣 เว็บฮุคสำหรับการตกปลา",
    ["Notify Fishing Catches"] = "🔔 แจ้งเตือนปลาที่จับได้",
    ["Send Catches"] = "📤 ส่งข้อมูลสิ่งที่จับได้",
    ["Eggs, Items"] = "ไข่, ไอเท็ม",

    -- ⚙️ แท็บ Settings (General)
    ["Servers"] = "🌐 เซิร์ฟเวอร์",
    ["Configs"] = "📁 การตั้งค่า (Configs)",
    ["Utilities"] = "🛠️ ยูทิลิตี้",
    ["Anti AFK"] = "💤 กันหลุด (Anti AFK)",
    ["Auto Reconnect"] = "🔄 เชื่อมต่อใหม่เมื่อหลุดอัตโนมัติ",
    ["Auto Execute (Rejoin)"] = "🚀 รันสคริปต์อัตโนมัติเมื่อเข้าห้องใหม่",
    ["Performance"] = "🚀 ประสิทธิภาพ",
    ["FPS Boost"] = "📈 เพิ่ม FPS",
    ["Remove All"] = "❌ ลบทั้งหมด",

    -- 🌐 แท็บ Settings (Servers)
    ["Server Finder"] = "🔎 ค้นหาเซิร์ฟเวอร์",
    ["Current Server"] = "📍 เซิร์ฟเวอร์ปัจจุบัน",
    ["Now: 5 player(s) - Max: 2"] = "ตอนนี้: ผู้เล่น 5 คน - สูงสุด: 2",
    ["Auto hop stopped."] = "หยุดการเปลี่ยนเซิร์ฟเวอร์อัตโนมัติแล้ว",
    ["Max Players"] = "👥 ผู้เล่นสูงสุด",
    ["Auto Hop"] = "🔄 เปลี่ยนเซิร์ฟเวอร์อัตโนมัติ",
    ["Hop Server Now"] = "🌐 เปลี่ยนเซิร์ฟเวอร์ตอนนี้",

    -- 📁 แท็บ Settings (Configs)
    ["Config Name"] = "📝 ชื่อการตั้งค่า",
    ["My config"] = "การตั้งค่าของฉัน",
    ["Saved Configs"] = "💾 การตั้งค่าที่บันทึกไว้",
    ["Save Config"] = "💾 บันทึกการตั้งค่า",
    ["Load Config"] = "📂 โหลดการตั้งค่า",
    ["Delete Config"] = "🗑️ ลบการตั้งค่า",
    ["Refresh List"] = "🔄 รีเฟรชรายการ",
    ["Set Autoload"] = "🚀 ตั้งให้โหลดอัตโนมัติ",
    ["Clear Autoload"] = "🧹 ล้างการโหลดอัตโนมัติ",
    ["Export Config"] = "📤 ส่งออกการตั้งค่า",
    ["Import Config"] = "📥 นำเข้าการตั้งค่า",
}

-- ==========================================
-- 2. PREPARE DICTIONARY (Lowercase)
-- ==========================================
local lowerDict = {}
for key, value in pairs(dict) do
    lowerDict[string.lower(key)] = value
end

-- ==========================================
-- 3. TRANSLATE FUNCTIONS (Full Real-time)
-- ==========================================
local function translateDynamicText(txt)
    local newTxt = txt
    -- แปลข้อความ Dynamic (ตัวเลข/เวลา)
    newTxt = newTxt:gsub("(%d+)m%s+(%d+)s", "%1 นาที %2 วินาที")
    newTxt = newTxt:gsub("in (%d+)m", "ในอีก %1 นาที")
    newTxt = newTxt:gsub("(%d+) / (%d+) placed", "วางแล้ว %1 / %2")
    newTxt = newTxt:gsub("Caught: (%d+)", "จับได้: %1")
    newTxt = newTxt:gsub("Krakens caught: (%d+) this session", "คราเคนที่จับได้: %1 ตัวในเซสชันนี้")
    newTxt = newTxt:gsub("Caught: (%d+) | Lagoon: (%d+)/(%d+) %- Unlocked", "จับได้: %1 | ลากูน: %2/%3 - ปลดล็อกแล้ว")
    newTxt = newTxt:gsub("Next reward: (%d+) catches", "รางวัลถัดไป: จับได้ %1 ตัว")
    newTxt = newTxt:gsub("Now: (%d+) player%(s%) %- Max: (%d+)", "ตอนนี้: ผู้เล่น %1 คน - สูงสุด: %2")
    return newTxt
end

local function translateText(obj)
    pcall(function()
        if not (obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox")) then return end
        
        local currentText = obj.Text
        if currentText == "" then return end
        
        -- 🛑 ถ้าเป็นภาษาไทยอยู่แล้ว ให้ข้าม (กันการแปลซ้ำ)
        if currentText:match("^[ก-๙]") then return end

        local dynamicText = translateDynamicText(currentText)
        if dynamicText ~= currentText then
            obj.Text = dynamicText
            currentText = dynamicText
        end

        local cleanText = currentText:gsub("<[^>]+>", ""):gsub("&nbsp;", " "):gsub("&amp;", "&"):match("^%s*(.-)%s*$")
        
        if cleanText and cleanText ~= "" then
            local translated = lowerDict[string.lower(cleanText)]
            if translated and obj.Text ~= translated then
                obj.Text = translated
            end
        end

        if obj:IsA("TextBox") then
            local placeholder = obj.PlaceholderText or ""
            local cleanPlaceholder = placeholder:gsub("<[^>]+>", ""):gsub("&nbsp;", " "):gsub("&amp;", "&"):match("^%s*(.-)%s*$")
            if cleanPlaceholder and cleanPlaceholder ~= "" then
                local translatedPlaceholder = lowerDict[string.lower(cleanPlaceholder)]
                if translatedPlaceholder and obj.PlaceholderText ~= translatedPlaceholder then
                    obj.PlaceholderText = translatedPlaceholder
                end
            end
        end
    end)
end

-- ==========================================
-- 4. HOOK OBJECT (Full Real-time)
-- ==========================================
local function hookObject(obj)
    translateText(obj)
    pcall(function()
        if not (obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox")) then return end
        if obj:GetAttribute("Hooked_nookky_") then return end
        obj:SetAttribute("Hooked_nookky_", true)
        
        -- ดักจับ Real-time แบบเต็มรูปแบบ
        obj:GetPropertyChangedSignal("Text"):Connect(function()
            translateText(obj)
        end)

        if obj:IsA("TextBox") then
            obj:GetPropertyChangedSignal("PlaceholderText"):Connect(function()
                translateText(obj)
            end)
        end
    end)
end

-- ==========================================
-- 5. SMART LOADER (โหลด UI ก่อน -> รอ -> แปล)
-- ==========================================

-- ขั้นที่ 1: โหลด LIMBO HUB
task.spawn(function()
    local success, err = pcall(function()
        loadstring(game:HttpGet("https://limbohub.my.id/loader.lua"))()
    end)
    if not success then
        warn("⚠️ nookky_ แจ้งเตือน: โหลด LIMBO HUB ต้นฉบับไม่สำเร็จ")
    end
end)

-- ขั้นที่ 2: รอให้ UI หลักโหลดเสร็จ (สูงสุด 30 วินาที)
task.spawn(function()
    local timeout = 30
    local elapsed = 0
    local found = false

    while elapsed < timeout do
        for _, obj in ipairs(GuiService:GetDescendants()) do
            if (obj:IsA("TextLabel") or obj:IsA("TextButton")) then
                if obj.Text == "LIMBO HUB" or obj.Text == "Information" then
                    found = true
                    break
                end
            end
        end
        if found then break end
        task.wait(0.5)
        elapsed = elapsed + 0.5
    end

    -- ขั้นที่ 3: เมื่อเจอ UI ให้เริ่มสแกนและแปลทั้งหมด
    for _, obj in ipairs(GuiService:GetDescendants()) do
        hookObject(obj)
    end

    -- ขั้นที่ 4: ดักจับ UI ใหม่ (เช่น เปิดแท็บใหม่)
    GuiService.DescendantAdded:Connect(function(obj)
        task.wait(0.05)
        hookObject(obj)
    end)
    
    -- แจ้งเตือน
    pcall(function()
        StarterGui:SetCore("SendNotification", {
            Title = "🌶️ nookky_ Hub",
            Text = "ระบบแปลภาษาไทยพร้อมใช้งานแล้ว ✅ (Real-time)",
            Duration = 5
        })
    end)
end)
