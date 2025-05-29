-- DISASSEMBLED...
-- USED GLOBALS: script, player, mouse, FinishedLoading, DevilFruit, DevilFruit2, VTCbtb, ChargeModule, ChargeBar1, ChargeBar2, ChargeBar3, ChargeBar4, ChargeBar5, ChargeBar6, ChargeMode, CanP1, P1Charging, P1Charge, P1ChargeMax, CanP2, P2Charging, P2Charge, CanP3, P3Charging, P3Charge, CanP4, P4Charging, P4Charge, CanP5, P5Charging, P5Charge, P5ChargeMax, CanP6, P6Charging, P6Charge, RoomStamina, MaxRoomStamina, StaminaBar, FDPModule, FlightDisablers, AbilityActivated, RunService, FlashStaminaBarEffect, Power1, Power2, Power3, Power4, Power5, Power6, Button1, Button2, Button3, Button4, Button5, Button6, Button7, Button8, Button9, Button10, Button11, Button12, SP, NewSP, DPAD, Conser, UpdateDPAD.
[003] :001:GETIMPORT      v0 = wait
[004] :001:CALL           v0()
[006] :001:GETIMPORT      v1 = script
[008] :001:GETTABLEKS     v0 = v1.Parent
[009] :001:JUMPIF         if not v0 then -- goto #10
end
[010] :001:JUMPBACK       -- jump back to #2
[012] :002:GETIMPORT      v0 = wait
[013] :002:CALL           v0()
[015] :002:GETIMPORT      v2 = script
[017] :002:GETTABLEKS     v1 = v2.Parent
[019] :002:GETTABLEKS     v0 = v1.Parent
[020] :002:JUMPIF         if not v0 then -- goto #21
end
[021] :002:JUMPBACK       -- jump back to #11
[023] :004:GETIMPORT      v3 = script
[025] :004:GETTABLEKS     v2 = v3.Parent
[027] :004:GETTABLEKS     v1 = v2.Parent
[029] :004:GETTABLEKS     v0 = v1.ClassName
[031] :004:JUMPXEQKS      if v0 == "Script" then -- goto #33
[032] :005:RETURN         return
end
[034] :008:GETIMPORT      v2 = game
[036] :008:GETTABLEKS     v1 = v2.Players
[038] :008:GETTABLEKS     v0 = v1.LocalPlayer
[040] :008:SETGLOBAL      player = v0
[042] :009:GETGLOBAL      v0 = player
[045] :009:CALL           v0 = v0:GetMouse()
[047] :009:SETGLOBAL      mouse = v0
[049] :011:GETIMPORT      v0 = wait
[050] :011:CALL           v0()
[052] :011:GETIMPORT      v0 = workspace
[053] :011:LOADK          v2 = "UserData"
[056] :011:CALL           v0 = v0:FindFirstChild(v2)
[057] :011:JUMPIF         if not v0 then -- goto #58
end
[058] :011:JUMPBACK       -- jump back to #48
[060] :012:GETIMPORT      v0 = wait
[061] :012:CALL           v0()
[063] :012:GETIMPORT      v1 = workspace
[065] :012:GETTABLEKS     v0 = v1.UserData
[066] :012:LOADK          v3 = "User_"
[068] :012:GETGLOBAL      v5 = player
[070] :012:GETTABLEKS     v4 = v5.UserId
[071] :012:CONCAT         v2 = v3 .. v4
[074] :012:CALL           v0 = v0:FindFirstChild(v2)
[075] :012:JUMPIF         if not v0 then -- goto #76
end
[076] :012:JUMPBACK       -- jump back to #59
[078] :013:GETIMPORT      v1 = workspace
[080] :013:GETTABLEKS     v0 = v1.UserData
[081] :013:LOADK          v3 = "User_"
[083] :013:GETGLOBAL      v5 = player
[085] :013:GETTABLEKS     v4 = v5.UserId
[086] :013:CONCAT         v2 = v3 .. v4
[089] :013:CALL           v0 = v0:FindFirstChild(v2)
[091] :014:GETIMPORT      v1 = wait
[092] :014:CALL           v1()
[093] :014:LOADK          v3 = "Data"
[096] :014:CALL           v1 = v1:FindFirstChild(v3)
[097] :014:JUMPIF         if not v1 then -- goto #98
end
[098] :014:JUMPBACK       -- jump back to #90
[100] :015:GETIMPORT      v1 = wait
[101] :015:CALL           v1()
[103] :015:GETTABLEKS     v1 = v0.Data
[104] :015:LOADK          v3 = "MeleeLevel"
[107] :015:CALL           v1 = v1:FindFirstChild(v3)
[108] :015:JUMPIF         if not v1 then -- goto #109
end
[109] :015:JUMPBACK       -- jump back to #99
[111] :016:GETIMPORT      v1 = wait
[112] :016:CALL           v1()
[114] :016:GETTABLEKS     v1 = v0.Data
[115] :016:LOADK          v3 = "SwordLevel"
[118] :016:CALL           v1 = v1:FindFirstChild(v3)
[119] :016:JUMPIF         if not v1 then -- goto #120
end
[120] :016:JUMPBACK       -- jump back to #110
[122] :017:GETIMPORT      v1 = wait
[123] :017:CALL           v1()
[125] :017:GETTABLEKS     v1 = v0.Data
[126] :017:LOADK          v3 = "SniperLevel"
[129] :017:CALL           v1 = v1:FindFirstChild(v3)
[130] :017:JUMPIF         if not v1 then -- goto #131
end
[131] :017:JUMPBACK       -- jump back to #121
[133] :018:GETIMPORT      v1 = wait
[134] :018:CALL           v1()
[136] :018:GETTABLEKS     v1 = v0.Data
[137] :018:LOADK          v3 = "DefenseLevel"
[140] :018:CALL           v1 = v1:FindFirstChild(v3)
[141] :018:JUMPIF         if not v1 then -- goto #142
end
[142] :018:JUMPBACK       -- jump back to #132
[144] :019:GETIMPORT      v1 = wait
[145] :019:CALL           v1()
[147] :019:GETTABLEKS     v1 = v0.Data
[148] :019:LOADK          v3 = "DevilFruit"
[151] :019:CALL           v1 = v1:FindFirstChild(v3)
[152] :019:JUMPIF         if not v1 then -- goto #153
end
[153] :019:JUMPBACK       -- jump back to #143
[155] :020:GETIMPORT      v1 = wait
[156] :020:CALL           v1()
[158] :020:GETTABLEKS     v1 = v0.Data
[159] :020:LOADK          v3 = "DevilFruit2"
[162] :020:CALL           v1 = v1:FindFirstChild(v3)
[163] :020:JUMPIF         if not v1 then -- goto #164
end
[164] :020:JUMPBACK       -- jump back to #154
[166] :021:GETIMPORT      v1 = wait
[167] :021:CALL           v1()
[168] :021:LOADK          v3 = "FinishedLoading"
[171] :021:CALL           v1 = v1:FindFirstChild(v3)
[172] :021:JUMPIF         if not v1 then -- goto #173
end
[173] :021:JUMPBACK       -- jump back to #165
[174] :022:LOADK          v3 = "FinishedLoading"
[177] :022:CALL           v1 = v1:FindFirstChild(v3)
[179] :022:SETGLOBAL      FinishedLoading = v1
[181] :023:GETIMPORT      v1 = wait
[182] :023:CALL           v1()
[184] :023:GETGLOBAL      v2 = FinishedLoading
[186] :023:GETTABLEKS     v1 = v2.Value
[188] :023:JUMPXEQKB      if v1 ~= true then -- goto #190
[189] :023:JUMPBACK       -- jump back to #180
end
[191] :024:GETTABLEKS     v1 = v0.Data
[192] :024:LOADK          v3 = "DevilFruit"
[195] :024:CALL           v1 = v1:FindFirstChild(v3)
[197] :024:SETGLOBAL      DevilFruit = v1
[199] :025:GETTABLEKS     v1 = v0.Data
[200] :025:LOADK          v3 = "DevilFruit2"
[203] :025:CALL           v1 = v1:FindFirstChild(v3)
[205] :025:SETGLOBAL      DevilFruit2 = v1
[207] :026:GETIMPORT      v3 = script
[209] :026:GETTABLEKS     v2 = v3.RemoteEvent
[211] :026:GETTABLEKS     v1 = v2.RemoteFunction
[214] :026:CALL           v1 = v1:InvokeServer()
[216] :026:SETGLOBAL      VTCbtb = v1
[217] :028:LOADB          v1 = false
[219] :030:GETIMPORT      v3 = script
[221] :030:GETTABLEKS     v2 = v3.Parent
[222] :030:LOADK          v4 = "ChargeModule"
[225] :030:CALL           v2 = v2:FindFirstChild(v4)
[226] :030:JUMPIF         if not v2 then -- goto #239
[228] :031:GETIMPORT      v2 = wait
[229] :031:CALL           v2()
[231] :031:GETIMPORT      v3 = script
[233] :031:GETTABLEKS     v2 = v3.Parent
[234] :031:LOADK          v4 = "ChargeModule"
[237] :031:CALL           v2 = v2:FindFirstChild(v4)
[238] :031:JUMPIF         if not v2 then -- goto #239
end
end
[239] :031:JUMPBACK       -- jump back to #227
[241] :033:GETIMPORT      v2 = require
[243] :033:GETIMPORT      v5 = script
[245] :033:GETTABLEKS     v4 = v5.Parent
[247] :033:GETTABLEKS     v3 = v4.ChargeModule
[248] :033:CALL           v2 = v2(v3)
[250] :033:SETGLOBAL      ChargeModule = v2
[251] :034:LOADNIL        v2 = nil
[253] :034:SETGLOBAL      ChargeBar1 = v2
[254] :035:LOADNIL        v2 = nil
[256] :035:SETGLOBAL      ChargeBar2 = v2
[257] :036:LOADNIL        v2 = nil
[259] :036:SETGLOBAL      ChargeBar3 = v2
[260] :037:LOADNIL        v2 = nil
[262] :037:SETGLOBAL      ChargeBar4 = v2
[263] :038:LOADNIL        v2 = nil
[265] :038:SETGLOBAL      ChargeBar5 = v2
[266] :039:LOADNIL        v2 = nil
[268] :039:SETGLOBAL      ChargeBar6 = v2
[269] :041:LOADK          v2 = "Right"
[271] :041:SETGLOBAL      ChargeMode = v2
[272] :043:LOADB          v2 = true
[274] :043:SETGLOBAL      CanP1 = v2
[275] :044:LOADB          v2 = false
[277] :044:SETGLOBAL      P1Charging = v2
[278] :045:LOADN          v2 = 1
[280] :045:SETGLOBAL      P1Charge = v2
[281] :046:LOADN          v2 = 15
[283] :046:SETGLOBAL      P1ChargeMax = v2
[284] :048:LOADB          v2 = true
[286] :048:SETGLOBAL      CanP2 = v2
[287] :049:LOADB          v2 = false
[289] :049:SETGLOBAL      P2Charging = v2
[290] :050:LOADN          v2 = 4
[292] :050:SETGLOBAL      P2Charge = v2
[293] :052:LOADB          v2 = true
[295] :052:SETGLOBAL      CanP3 = v2
[296] :053:LOADB          v2 = false
[298] :053:SETGLOBAL      P3Charging = v2
[299] :054:LOADN          v2 = 4
[301] :054:SETGLOBAL      P3Charge = v2
[302] :056:LOADB          v2 = true
[304] :056:SETGLOBAL      CanP4 = v2
[305] :057:LOADB          v2 = false
[307] :057:SETGLOBAL      P4Charging = v2
[308] :058:LOADN          v2 = 4
[310] :058:SETGLOBAL      P4Charge = v2
[311] :060:LOADB          v2 = true
[313] :060:SETGLOBAL      CanP5 = v2
[314] :061:LOADB          v2 = false
[316] :061:SETGLOBAL      P5Charging = v2
[317] :062:LOADN          v2 = 4
[319] :062:SETGLOBAL      P5Charge = v2
[320] :063:LOADN          v2 = 100
[322] :063:SETGLOBAL      P5ChargeMax = v2
[323] :065:LOADB          v2 = true
[325] :065:SETGLOBAL      CanP6 = v2
[326] :066:LOADB          v2 = false
[328] :066:SETGLOBAL      P6Charging = v2
[329] :067:LOADN          v2 = 4
[331] :067:SETGLOBAL      P6Charge = v2
[333] :069:GETIMPORT      v2 = script
[334] :069:LOADK          v4 = "RemoteEvent"
[337] :069:CALL           v2 = v2:FindFirstChild(v4)
[338] :069:JUMPIF         if not v2 then -- goto #349
[340] :070:GETIMPORT      v2 = wait
[341] :070:CALL           v2()
[343] :070:GETIMPORT      v2 = script
[344] :070:LOADK          v4 = "RemoteEvent"
[347] :070:CALL           v2 = v2:FindFirstChild(v4)
[348] :070:JUMPIF         if not v2 then -- goto #349
end
end
[349] :070:JUMPBACK       -- jump back to #339
[351] :072:GETIMPORT      v3 = script
[353] :072:GETTABLEKS     v2 = v3.RemoteEvent
[354] :072:LOADK          v4 = "RoomStamina"
[357] :072:CALL           v2 = v2:FindFirstChild(v4)
[358] :072:JUMPIF         if not v2 then -- goto #371
[360] :073:GETIMPORT      v2 = wait
[361] :073:CALL           v2()
[363] :073:GETIMPORT      v3 = script
[365] :073:GETTABLEKS     v2 = v3.RemoteEvent
[366] :073:LOADK          v4 = "RoomStamina"
[369] :073:CALL           v2 = v2:FindFirstChild(v4)
[370] :073:JUMPIF         if not v2 then -- goto #371
end
end
[371] :073:JUMPBACK       -- jump back to #359
[373] :075:GETIMPORT      v3 = script
[375] :075:GETTABLEKS     v2 = v3.RemoteEvent
[376] :075:LOADK          v4 = "MaxRoomStamina"
[379] :075:CALL           v2 = v2:FindFirstChild(v4)
[380] :075:JUMPIF         if not v2 then -- goto #393
[382] :076:GETIMPORT      v2 = wait
[383] :076:CALL           v2()
[385] :076:GETIMPORT      v3 = script
[387] :076:GETTABLEKS     v2 = v3.RemoteEvent
[388] :076:LOADK          v4 = "MaxRoomStamina"
[391] :076:CALL           v2 = v2:FindFirstChild(v4)
[392] :076:JUMPIF         if not v2 then -- goto #393
end
end
[393] :076:JUMPBACK       -- jump back to #381
[395] :078:GETIMPORT      v4 = script
[397] :078:GETTABLEKS     v3 = v4.RemoteEvent
[399] :078:GETTABLEKS     v2 = v3.RoomStamina
[401] :078:SETGLOBAL      RoomStamina = v2
[403] :079:GETIMPORT      v4 = script
[405] :079:GETTABLEKS     v3 = v4.RemoteEvent
[407] :079:GETTABLEKS     v2 = v3.MaxRoomStamina
[409] :079:SETGLOBAL      MaxRoomStamina = v2
[411] :080:GETGLOBAL      v7 = player
[413] :080:GETTABLEKS     v6 = v7.PlayerGui
[415] :080:GETTABLEKS     v5 = v6.OpeStamina
[417] :080:GETTABLEKS     v4 = v5.Table
[419] :080:GETTABLEKS     v3 = v4.ChargeBar
[421] :080:GETTABLEKS     v2 = v3.Bar
[423] :080:SETGLOBAL      StaminaBar = v2
[425] :081:GETIMPORT      v4 = script
[427] :081:GETTABLEKS     v3 = v4.RemoteEvent
[429] :081:GETTABLEKS     v2 = v3.RoomStamina
[430] :081:LOADK          v4 = "Value"
[433] :081:CALL           v2 = v2:GetPropertyChangedSignal(v4)
[434] :081:DUPCLOSURE     v4 = function()
-- proto pool id: 0
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 43
-- size constants: 10
-- lineinfo gap: 24
-- max stack size: 7
-- is typed: false
[002] :082:GETGLOBAL      v2 = RoomStamina
[004] :082:GETTABLEKS     v1 = v2.Value
[006] :082:GETGLOBAL      v3 = MaxRoomStamina
[008] :082:GETTABLEKS     v2 = v3.Value
[009] :082:DIV            v0 = v1 / v2
[010] :083:LOADN          v1 = 1
[012] :083:JUMPIFNOTLE    if v1 <= v0 then -- goto #23
[014] :084:GETGLOBAL      v3 = StaminaBar
[016] :084:GETTABLEKS     v2 = v3.Parent
[018] :084:GETTABLEKS     v1 = v2.Parent
[019] :084:LOADB          v2 = false
[021] :084:SETTABLEKS     v1.Visible = v2
[022] :084:JUMP           -- jump to #31
end
[024] :086:GETGLOBAL      v3 = StaminaBar
[026] :086:GETTABLEKS     v2 = v3.Parent
[028] :086:GETTABLEKS     v1 = v2.Parent
[029] :086:LOADB          v2 = true
[031] :086:SETTABLEKS     v1.Visible = v2
[033] :088:GETGLOBAL      v1 = StaminaBar
[035] :088:GETIMPORT      v2 = UDim2.new
[036] :088:MOVE           v3 = v0
[037] :088:LOADN          v4 = -2
[038] :088:LOADN          v5 = 1
[039] :088:LOADN          v6 = -2
[040] :088:CALL           v2 = v2(v3, v4, v5, v6)
[042] :088:SETTABLEKS     v1.Size = v2
[043] :089:RETURN         return
end
[437] :081:CALL           v2:Connect(v4)
[439] :091:GETIMPORT      v4 = script
[441] :091:GETTABLEKS     v3 = v4.Parent
[443] :091:GETTABLEKS     v2 = v3.Parent
[444] :091:LOADK          v4 = "FDP"
[447] :091:CALL           v2 = v2:FindFirstChild(v4)
[448] :091:JUMPIF         if not v2 then -- goto #463
[450] :092:GETIMPORT      v2 = wait
[451] :092:CALL           v2()
[453] :092:GETIMPORT      v4 = script
[455] :092:GETTABLEKS     v3 = v4.Parent
[457] :092:GETTABLEKS     v2 = v3.Parent
[458] :092:LOADK          v4 = "FDP"
[461] :092:CALL           v2 = v2:FindFirstChild(v4)
[462] :092:JUMPIF         if not v2 then -- goto #463
end
end
[463] :092:JUMPBACK       -- jump back to #449
[465] :094:GETIMPORT      v2 = require
[467] :094:GETIMPORT      v7 = script
[469] :094:GETTABLEKS     v6 = v7.Parent
[471] :094:GETTABLEKS     v5 = v6.Parent
[473] :094:GETTABLEKS     v4 = v5.FDP
[475] :094:GETTABLEKS     v3 = v4.FDPModule
[476] :094:CALL           v2 = v2(v3)
[478] :094:SETGLOBAL      FDPModule = v2
[480] :095:GETIMPORT      v5 = script
[482] :095:GETTABLEKS     v4 = v5.Parent
[484] :095:GETTABLEKS     v3 = v4.Parent
[486] :095:GETTABLEKS     v2 = v3.FDP
[487] :095:LOADK          v4 = "Value"
[490] :095:CALL           v2 = v2:GetPropertyChangedSignal(v4)
[491] :095:DUPCLOSURE     v4 = function()
-- proto pool id: 1
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 13
-- size constants: 6
-- lineinfo gap: 24
-- max stack size: 5
-- is typed: false
[002] :096:GETIMPORT      v4 = script
[004] :096:GETTABLEKS     v3 = v4.Parent
[006] :096:GETTABLEKS     v2 = v3.Parent
[008] :096:GETTABLEKS     v1 = v2.FDP
[010] :096:GETTABLEKS     v0 = v1.Value
[012] :096:SETGLOBAL      FlightDisablers = v0
[013] :098:RETURN         return
end
[494] :095:CALL           v2:Connect(v4)
[495] :099:LOADN          v2 = 0
[497] :099:SETGLOBAL      FlightDisablers = v2
[498] :100:DUPCLOSURE     
local function AbilityActivated()
-- proto pool id: 3
-- num upvalues: 0
-- num inner protos: 1
-- size instructions: 7
-- size constants: 4
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :101:GETIMPORT      v0 = coroutine.wrap
[003] :101:DUPCLOSURE     v1 = function()
-- proto pool id: 2
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 7
-- size constants: 2
-- lineinfo gap: 24
-- max stack size: 3
-- is typed: false
[002] :102:GETGLOBAL      v0 = FDPModule
[003] :102:LOADN          v2 = 3
[006] :102:CALL           v0:AddFDP(v2)
[007] :103:RETURN         return
end
[004] :101:CALL           v0 = v0(v1)
[005] :104:MOVE           v1 = v0
[006] :104:CALL           v1()
[007] :105:RETURN         return
end
v2 = AbilityActivated
[500] :100:SETGLOBAL      AbilityActivated = v2
[502] :107:GETIMPORT      v2 = game
[503] :107:LOADK          v4 = "RunService"
[506] :107:CALL           v2 = v2:GetService(v4)
[508] :107:SETGLOBAL      RunService = v2
[510] :108:GETGLOBAL      v2 = player
[513] :108:CALL           v2 = v2:GetMouse()
[515] :108:SETGLOBAL      mouse = v2
[516] :110:DUPCLOSURE     
local function FlashStaminaBarEffect()
-- proto pool id: 4
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 145
-- size constants: 21
-- lineinfo gap: 24
-- max stack size: 16
-- is typed: false
[002] :113:NEWTABLE       v0 = {}
[004] :114:GETIMPORT      v1 = Color3.fromRGB
[005] :114:LOADN          v2 = 255
[006] :114:LOADN          v3 = 0
[007] :114:LOADN          v4 = 0
[008] :114:CALL           v1 = v1(v2, v3, v4)
[010] :114:SETTABLEKS     v0.ImageColor3 = v1
[012] :115:GETIMPORT      v1 = TweenInfo.new
[013] :115:LOADK          v2 = 0.1
[015] :115:GETIMPORT      v3 = Enum.EasingStyle.Linear
[016] :115:CALL           v1 = v1(v2, v3)
[018] :116:GETIMPORT      v2 = game
[019] :116:LOADK          v4 = "TweenService"
[022] :116:CALL           v2 = v2:GetService(v4)
[024] :116:GETGLOBAL      v4 = StaminaBar
[025] :116:MOVE           v5 = v1
[026] :116:MOVE           v6 = v0
[029] :116:CALL           v2 = v2:Create(v4, v5, v6)
[032] :117:CALL           v3:Play()
[034] :119:GETIMPORT      v3 = wait
[035] :119:LOADK          v4 = 0.1
[036] :119:CALL           v3(v4)
[038] :121:NEWTABLE       v3 = {}
[040] :122:GETIMPORT      v4 = Color3.fromRGB
[041] :122:LOADN          v5 = 127
[042] :122:LOADN          v6 = 0
[043] :122:LOADN          v7 = 0
[044] :122:CALL           v4 = v4(v5, v6, v7)
[046] :122:SETTABLEKS     v3.ImageColor3 = v4
[048] :123:GETIMPORT      v4 = TweenInfo.new
[049] :123:LOADK          v5 = 0.1
[051] :123:GETIMPORT      v6 = Enum.EasingStyle.Linear
[052] :123:CALL           v4 = v4(v5, v6)
[054] :124:GETIMPORT      v5 = game
[055] :124:LOADK          v7 = "TweenService"
[058] :124:CALL           v5 = v5:GetService(v7)
[060] :124:GETGLOBAL      v7 = StaminaBar
[061] :124:MOVE           v8 = v4
[062] :124:MOVE           v9 = v3
[065] :124:CALL           v5 = v5:Create(v7, v8, v9)
[068] :125:CALL           v6:Play()
[070] :127:GETIMPORT      v6 = wait
[071] :127:LOADK          v7 = 0.1
[072] :127:CALL           v6(v7)
[074] :129:NEWTABLE       v6 = {}
[076] :130:GETIMPORT      v7 = Color3.fromRGB
[077] :130:LOADN          v8 = 255
[078] :130:LOADN          v9 = 0
[079] :130:LOADN          v10 = 0
[080] :130:CALL           v7 = v7(v8, v9, v10)
[082] :130:SETTABLEKS     v6.ImageColor3 = v7
[084] :131:GETIMPORT      v7 = TweenInfo.new
[085] :131:LOADK          v8 = 0.1
[087] :131:GETIMPORT      v9 = Enum.EasingStyle.Linear
[088] :131:CALL           v7 = v7(v8, v9)
[090] :132:GETIMPORT      v8 = game
[091] :132:LOADK          v10 = "TweenService"
[094] :132:CALL           v8 = v8:GetService(v10)
[096] :132:GETGLOBAL      v10 = StaminaBar
[097] :132:MOVE           v11 = v7
[098] :132:MOVE           v12 = v6
[101] :132:CALL           v8 = v8:Create(v10, v11, v12)
[104] :133:CALL           v9:Play()
[106] :135:GETIMPORT      v9 = wait
[107] :135:LOADK          v10 = 0.1
[108] :135:CALL           v9(v10)
[110] :137:NEWTABLE       v9 = {}
[112] :138:GETIMPORT      v10 = Color3.fromRGB
[113] :138:LOADN          v11 = 255
[114] :138:LOADN          v12 = 150
[115] :138:LOADN          v13 = 64
[116] :138:CALL           v10 = v10(v11, v12, v13)
[118] :138:SETTABLEKS     v9.ImageColor3 = v10
[120] :139:GETIMPORT      v10 = TweenInfo.new
[121] :139:LOADK          v11 = 0.1
[123] :139:GETIMPORT      v12 = Enum.EasingStyle.Linear
[124] :139:CALL           v10 = v10(v11, v12)
[126] :140:GETIMPORT      v11 = game
[127] :140:LOADK          v13 = "TweenService"
[130] :140:CALL           v11 = v11:GetService(v13)
[132] :140:GETGLOBAL      v13 = StaminaBar
[133] :140:MOVE           v14 = v10
[134] :140:MOVE           v15 = v9
[137] :140:CALL           v11 = v11:Create(v13, v14, v15)
[140] :141:CALL           v12:Play()
[142] :143:GETIMPORT      v12 = wait
[143] :143:LOADK          v13 = 0.1
[144] :143:CALL           v12(v13)
[145] :144:RETURN         return
end
v2 = FlashStaminaBarEffect
[518] :110:SETGLOBAL      FlashStaminaBarEffect = v2
[519] :145:DUPCLOSURE     
local function Power1(p1, p2, p3)
-- proto pool id: 5
-- num upvalues: 1
-- num inner protos: 0
-- size instructions: 160
-- size constants: 35
-- lineinfo gap: 24
-- max stack size: 12
-- is typed: false
[002] :146:GETIMPORT      v4 = script
[004] :146:GETTABLEKS     v3 = v4.Parent
[006] :146:GETTABLEKS     v2 = v3.Parent
[008] :146:GETTABLEKS     v1 = v2.DF_Disabled
[010] :146:GETTABLEKS     v0 = v1.Value
[012] :146:JUMPXEQKB      if v0 == true then -- goto #14
[013] :146:RETURN         return
end
[015] :147:GETIMPORT      v4 = script
[017] :147:GETTABLEKS     v3 = v4.Parent
[019] :147:GETTABLEKS     v2 = v3.Parent
[021] :147:GETTABLEKS     v1 = v2.ChillyPunched
[023] :147:GETTABLEKS     v0 = v1.Value
[025] :147:JUMPXEQKB      if v0 == true then -- goto #27
[026] :147:RETURN         return
end
[028] :148:GETIMPORT      v4 = script
[030] :148:GETTABLEKS     v3 = v4.Parent
[032] :148:GETTABLEKS     v2 = v3.Parent
[034] :148:GETTABLEKS     v1 = v2.Projecting
[036] :148:GETTABLEKS     v0 = v1.Value
[038] :148:JUMPXEQKB      if v0 == true then -- goto #40
[039] :148:RETURN         return
end
[041] :149:GETIMPORT      v4 = script
[043] :149:GETTABLEKS     v3 = v4.Parent
[045] :149:GETTABLEKS     v2 = v3.Parent
[047] :149:GETTABLEKS     v1 = v2.UsingBarrierBody
[049] :149:GETTABLEKS     v0 = v1.Value
[051] :149:JUMPXEQKB      if v0 == true then -- goto #53
[052] :149:RETURN         return
end
[053] :150:GETUPVAL       v2 = u_v0
[055] :150:GETTABLEKS     v1 = v2.Data
[057] :150:GETIMPORT      v6 = script
[059] :150:GETTABLEKS     v5 = v6.Power1
[061] :150:GETTABLEKS     v4 = v5.StatType
[063] :150:GETTABLEKS     v3 = v4.Value
[066] :150:CALL           v1 = v1:FindFirstChild(v3)
[068] :150:GETTABLEKS     v0 = v1.Value
[070] :151:GETIMPORT      v2 = script
[071] :151:LOADK          v4 = "Power1"
[074] :151:CALL           v2 = v2:FindFirstChild(v4)
[076] :151:GETTABLEKS     v1 = v2.Value
[078] :151:JUMPIFNOTLT    if v0 < v1 then -- goto #80
[079] :151:RETURN         return
end
[081] :152:GETGLOBAL      v1 = AbilityActivated
[082] :152:CALL           v1()
[084] :153:GETIMPORT      v1 = Enum.UserInputState.Begin
[086] :153:JUMPIFNOTEQ    if p2 ~= v1 then -- goto #133
[088] :154:GETGLOBAL      v1 = P1Charging
[090] :154:JUMPXEQKB      if v1 == true then -- goto #92
[091] :154:RETURN         return
end
[092] :155:LOADB          v1 = true
[094] :155:SETGLOBAL      P1Charging = v1
[095] :156:LOADN          v1 = 1
[097] :156:SETGLOBAL      P1Charge = v1
[099] :158:GETIMPORT      v1 = wait
[100] :158:CALL           v1()
[102] :159:GETGLOBAL      v1 = P1Charge
[104] :159:GETGLOBAL      v2 = P1ChargeMax
[106] :159:JUMPIFNOTLT    if v1 < v2 then -- goto #127
[108] :160:GETGLOBAL      v2 = P1Charge
[109] :160:ADDK           v1 = v2 + 1
[111] :160:SETGLOBAL      P1Charge = v1
[113] :161:GETGLOBAL      v1 = ChargeModule
[115] :161:GETIMPORT      v6 = script
[117] :161:GETTABLEKS     v4 = v6.Name
[118] :161:LOADK          v5 = 1
[119] :161:CONCAT         v3 = v4 .. v5
[121] :161:GETGLOBAL      v4 = P1Charge
[123] :161:GETGLOBAL      v5 = P1ChargeMax
[126] :161:CALL           v1:UpdateChargeBar(v3, v4, v5)
end
[128] :163:GETGLOBAL      v1 = P1Charging
[130] :163:JUMPXEQKB      if v1 ~= false then -- goto #160
[131] :163:JUMPBACK       -- jump back to #98
[132] :163:RETURN         return
end
[134] :164:GETIMPORT      v1 = Enum.UserInputState.End
[136] :164:JUMPIFNOTEQ    if p2 ~= v1 then -- goto #160
[138] :165:GETIMPORT      v2 = script
[140] :165:GETTABLEKS     v1 = v2.RemoteEvent
[142] :165:GETGLOBAL      v3 = VTCbtb
[143] :165:MOVE           v4 = p1
[144] :165:LOADNIL        v5 = nil
[146] :165:GETGLOBAL      v8 = mouse
[148] :165:GETTABLEKS     v7 = v8.Hit
[150] :165:GETTABLEKS     v6 = v7.p
[151] :165:LOADNIL        v7 = nil
[153] :165:GETGLOBAL      v8 = P1Charge
[156] :165:CALL           v1:FireServer(v3, v4, v5, v6, v7, v8)
[157] :166:LOADB          v1 = false
[159] :166:SETGLOBAL      P1Charging = v1
end
end
[160] :168:RETURN         return
end
v2 = Power1
[522] :145:SETGLOBAL      Power1 = v2
[523] :169:DUPCLOSURE     
local function Power2(p4, p5, p6)
-- proto pool id: 6
-- num upvalues: 1
-- num inner protos: 0
-- size instructions: 111
-- size constants: 22
-- lineinfo gap: 24
-- max stack size: 10
-- is typed: false
[002] :170:GETIMPORT      v4 = script
[004] :170:GETTABLEKS     v3 = v4.Parent
[006] :170:GETTABLEKS     v2 = v3.Parent
[008] :170:GETTABLEKS     v1 = v2.DF_Disabled
[010] :170:GETTABLEKS     v0 = v1.Value
[012] :170:JUMPXEQKB      if v0 == true then -- goto #14
[013] :170:RETURN         return
end
[015] :171:GETIMPORT      v4 = script
[017] :171:GETTABLEKS     v3 = v4.Parent
[019] :171:GETTABLEKS     v2 = v3.Parent
[021] :171:GETTABLEKS     v1 = v2.ChillyPunched
[023] :171:GETTABLEKS     v0 = v1.Value
[025] :171:JUMPXEQKB      if v0 == true then -- goto #27
[026] :171:RETURN         return
end
[028] :172:GETIMPORT      v4 = script
[030] :172:GETTABLEKS     v3 = v4.Parent
[032] :172:GETTABLEKS     v2 = v3.Parent
[034] :172:GETTABLEKS     v1 = v2.Projecting
[036] :172:GETTABLEKS     v0 = v1.Value
[038] :172:JUMPXEQKB      if v0 == true then -- goto #40
[039] :172:RETURN         return
end
[041] :173:GETIMPORT      v4 = script
[043] :173:GETTABLEKS     v3 = v4.Parent
[045] :173:GETTABLEKS     v2 = v3.Parent
[047] :173:GETTABLEKS     v1 = v2.UsingBarrierBody
[049] :173:GETTABLEKS     v0 = v1.Value
[051] :173:JUMPXEQKB      if v0 == true then -- goto #53
[052] :173:RETURN         return
end
[053] :174:GETUPVAL       v2 = u_v0
[055] :174:GETTABLEKS     v1 = v2.Data
[057] :174:GETIMPORT      v6 = script
[059] :174:GETTABLEKS     v5 = v6.Power2
[061] :174:GETTABLEKS     v4 = v5.StatType
[063] :174:GETTABLEKS     v3 = v4.Value
[066] :174:CALL           v1 = v1:FindFirstChild(v3)
[068] :174:GETTABLEKS     v0 = v1.Value
[070] :175:GETIMPORT      v2 = script
[071] :175:LOADK          v4 = "Power2"
[074] :175:CALL           v2 = v2:FindFirstChild(v4)
[076] :175:GETTABLEKS     v1 = v2.Value
[078] :175:JUMPIFNOTLT    if v0 < v1 then -- goto #80
[079] :175:RETURN         return
end
[081] :176:GETGLOBAL      v1 = AbilityActivated
[082] :176:CALL           v1()
[084] :177:GETIMPORT      v1 = Enum.UserInputState.Begin
[086] :177:JUMPIFNOTEQ    if p5 ~= v1 then -- goto #111
[088] :178:GETIMPORT      v2 = script
[090] :178:GETTABLEKS     v1 = v2.RemoteEvent
[092] :178:GETGLOBAL      v3 = VTCbtb
[093] :178:MOVE           v4 = p4
[096] :178:CALL           v1:FireServer(v3, v4)
[098] :179:GETIMPORT      v4 = script
[100] :179:GETTABLEKS     v3 = v4.RemoteEvent
[102] :179:GETTABLEKS     v2 = v3.RoomStamina
[104] :179:GETTABLEKS     v1 = v2.Value
[105] :179:LOADN          v2 = 148
[107] :179:JUMPIFNOTLT    if v1 < v2 then -- goto #111
[109] :180:GETGLOBAL      v1 = FlashStaminaBarEffect
[110] :180:CALL           v1()
end
end
[111] :183:RETURN         return
end
v2 = Power2
[526] :169:SETGLOBAL      Power2 = v2
[527] :184:DUPCLOSURE     
local function Power3(p7, p8, p9)
-- proto pool id: 7
-- num upvalues: 1
-- num inner protos: 0
-- size instructions: 118
-- size constants: 25
-- lineinfo gap: 24
-- max stack size: 12
-- is typed: false
[002] :185:GETIMPORT      v4 = script
[004] :185:GETTABLEKS     v3 = v4.Parent
[006] :185:GETTABLEKS     v2 = v3.Parent
[008] :185:GETTABLEKS     v1 = v2.DF_Disabled
[010] :185:GETTABLEKS     v0 = v1.Value
[012] :185:JUMPXEQKB      if v0 == true then -- goto #14
[013] :185:RETURN         return
end
[015] :186:GETIMPORT      v4 = script
[017] :186:GETTABLEKS     v3 = v4.Parent
[019] :186:GETTABLEKS     v2 = v3.Parent
[021] :186:GETTABLEKS     v1 = v2.ChillyPunched
[023] :186:GETTABLEKS     v0 = v1.Value
[025] :186:JUMPXEQKB      if v0 == true then -- goto #27
[026] :186:RETURN         return
end
[028] :187:GETIMPORT      v4 = script
[030] :187:GETTABLEKS     v3 = v4.Parent
[032] :187:GETTABLEKS     v2 = v3.Parent
[034] :187:GETTABLEKS     v1 = v2.Projecting
[036] :187:GETTABLEKS     v0 = v1.Value
[038] :187:JUMPXEQKB      if v0 == true then -- goto #40
[039] :187:RETURN         return
end
[041] :188:GETIMPORT      v4 = script
[043] :188:GETTABLEKS     v3 = v4.Parent
[045] :188:GETTABLEKS     v2 = v3.Parent
[047] :188:GETTABLEKS     v1 = v2.UsingBarrierBody
[049] :188:GETTABLEKS     v0 = v1.Value
[051] :188:JUMPXEQKB      if v0 == true then -- goto #53
[052] :188:RETURN         return
end
[053] :189:GETUPVAL       v2 = u_v0
[055] :189:GETTABLEKS     v1 = v2.Data
[057] :189:GETIMPORT      v6 = script
[059] :189:GETTABLEKS     v5 = v6.Power3
[061] :189:GETTABLEKS     v4 = v5.StatType
[063] :189:GETTABLEKS     v3 = v4.Value
[066] :189:CALL           v1 = v1:FindFirstChild(v3)
[068] :189:GETTABLEKS     v0 = v1.Value
[070] :190:GETIMPORT      v2 = script
[071] :190:LOADK          v4 = "Power3"
[074] :190:CALL           v2 = v2:FindFirstChild(v4)
[076] :190:GETTABLEKS     v1 = v2.Value
[078] :190:JUMPIFNOTLT    if v0 < v1 then -- goto #80
[079] :190:RETURN         return
end
[081] :191:GETGLOBAL      v1 = AbilityActivated
[082] :191:CALL           v1()
[084] :192:GETIMPORT      v1 = Enum.UserInputState.Begin
[086] :192:JUMPIFNOTEQ    if p8 ~= v1 then -- goto #118
[088] :193:GETIMPORT      v2 = script
[090] :193:GETTABLEKS     v1 = v2.RemoteEvent
[092] :193:GETGLOBAL      v3 = VTCbtb
[093] :193:MOVE           v4 = p7
[094] :193:LOADNIL        v5 = nil
[096] :193:GETGLOBAL      v8 = mouse
[098] :193:GETTABLEKS     v7 = v8.Hit
[100] :193:GETTABLEKS     v6 = v7.p
[103] :193:CALL           v1:FireServer(v3, v4, v5, v6)
[105] :194:GETIMPORT      v4 = script
[107] :194:GETTABLEKS     v3 = v4.RemoteEvent
[109] :194:GETTABLEKS     v2 = v3.RoomStamina
[111] :194:GETTABLEKS     v1 = v2.Value
[112] :194:LOADN          v2 = 18
[114] :194:JUMPIFNOTLT    if v1 < v2 then -- goto #118
[116] :195:GETGLOBAL      v1 = FlashStaminaBarEffect
[117] :195:CALL           v1()
end
end
[118] :198:RETURN         return
end
v2 = Power3
[530] :184:SETGLOBAL      Power3 = v2
[531] :199:DUPCLOSURE     
local function Power4(p10, p11, p12)
-- proto pool id: 8
-- num upvalues: 1
-- num inner protos: 0
-- size instructions: 118
-- size constants: 25
-- lineinfo gap: 24
-- max stack size: 12
-- is typed: false
[002] :200:GETIMPORT      v4 = script
[004] :200:GETTABLEKS     v3 = v4.Parent
[006] :200:GETTABLEKS     v2 = v3.Parent
[008] :200:GETTABLEKS     v1 = v2.DF_Disabled
[010] :200:GETTABLEKS     v0 = v1.Value
[012] :200:JUMPXEQKB      if v0 == true then -- goto #14
[013] :200:RETURN         return
end
[015] :201:GETIMPORT      v4 = script
[017] :201:GETTABLEKS     v3 = v4.Parent
[019] :201:GETTABLEKS     v2 = v3.Parent
[021] :201:GETTABLEKS     v1 = v2.ChillyPunched
[023] :201:GETTABLEKS     v0 = v1.Value
[025] :201:JUMPXEQKB      if v0 == true then -- goto #27
[026] :201:RETURN         return
end
[028] :202:GETIMPORT      v4 = script
[030] :202:GETTABLEKS     v3 = v4.Parent
[032] :202:GETTABLEKS     v2 = v3.Parent
[034] :202:GETTABLEKS     v1 = v2.Projecting
[036] :202:GETTABLEKS     v0 = v1.Value
[038] :202:JUMPXEQKB      if v0 == true then -- goto #40
[039] :202:RETURN         return
end
[041] :203:GETIMPORT      v4 = script
[043] :203:GETTABLEKS     v3 = v4.Parent
[045] :203:GETTABLEKS     v2 = v3.Parent
[047] :203:GETTABLEKS     v1 = v2.UsingBarrierBody
[049] :203:GETTABLEKS     v0 = v1.Value
[051] :203:JUMPXEQKB      if v0 == true then -- goto #53
[052] :203:RETURN         return
end
[053] :204:GETUPVAL       v2 = u_v0
[055] :204:GETTABLEKS     v1 = v2.Data
[057] :204:GETIMPORT      v6 = script
[059] :204:GETTABLEKS     v5 = v6.Power4
[061] :204:GETTABLEKS     v4 = v5.StatType
[063] :204:GETTABLEKS     v3 = v4.Value
[066] :204:CALL           v1 = v1:FindFirstChild(v3)
[068] :204:GETTABLEKS     v0 = v1.Value
[070] :205:GETIMPORT      v2 = script
[071] :205:LOADK          v4 = "Power4"
[074] :205:CALL           v2 = v2:FindFirstChild(v4)
[076] :205:GETTABLEKS     v1 = v2.Value
[078] :205:JUMPIFNOTLT    if v0 < v1 then -- goto #80
[079] :205:RETURN         return
end
[081] :206:GETGLOBAL      v1 = AbilityActivated
[082] :206:CALL           v1()
[084] :207:GETIMPORT      v1 = Enum.UserInputState.Begin
[086] :207:JUMPIFNOTEQ    if p11 ~= v1 then -- goto #118
[088] :208:GETIMPORT      v2 = script
[090] :208:GETTABLEKS     v1 = v2.RemoteEvent
[092] :208:GETGLOBAL      v3 = VTCbtb
[093] :208:MOVE           v4 = p10
[094] :208:LOADNIL        v5 = nil
[096] :208:GETGLOBAL      v8 = mouse
[098] :208:GETTABLEKS     v7 = v8.Hit
[100] :208:GETTABLEKS     v6 = v7.p
[103] :208:CALL           v1:FireServer(v3, v4, v5, v6)
[105] :209:GETIMPORT      v4 = script
[107] :209:GETTABLEKS     v3 = v4.RemoteEvent
[109] :209:GETTABLEKS     v2 = v3.RoomStamina
[111] :209:GETTABLEKS     v1 = v2.Value
[112] :209:LOADN          v2 = 98
[114] :209:JUMPIFNOTLT    if v1 < v2 then -- goto #118
[116] :210:GETGLOBAL      v1 = FlashStaminaBarEffect
[117] :210:CALL           v1()
end
end
[118] :213:RETURN         return
end
v2 = Power4
[534] :199:SETGLOBAL      Power4 = v2
[535] :214:DUPCLOSURE     
local function Power5(p13, p14, p15)
-- proto pool id: 9
-- num upvalues: 1
-- num inner protos: 0
-- size instructions: 97
-- size constants: 20
-- lineinfo gap: 24
-- max stack size: 10
-- is typed: false
[002] :215:GETIMPORT      v4 = script
[004] :215:GETTABLEKS     v3 = v4.Parent
[006] :215:GETTABLEKS     v2 = v3.Parent
[008] :215:GETTABLEKS     v1 = v2.DF_Disabled
[010] :215:GETTABLEKS     v0 = v1.Value
[012] :215:JUMPXEQKB      if v0 == true then -- goto #14
[013] :215:RETURN         return
end
[015] :216:GETIMPORT      v4 = script
[017] :216:GETTABLEKS     v3 = v4.Parent
[019] :216:GETTABLEKS     v2 = v3.Parent
[021] :216:GETTABLEKS     v1 = v2.ChillyPunched
[023] :216:GETTABLEKS     v0 = v1.Value
[025] :216:JUMPXEQKB      if v0 == true then -- goto #27
[026] :216:RETURN         return
end
[028] :217:GETIMPORT      v4 = script
[030] :217:GETTABLEKS     v3 = v4.Parent
[032] :217:GETTABLEKS     v2 = v3.Parent
[034] :217:GETTABLEKS     v1 = v2.Projecting
[036] :217:GETTABLEKS     v0 = v1.Value
[038] :217:JUMPXEQKB      if v0 == true then -- goto #40
[039] :217:RETURN         return
end
[041] :218:GETIMPORT      v4 = script
[043] :218:GETTABLEKS     v3 = v4.Parent
[045] :218:GETTABLEKS     v2 = v3.Parent
[047] :218:GETTABLEKS     v1 = v2.UsingBarrierBody
[049] :218:GETTABLEKS     v0 = v1.Value
[051] :218:JUMPXEQKB      if v0 == true then -- goto #53
[052] :218:RETURN         return
end
[053] :219:GETUPVAL       v2 = u_v0
[055] :219:GETTABLEKS     v1 = v2.Data
[057] :219:GETIMPORT      v6 = script
[059] :219:GETTABLEKS     v5 = v6.Power5
[061] :219:GETTABLEKS     v4 = v5.StatType
[063] :219:GETTABLEKS     v3 = v4.Value
[066] :219:CALL           v1 = v1:FindFirstChild(v3)
[068] :219:GETTABLEKS     v0 = v1.Value
[070] :220:GETIMPORT      v2 = script
[071] :220:LOADK          v4 = "Power5"
[074] :220:CALL           v2 = v2:FindFirstChild(v4)
[076] :220:GETTABLEKS     v1 = v2.Value
[078] :220:JUMPIFNOTLT    if v0 < v1 then -- goto #80
[079] :220:RETURN         return
end
[081] :221:GETGLOBAL      v1 = AbilityActivated
[082] :221:CALL           v1()
[084] :222:GETIMPORT      v1 = Enum.UserInputState.Begin
[086] :222:JUMPIFNOTEQ    if p14 ~= v1 then -- goto #97
[088] :223:GETIMPORT      v2 = script
[090] :223:GETTABLEKS     v1 = v2.RemoteEvent
[092] :223:GETGLOBAL      v3 = VTCbtb
[093] :223:MOVE           v4 = p13
[096] :223:CALL           v1:FireServer(v3, v4)
end
[097] :225:RETURN         return
end
v2 = Power5
[538] :214:SETGLOBAL      Power5 = v2
[539] :226:DUPCLOSURE     
local function Power6(p16, p17, p18)
-- proto pool id: 10
-- num upvalues: 1
-- num inner protos: 0
-- size instructions: 97
-- size constants: 20
-- lineinfo gap: 24
-- max stack size: 10
-- is typed: false
[002] :227:GETIMPORT      v4 = script
[004] :227:GETTABLEKS     v3 = v4.Parent
[006] :227:GETTABLEKS     v2 = v3.Parent
[008] :227:GETTABLEKS     v1 = v2.DF_Disabled
[010] :227:GETTABLEKS     v0 = v1.Value
[012] :227:JUMPXEQKB      if v0 == true then -- goto #14
[013] :227:RETURN         return
end
[015] :228:GETIMPORT      v4 = script
[017] :228:GETTABLEKS     v3 = v4.Parent
[019] :228:GETTABLEKS     v2 = v3.Parent
[021] :228:GETTABLEKS     v1 = v2.ChillyPunched
[023] :228:GETTABLEKS     v0 = v1.Value
[025] :228:JUMPXEQKB      if v0 == true then -- goto #27
[026] :228:RETURN         return
end
[028] :229:GETIMPORT      v4 = script
[030] :229:GETTABLEKS     v3 = v4.Parent
[032] :229:GETTABLEKS     v2 = v3.Parent
[034] :229:GETTABLEKS     v1 = v2.Projecting
[036] :229:GETTABLEKS     v0 = v1.Value
[038] :229:JUMPXEQKB      if v0 == true then -- goto #40
[039] :229:RETURN         return
end
[041] :230:GETIMPORT      v4 = script
[043] :230:GETTABLEKS     v3 = v4.Parent
[045] :230:GETTABLEKS     v2 = v3.Parent
[047] :230:GETTABLEKS     v1 = v2.UsingBarrierBody
[049] :230:GETTABLEKS     v0 = v1.Value
[051] :230:JUMPXEQKB      if v0 == true then -- goto #53
[052] :230:RETURN         return
end
[053] :231:GETUPVAL       v2 = u_v0
[055] :231:GETTABLEKS     v1 = v2.Data
[057] :231:GETIMPORT      v6 = script
[059] :231:GETTABLEKS     v5 = v6.Power6
[061] :231:GETTABLEKS     v4 = v5.StatType
[063] :231:GETTABLEKS     v3 = v4.Value
[066] :231:CALL           v1 = v1:FindFirstChild(v3)
[068] :231:GETTABLEKS     v0 = v1.Value
[070] :232:GETIMPORT      v2 = script
[071] :232:LOADK          v4 = "Power6"
[074] :232:CALL           v2 = v2:FindFirstChild(v4)
[076] :232:GETTABLEKS     v1 = v2.Value
[078] :232:JUMPIFNOTLT    if v0 < v1 then -- goto #80
[079] :232:RETURN         return
end
[081] :233:GETGLOBAL      v1 = AbilityActivated
[082] :233:CALL           v1()
[084] :234:GETIMPORT      v1 = Enum.UserInputState.Begin
[086] :234:JUMPIFNOTEQ    if p17 ~= v1 then -- goto #97
[088] :235:GETIMPORT      v2 = script
[090] :235:GETTABLEKS     v1 = v2.RemoteEvent
[092] :235:GETGLOBAL      v3 = VTCbtb
[093] :235:MOVE           v4 = p16
[096] :235:CALL           v1:FireServer(v3, v4)
end
[097] :237:RETURN         return
end
v2 = Power6
[542] :226:SETGLOBAL      Power6 = v2
[544] :239:GETIMPORT      v2 = wait
[545] :239:CALL           v2()
[547] :239:GETIMPORT      v4 = script
[549] :239:GETTABLEKS     v3 = v4.Parent
[551] :239:GETTABLEKS     v2 = v3.Parent
[552] :239:LOADK          v4 = "DamageScript"
[555] :239:CALL           v2 = v2:FindFirstChild(v4)
[556] :239:JUMPIF         if not v2 then -- goto #557
end
[557] :239:JUMPBACK       -- jump back to #543
[559] :240:GETIMPORT      v2 = wait
[560] :240:CALL           v2()
[562] :240:GETIMPORT      v6 = script
[564] :240:GETTABLEKS     v5 = v6.Parent
[566] :240:GETTABLEKS     v4 = v5.Parent
[568] :240:GETTABLEKS     v3 = v4.DamageScript
[570] :240:GETTABLEKS     v2 = v3.Disabled
[572] :240:JUMPXEQKB      if v2 ~= false then -- goto #574
[573] :240:JUMPBACK       -- jump back to #558
end
[574] :241:LOADNIL        v2 = nil
[576] :241:SETGLOBAL      Button1 = v2
[577] :242:LOADNIL        v2 = nil
[579] :242:SETGLOBAL      Button2 = v2
[580] :243:LOADNIL        v2 = nil
[582] :243:SETGLOBAL      Button3 = v2
[583] :244:LOADNIL        v2 = nil
[585] :244:SETGLOBAL      Button4 = v2
[586] :245:LOADNIL        v2 = nil
[588] :245:SETGLOBAL      Button5 = v2
[589] :246:LOADNIL        v2 = nil
[591] :246:SETGLOBAL      Button6 = v2
[592] :247:LOADNIL        v2 = nil
[594] :247:SETGLOBAL      Button7 = v2
[595] :248:LOADNIL        v2 = nil
[597] :248:SETGLOBAL      Button8 = v2
[598] :249:LOADNIL        v2 = nil
[600] :249:SETGLOBAL      Button9 = v2
[601] :250:LOADNIL        v2 = nil
[603] :250:SETGLOBAL      Button10 = v2
[604] :251:LOADNIL        v2 = nil
[606] :251:SETGLOBAL      Button11 = v2
[607] :252:LOADNIL        v2 = nil
[609] :252:SETGLOBAL      Button12 = v2
[610] :253:LOADNIL        v2 = nil
[612] :253:SETGLOBAL      SP = v2
[613] :254:DUPCLOSURE     
local function NewSP()
-- proto pool id: 11
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 183
-- size constants: 17
-- lineinfo gap: 24
-- max stack size: 5
-- is typed: false
[002] :255:GETGLOBAL      v0 = Button1
[004] :255:JUMPXEQKNIL    if v0 ~= nil then -- goto #15
[006] :255:GETGLOBAL      v0 = Button1
[008] :255:GETIMPORT      v1 = Color3.fromRGB
[009] :255:LOADN          v2 = 255
[010] :255:LOADN          v3 = 255
[011] :255:LOADN          v4 = 255
[012] :255:CALL           v1 = v1(v2, v3, v4)
[014] :255:SETTABLEKS     v0.ImageColor3 = v1
end
[016] :256:GETGLOBAL      v0 = Button2
[018] :256:JUMPXEQKNIL    if v0 ~= nil then -- goto #29
[020] :256:GETGLOBAL      v0 = Button2
[022] :256:GETIMPORT      v1 = Color3.fromRGB
[023] :256:LOADN          v2 = 255
[024] :256:LOADN          v3 = 255
[025] :256:LOADN          v4 = 255
[026] :256:CALL           v1 = v1(v2, v3, v4)
[028] :256:SETTABLEKS     v0.ImageColor3 = v1
end
[030] :257:GETGLOBAL      v0 = Button3
[032] :257:JUMPXEQKNIL    if v0 ~= nil then -- goto #43
[034] :257:GETGLOBAL      v0 = Button3
[036] :257:GETIMPORT      v1 = Color3.fromRGB
[037] :257:LOADN          v2 = 255
[038] :257:LOADN          v3 = 255
[039] :257:LOADN          v4 = 255
[040] :257:CALL           v1 = v1(v2, v3, v4)
[042] :257:SETTABLEKS     v0.ImageColor3 = v1
end
[044] :258:GETGLOBAL      v0 = Button4
[046] :258:JUMPXEQKNIL    if v0 ~= nil then -- goto #57
[048] :258:GETGLOBAL      v0 = Button4
[050] :258:GETIMPORT      v1 = Color3.fromRGB
[051] :258:LOADN          v2 = 255
[052] :258:LOADN          v3 = 255
[053] :258:LOADN          v4 = 255
[054] :258:CALL           v1 = v1(v2, v3, v4)
[056] :258:SETTABLEKS     v0.ImageColor3 = v1
end
[058] :259:GETGLOBAL      v0 = Button5
[060] :259:JUMPXEQKNIL    if v0 ~= nil then -- goto #71
[062] :259:GETGLOBAL      v0 = Button5
[064] :259:GETIMPORT      v1 = Color3.fromRGB
[065] :259:LOADN          v2 = 255
[066] :259:LOADN          v3 = 255
[067] :259:LOADN          v4 = 255
[068] :259:CALL           v1 = v1(v2, v3, v4)
[070] :259:SETTABLEKS     v0.ImageColor3 = v1
end
[072] :260:GETGLOBAL      v0 = Button6
[074] :260:JUMPXEQKNIL    if v0 ~= nil then -- goto #85
[076] :260:GETGLOBAL      v0 = Button6
[078] :260:GETIMPORT      v1 = Color3.fromRGB
[079] :260:LOADN          v2 = 255
[080] :260:LOADN          v3 = 255
[081] :260:LOADN          v4 = 255
[082] :260:CALL           v1 = v1(v2, v3, v4)
[084] :260:SETTABLEKS     v0.ImageColor3 = v1
end
[086] :261:GETGLOBAL      v0 = Button7
[088] :261:JUMPXEQKNIL    if v0 ~= nil then -- goto #99
[090] :261:GETGLOBAL      v0 = Button7
[092] :261:GETIMPORT      v1 = Color3.fromRGB
[093] :261:LOADN          v2 = 255
[094] :261:LOADN          v3 = 255
[095] :261:LOADN          v4 = 255
[096] :261:CALL           v1 = v1(v2, v3, v4)
[098] :261:SETTABLEKS     v0.ImageColor3 = v1
end
[100] :262:GETGLOBAL      v0 = Button8
[102] :262:JUMPXEQKNIL    if v0 ~= nil then -- goto #113
[104] :262:GETGLOBAL      v0 = Button8
[106] :262:GETIMPORT      v1 = Color3.fromRGB
[107] :262:LOADN          v2 = 255
[108] :262:LOADN          v3 = 255
[109] :262:LOADN          v4 = 255
[110] :262:CALL           v1 = v1(v2, v3, v4)
[112] :262:SETTABLEKS     v0.ImageColor3 = v1
end
[114] :263:GETGLOBAL      v0 = Button9
[116] :263:JUMPXEQKNIL    if v0 ~= nil then -- goto #127
[118] :263:GETGLOBAL      v0 = Button9
[120] :263:GETIMPORT      v1 = Color3.fromRGB
[121] :263:LOADN          v2 = 255
[122] :263:LOADN          v3 = 255
[123] :263:LOADN          v4 = 255
[124] :263:CALL           v1 = v1(v2, v3, v4)
[126] :263:SETTABLEKS     v0.ImageColor3 = v1
end
[128] :264:GETGLOBAL      v0 = Button10
[130] :264:JUMPXEQKNIL    if v0 ~= nil then -- goto #141
[132] :264:GETGLOBAL      v0 = Button10
[134] :264:GETIMPORT      v1 = Color3.fromRGB
[135] :264:LOADN          v2 = 255
[136] :264:LOADN          v3 = 255
[137] :264:LOADN          v4 = 255
[138] :264:CALL           v1 = v1(v2, v3, v4)
[140] :264:SETTABLEKS     v0.ImageColor3 = v1
end
[142] :265:GETGLOBAL      v0 = Button11
[144] :265:JUMPXEQKNIL    if v0 ~= nil then -- goto #155
[146] :265:GETGLOBAL      v0 = Button11
[148] :265:GETIMPORT      v1 = Color3.fromRGB
[149] :265:LOADN          v2 = 255
[150] :265:LOADN          v3 = 255
[151] :265:LOADN          v4 = 255
[152] :265:CALL           v1 = v1(v2, v3, v4)
[154] :265:SETTABLEKS     v0.ImageColor3 = v1
end
[156] :266:GETGLOBAL      v0 = Button12
[158] :266:JUMPXEQKNIL    if v0 ~= nil then -- goto #169
[160] :266:GETGLOBAL      v0 = Button12
[162] :266:GETIMPORT      v1 = Color3.fromRGB
[163] :266:LOADN          v2 = 255
[164] :266:LOADN          v3 = 255
[165] :266:LOADN          v4 = 255
[166] :266:CALL           v1 = v1(v2, v3, v4)
[168] :266:SETTABLEKS     v0.ImageColor3 = v1
end
[170] :267:GETGLOBAL      v0 = SP
[172] :267:JUMPXEQKNIL    if v0 ~= nil then -- goto #183
[174] :268:GETGLOBAL      v0 = SP
[176] :268:GETIMPORT      v1 = Color3.fromRGB
[177] :268:LOADN          v2 = 127
[178] :268:LOADN          v3 = 255
[179] :268:LOADN          v4 = 127
[180] :268:CALL           v1 = v1(v2, v3, v4)
[182] :268:SETTABLEKS     v0.ImageColor3 = v1
end
[183] :270:RETURN         return
end
v2 = NewSP
[615] :254:SETGLOBAL      NewSP = v2
[617] :271:GETIMPORT      v3 = game
[618] :271:LOADK          v5 = "UserInputService"
[621] :271:CALL           v3 = v3:GetService(v5)
[623] :271:GETTABLEKS     v2 = v3.TouchStarted
[624] :271:DUPCLOSURE     v4 = function(p19, p20)
-- proto pool id: 12
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 223
-- size constants: 32
-- lineinfo gap: 24
-- max stack size: 7
-- is typed: false
[002] :272:JUMPXEQKB      if p20 == false then -- goto #223
[004] :272:GETGLOBAL      v0 = SP
[006] :272:JUMPXEQKNIL    if v0 ~= nil then -- goto #223
[008] :273:GETGLOBAL      v0 = SP
[010] :273:GETGLOBAL      v1 = Button1
[012] :273:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #25
[014] :273:GETGLOBAL      v0 = Power1
[016] :273:GETIMPORT      v4 = script
[018] :273:GETTABLEKS     v2 = v4.Name
[019] :273:LOADK          v3 = "Power1"
[020] :273:CONCAT         v1 = v2 .. v3
[022] :273:GETIMPORT      v2 = Enum.UserInputState.Begin
[023] :273:LOADNIL        v3 = nil
[024] :273:CALL           v0(v1, v2, v3)
end
[026] :274:GETGLOBAL      v0 = SP
[028] :274:GETGLOBAL      v1 = Button2
[030] :274:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #43
[032] :274:GETGLOBAL      v0 = Power2
[034] :274:GETIMPORT      v4 = script
[036] :274:GETTABLEKS     v2 = v4.Name
[037] :274:LOADK          v3 = "Power2"
[038] :274:CONCAT         v1 = v2 .. v3
[040] :274:GETIMPORT      v2 = Enum.UserInputState.Begin
[041] :274:LOADNIL        v3 = nil
[042] :274:CALL           v0(v1, v2, v3)
end
[044] :275:GETGLOBAL      v0 = SP
[046] :275:GETGLOBAL      v1 = Button3
[048] :275:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #61
[050] :275:GETGLOBAL      v0 = Power3
[052] :275:GETIMPORT      v4 = script
[054] :275:GETTABLEKS     v2 = v4.Name
[055] :275:LOADK          v3 = "Power3"
[056] :275:CONCAT         v1 = v2 .. v3
[058] :275:GETIMPORT      v2 = Enum.UserInputState.Begin
[059] :275:LOADNIL        v3 = nil
[060] :275:CALL           v0(v1, v2, v3)
end
[062] :276:GETGLOBAL      v0 = SP
[064] :276:GETGLOBAL      v1 = Button4
[066] :276:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #79
[068] :276:GETGLOBAL      v0 = Power4
[070] :276:GETIMPORT      v4 = script
[072] :276:GETTABLEKS     v2 = v4.Name
[073] :276:LOADK          v3 = "Power4"
[074] :276:CONCAT         v1 = v2 .. v3
[076] :276:GETIMPORT      v2 = Enum.UserInputState.Begin
[077] :276:LOADNIL        v3 = nil
[078] :276:CALL           v0(v1, v2, v3)
end
[080] :277:GETGLOBAL      v0 = SP
[082] :277:GETGLOBAL      v1 = Button5
[084] :277:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #97
[086] :277:GETGLOBAL      v0 = Power5
[088] :277:GETIMPORT      v4 = script
[090] :277:GETTABLEKS     v2 = v4.Name
[091] :277:LOADK          v3 = "Power5"
[092] :277:CONCAT         v1 = v2 .. v3
[094] :277:GETIMPORT      v2 = Enum.UserInputState.Begin
[095] :277:LOADNIL        v3 = nil
[096] :277:CALL           v0(v1, v2, v3)
end
[098] :278:GETGLOBAL      v0 = SP
[100] :278:GETGLOBAL      v1 = Button6
[102] :278:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #115
[104] :278:GETGLOBAL      v0 = Power6
[106] :278:GETIMPORT      v4 = script
[108] :278:GETTABLEKS     v2 = v4.Name
[109] :278:LOADK          v3 = "Power6"
[110] :278:CONCAT         v1 = v2 .. v3
[112] :278:GETIMPORT      v2 = Enum.UserInputState.Begin
[113] :278:LOADNIL        v3 = nil
[114] :278:CALL           v0(v1, v2, v3)
end
[116] :279:GETGLOBAL      v0 = SP
[118] :279:GETGLOBAL      v1 = Button7
[120] :279:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #133
[122] :279:GETGLOBAL      v0 = Power1
[124] :279:GETIMPORT      v4 = script
[126] :279:GETTABLEKS     v2 = v4.Name
[127] :279:LOADK          v3 = "Power7"
[128] :279:CONCAT         v1 = v2 .. v3
[130] :279:GETIMPORT      v2 = Enum.UserInputState.Begin
[131] :279:LOADNIL        v3 = nil
[132] :279:CALL           v0(v1, v2, v3)
end
[134] :280:GETGLOBAL      v0 = SP
[136] :280:GETGLOBAL      v1 = Button8
[138] :280:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #151
[140] :280:GETGLOBAL      v0 = Power2
[142] :280:GETIMPORT      v4 = script
[144] :280:GETTABLEKS     v2 = v4.Name
[145] :280:LOADK          v3 = "Power8"
[146] :280:CONCAT         v1 = v2 .. v3
[148] :280:GETIMPORT      v2 = Enum.UserInputState.Begin
[149] :280:LOADNIL        v3 = nil
[150] :280:CALL           v0(v1, v2, v3)
end
[152] :281:GETGLOBAL      v0 = SP
[154] :281:GETGLOBAL      v1 = Button9
[156] :281:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #169
[158] :281:GETGLOBAL      v0 = Power3
[160] :281:GETIMPORT      v4 = script
[162] :281:GETTABLEKS     v2 = v4.Name
[163] :281:LOADK          v3 = "Power9"
[164] :281:CONCAT         v1 = v2 .. v3
[166] :281:GETIMPORT      v2 = Enum.UserInputState.Begin
[167] :281:LOADNIL        v3 = nil
[168] :281:CALL           v0(v1, v2, v3)
end
[170] :282:GETGLOBAL      v0 = SP
[172] :282:GETGLOBAL      v1 = Button10
[174] :282:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #187
[176] :282:GETGLOBAL      v0 = Power4
[178] :282:GETIMPORT      v4 = script
[180] :282:GETTABLEKS     v2 = v4.Name
[181] :282:LOADK          v3 = "Power10"
[182] :282:CONCAT         v1 = v2 .. v3
[184] :282:GETIMPORT      v2 = Enum.UserInputState.Begin
[185] :282:LOADNIL        v3 = nil
[186] :282:CALL           v0(v1, v2, v3)
end
[188] :283:GETGLOBAL      v0 = SP
[190] :283:GETGLOBAL      v1 = Button11
[192] :283:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #205
[194] :283:GETGLOBAL      v0 = Power5
[196] :283:GETIMPORT      v4 = script
[198] :283:GETTABLEKS     v2 = v4.Name
[199] :283:LOADK          v3 = "Power11"
[200] :283:CONCAT         v1 = v2 .. v3
[202] :283:GETIMPORT      v2 = Enum.UserInputState.Begin
[203] :283:LOADNIL        v3 = nil
[204] :283:CALL           v0(v1, v2, v3)
end
[206] :284:GETGLOBAL      v0 = SP
[208] :284:GETGLOBAL      v1 = Button12
[210] :284:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #223
[212] :284:GETGLOBAL      v0 = Power6
[214] :284:GETIMPORT      v4 = script
[216] :284:GETTABLEKS     v2 = v4.Name
[217] :284:LOADK          v3 = "Power12"
[218] :284:CONCAT         v1 = v2 .. v3
[220] :284:GETIMPORT      v2 = Enum.UserInputState.Begin
[221] :284:LOADNIL        v3 = nil
[222] :284:CALL           v0(v1, v2, v3)
end
end
end
[223] :286:RETURN         return
end
[627] :271:CALL           v2:Connect(v4)
[629] :287:GETIMPORT      v3 = game
[630] :287:LOADK          v5 = "UserInputService"
[633] :287:CALL           v3 = v3:GetService(v5)
[635] :287:GETTABLEKS     v2 = v3.TouchEnded
[636] :287:DUPCLOSURE     v4 = function(p21, p22)
-- proto pool id: 13
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 223
-- size constants: 32
-- lineinfo gap: 24
-- max stack size: 7
-- is typed: false
[002] :288:JUMPXEQKB      if p22 == false then -- goto #223
[004] :288:GETGLOBAL      v0 = SP
[006] :288:JUMPXEQKNIL    if v0 ~= nil then -- goto #223
[008] :289:GETGLOBAL      v0 = SP
[010] :289:GETGLOBAL      v1 = Button1
[012] :289:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #25
[014] :289:GETGLOBAL      v0 = Power1
[016] :289:GETIMPORT      v4 = script
[018] :289:GETTABLEKS     v2 = v4.Name
[019] :289:LOADK          v3 = "Power1"
[020] :289:CONCAT         v1 = v2 .. v3
[022] :289:GETIMPORT      v2 = Enum.UserInputState.End
[023] :289:LOADNIL        v3 = nil
[024] :289:CALL           v0(v1, v2, v3)
end
[026] :290:GETGLOBAL      v0 = SP
[028] :290:GETGLOBAL      v1 = Button2
[030] :290:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #43
[032] :290:GETGLOBAL      v0 = Power2
[034] :290:GETIMPORT      v4 = script
[036] :290:GETTABLEKS     v2 = v4.Name
[037] :290:LOADK          v3 = "Power2"
[038] :290:CONCAT         v1 = v2 .. v3
[040] :290:GETIMPORT      v2 = Enum.UserInputState.End
[041] :290:LOADNIL        v3 = nil
[042] :290:CALL           v0(v1, v2, v3)
end
[044] :291:GETGLOBAL      v0 = SP
[046] :291:GETGLOBAL      v1 = Button3
[048] :291:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #61
[050] :291:GETGLOBAL      v0 = Power3
[052] :291:GETIMPORT      v4 = script
[054] :291:GETTABLEKS     v2 = v4.Name
[055] :291:LOADK          v3 = "Power3"
[056] :291:CONCAT         v1 = v2 .. v3
[058] :291:GETIMPORT      v2 = Enum.UserInputState.End
[059] :291:LOADNIL        v3 = nil
[060] :291:CALL           v0(v1, v2, v3)
end
[062] :292:GETGLOBAL      v0 = SP
[064] :292:GETGLOBAL      v1 = Button4
[066] :292:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #79
[068] :292:GETGLOBAL      v0 = Power4
[070] :292:GETIMPORT      v4 = script
[072] :292:GETTABLEKS     v2 = v4.Name
[073] :292:LOADK          v3 = "Power4"
[074] :292:CONCAT         v1 = v2 .. v3
[076] :292:GETIMPORT      v2 = Enum.UserInputState.End
[077] :292:LOADNIL        v3 = nil
[078] :292:CALL           v0(v1, v2, v3)
end
[080] :293:GETGLOBAL      v0 = SP
[082] :293:GETGLOBAL      v1 = Button5
[084] :293:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #97
[086] :293:GETGLOBAL      v0 = Power5
[088] :293:GETIMPORT      v4 = script
[090] :293:GETTABLEKS     v2 = v4.Name
[091] :293:LOADK          v3 = "Power5"
[092] :293:CONCAT         v1 = v2 .. v3
[094] :293:GETIMPORT      v2 = Enum.UserInputState.End
[095] :293:LOADNIL        v3 = nil
[096] :293:CALL           v0(v1, v2, v3)
end
[098] :294:GETGLOBAL      v0 = SP
[100] :294:GETGLOBAL      v1 = Button6
[102] :294:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #115
[104] :294:GETGLOBAL      v0 = Power6
[106] :294:GETIMPORT      v4 = script
[108] :294:GETTABLEKS     v2 = v4.Name
[109] :294:LOADK          v3 = "Power6"
[110] :294:CONCAT         v1 = v2 .. v3
[112] :294:GETIMPORT      v2 = Enum.UserInputState.End
[113] :294:LOADNIL        v3 = nil
[114] :294:CALL           v0(v1, v2, v3)
end
[116] :295:GETGLOBAL      v0 = SP
[118] :295:GETGLOBAL      v1 = Button7
[120] :295:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #133
[122] :295:GETGLOBAL      v0 = Power1
[124] :295:GETIMPORT      v4 = script
[126] :295:GETTABLEKS     v2 = v4.Name
[127] :295:LOADK          v3 = "Power7"
[128] :295:CONCAT         v1 = v2 .. v3
[130] :295:GETIMPORT      v2 = Enum.UserInputState.End
[131] :295:LOADNIL        v3 = nil
[132] :295:CALL           v0(v1, v2, v3)
end
[134] :296:GETGLOBAL      v0 = SP
[136] :296:GETGLOBAL      v1 = Button8
[138] :296:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #151
[140] :296:GETGLOBAL      v0 = Power2
[142] :296:GETIMPORT      v4 = script
[144] :296:GETTABLEKS     v2 = v4.Name
[145] :296:LOADK          v3 = "Power8"
[146] :296:CONCAT         v1 = v2 .. v3
[148] :296:GETIMPORT      v2 = Enum.UserInputState.End
[149] :296:LOADNIL        v3 = nil
[150] :296:CALL           v0(v1, v2, v3)
end
[152] :297:GETGLOBAL      v0 = SP
[154] :297:GETGLOBAL      v1 = Button9
[156] :297:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #169
[158] :297:GETGLOBAL      v0 = Power3
[160] :297:GETIMPORT      v4 = script
[162] :297:GETTABLEKS     v2 = v4.Name
[163] :297:LOADK          v3 = "Power9"
[164] :297:CONCAT         v1 = v2 .. v3
[166] :297:GETIMPORT      v2 = Enum.UserInputState.End
[167] :297:LOADNIL        v3 = nil
[168] :297:CALL           v0(v1, v2, v3)
end
[170] :298:GETGLOBAL      v0 = SP
[172] :298:GETGLOBAL      v1 = Button10
[174] :298:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #187
[176] :298:GETGLOBAL      v0 = Power4
[178] :298:GETIMPORT      v4 = script
[180] :298:GETTABLEKS     v2 = v4.Name
[181] :298:LOADK          v3 = "Power10"
[182] :298:CONCAT         v1 = v2 .. v3
[184] :298:GETIMPORT      v2 = Enum.UserInputState.End
[185] :298:LOADNIL        v3 = nil
[186] :298:CALL           v0(v1, v2, v3)
end
[188] :299:GETGLOBAL      v0 = SP
[190] :299:GETGLOBAL      v1 = Button11
[192] :299:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #205
[194] :299:GETGLOBAL      v0 = Power5
[196] :299:GETIMPORT      v4 = script
[198] :299:GETTABLEKS     v2 = v4.Name
[199] :299:LOADK          v3 = "Power11"
[200] :299:CONCAT         v1 = v2 .. v3
[202] :299:GETIMPORT      v2 = Enum.UserInputState.End
[203] :299:LOADNIL        v3 = nil
[204] :299:CALL           v0(v1, v2, v3)
end
[206] :300:GETGLOBAL      v0 = SP
[208] :300:GETGLOBAL      v1 = Button12
[210] :300:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #223
[212] :300:GETGLOBAL      v0 = Power6
[214] :300:GETIMPORT      v4 = script
[216] :300:GETTABLEKS     v2 = v4.Name
[217] :300:LOADK          v3 = "Power12"
[218] :300:CONCAT         v1 = v2 .. v3
[220] :300:GETIMPORT      v2 = Enum.UserInputState.End
[221] :300:LOADNIL        v3 = nil
[222] :300:CALL           v0(v1, v2, v3)
end
end
end
[223] :302:RETURN         return
end
[639] :287:CALL           v2:Connect(v4)
[640] :303:DUPCLOSURE     
local function Update(p23, p24)
-- proto pool id: 26
-- num upvalues: 1
-- num inner protos: 12
-- size instructions: 1156
-- size constants: 84
-- lineinfo gap: 24
-- max stack size: 15
-- is typed: false
[001] :304:GETUPVAL       v1 = u_v0
[003] :304:GETTABLEKS     v0 = v1.Data
[004] :304:LOADK          v2 = "DevilFruit"
[007] :304:CALL           v0 = v0:FindFirstChild(v2)
[008] :305:GETUPVAL       v2 = u_v0
[010] :305:GETTABLEKS     v1 = v2.Data
[011] :305:LOADK          v3 = "DevilFruit2"
[014] :305:CALL           v1 = v1:FindFirstChild(v3)
[016] :306:JUMPXEQKN      if p23 == 1 then -- goto #586
[018] :307:GETIMPORT      v2 = game
[019] :307:LOADK          v4 = "ContextActionService"
[022] :307:CALL           v2 = v2:GetService(v4)
[024] :307:GETIMPORT      v7 = script
[026] :307:GETTABLEKS     v5 = v7.Name
[027] :307:LOADK          v6 = "Power1"
[028] :307:CONCAT         v4 = v5 .. v6
[031] :307:CALL           v2:UnbindAction(v4)
[033] :308:GETIMPORT      v2 = game
[034] :308:LOADK          v4 = "ContextActionService"
[037] :308:CALL           v2 = v2:GetService(v4)
[039] :308:GETIMPORT      v7 = script
[041] :308:GETTABLEKS     v5 = v7.Name
[042] :308:LOADK          v6 = "Power2"
[043] :308:CONCAT         v4 = v5 .. v6
[046] :308:CALL           v2:UnbindAction(v4)
[048] :309:GETIMPORT      v2 = game
[049] :309:LOADK          v4 = "ContextActionService"
[052] :309:CALL           v2 = v2:GetService(v4)
[054] :309:GETIMPORT      v7 = script
[056] :309:GETTABLEKS     v5 = v7.Name
[057] :309:LOADK          v6 = "Power3"
[058] :309:CONCAT         v4 = v5 .. v6
[061] :309:CALL           v2:UnbindAction(v4)
[063] :310:GETIMPORT      v2 = game
[064] :310:LOADK          v4 = "ContextActionService"
[067] :310:CALL           v2 = v2:GetService(v4)
[069] :310:GETIMPORT      v7 = script
[071] :310:GETTABLEKS     v5 = v7.Name
[072] :310:LOADK          v6 = "Power4"
[073] :310:CONCAT         v4 = v5 .. v6
[076] :310:CALL           v2:UnbindAction(v4)
[078] :311:GETIMPORT      v2 = game
[079] :311:LOADK          v4 = "ContextActionService"
[082] :311:CALL           v2 = v2:GetService(v4)
[084] :311:GETIMPORT      v7 = script
[086] :311:GETTABLEKS     v5 = v7.Name
[087] :311:LOADK          v6 = "Power5"
[088] :311:CONCAT         v4 = v5 .. v6
[091] :311:CALL           v2:UnbindAction(v4)
[093] :312:GETIMPORT      v2 = game
[094] :312:LOADK          v4 = "ContextActionService"
[097] :312:CALL           v2 = v2:GetService(v4)
[099] :312:GETIMPORT      v7 = script
[101] :312:GETTABLEKS     v5 = v7.Name
[102] :312:LOADK          v6 = "Power6"
[103] :312:CONCAT         v4 = v5 .. v6
[106] :312:CALL           v2:UnbindAction(v4)
[108] :313:GETGLOBAL      v2 = Button1
[110] :313:JUMPXEQKNIL    if v2 ~= nil then -- goto #116
[112] :313:GETGLOBAL      v2 = Button1
[115] :313:CALL           v2:Destroy()
end
[117] :314:GETGLOBAL      v2 = Button2
[119] :314:JUMPXEQKNIL    if v2 ~= nil then -- goto #125
[121] :314:GETGLOBAL      v2 = Button2
[124] :314:CALL           v2:Destroy()
end
[126] :315:GETGLOBAL      v2 = Button3
[128] :315:JUMPXEQKNIL    if v2 ~= nil then -- goto #134
[130] :315:GETGLOBAL      v2 = Button3
[133] :315:CALL           v2:Destroy()
end
[135] :316:GETGLOBAL      v2 = Button4
[137] :316:JUMPXEQKNIL    if v2 ~= nil then -- goto #143
[139] :316:GETGLOBAL      v2 = Button4
[142] :316:CALL           v2:Destroy()
end
[144] :317:GETGLOBAL      v2 = Button5
[146] :317:JUMPXEQKNIL    if v2 ~= nil then -- goto #152
[148] :317:GETGLOBAL      v2 = Button5
[151] :317:CALL           v2:Destroy()
end
[153] :318:GETGLOBAL      v2 = Button6
[155] :318:JUMPXEQKNIL    if v2 ~= nil then -- goto #161
[157] :318:GETGLOBAL      v2 = Button6
[160] :318:CALL           v2:Destroy()
end
[162] :319:GETIMPORT      v3 = script
[164] :319:GETTABLEKS     v2 = v3.Name
[166] :319:JUMPIFNOTEQ    if p24 ~= v2 then -- goto #1156
[168] :320:GETIMPORT      v2 = print
[170] :320:GETGLOBAL      v9 = player
[172] :320:GETTABLEKS     v4 = v9.Name
[173] :320:LOADK          v5 = " - Devil Fruit "
[174] :320:MOVE           v6 = p23
[175] :320:LOADK          v7 = " = "
[176] :320:MOVE           v8 = p24
[177] :320:CONCAT         v3 = v4 .. v5 .. v6 .. v7 .. v8
[178] :320:CALL           v2(v3)
[180] :321:GETIMPORT      v2 = game
[181] :321:LOADK          v4 = "ContextActionService"
[184] :321:CALL           v2 = v2:GetService(v4)
[186] :321:GETIMPORT      v7 = script
[188] :321:GETTABLEKS     v5 = v7.Name
[189] :321:LOADK          v6 = "Power1"
[190] :321:CONCAT         v4 = v5 .. v6
[192] :321:GETGLOBAL      v5 = Power1
[193] :321:LOADB          v6 = false
[195] :321:GETIMPORT      v8 = Enum.KeyCode
[196] :321:GETUPVAL       v12 = u_v0
[198] :321:GETTABLEKS     v11 = v12.Data
[200] :321:GETTABLEKS     v10 = v11.Basic_DF1A
[202] :321:GETTABLEKS     v9 = v10.Value
[203] :321:GETTABLE       v7 = v8[v9]
[206] :321:CALL           v2:BindAction(v4, v5, v6, v7)
[208] :322:GETIMPORT      v2 = game
[209] :322:LOADK          v4 = "ContextActionService"
[212] :322:CALL           v2 = v2:GetService(v4)
[214] :322:GETIMPORT      v7 = script
[216] :322:GETTABLEKS     v5 = v7.Name
[217] :322:LOADK          v6 = "Power2"
[218] :322:CONCAT         v4 = v5 .. v6
[220] :322:GETGLOBAL      v5 = Power2
[221] :322:LOADB          v6 = false
[223] :322:GETIMPORT      v8 = Enum.KeyCode
[224] :322:GETUPVAL       v12 = u_v0
[226] :322:GETTABLEKS     v11 = v12.Data
[228] :322:GETTABLEKS     v10 = v11.Basic_DF1B
[230] :322:GETTABLEKS     v9 = v10.Value
[231] :322:GETTABLE       v7 = v8[v9]
[234] :322:CALL           v2:BindAction(v4, v5, v6, v7)
[236] :323:GETIMPORT      v2 = game
[237] :323:LOADK          v4 = "ContextActionService"
[240] :323:CALL           v2 = v2:GetService(v4)
[242] :323:GETIMPORT      v7 = script
[244] :323:GETTABLEKS     v5 = v7.Name
[245] :323:LOADK          v6 = "Power3"
[246] :323:CONCAT         v4 = v5 .. v6
[248] :323:GETGLOBAL      v5 = Power3
[249] :323:LOADB          v6 = false
[251] :323:GETIMPORT      v8 = Enum.KeyCode
[252] :323:GETUPVAL       v12 = u_v0
[254] :323:GETTABLEKS     v11 = v12.Data
[256] :323:GETTABLEKS     v10 = v11.Basic_DF1C
[258] :323:GETTABLEKS     v9 = v10.Value
[259] :323:GETTABLE       v7 = v8[v9]
[262] :323:CALL           v2:BindAction(v4, v5, v6, v7)
[264] :324:GETIMPORT      v2 = game
[265] :324:LOADK          v4 = "ContextActionService"
[268] :324:CALL           v2 = v2:GetService(v4)
[270] :324:GETIMPORT      v7 = script
[272] :324:GETTABLEKS     v5 = v7.Name
[273] :324:LOADK          v6 = "Power4"
[274] :324:CONCAT         v4 = v5 .. v6
[276] :324:GETGLOBAL      v5 = Power4
[277] :324:LOADB          v6 = false
[279] :324:GETIMPORT      v8 = Enum.KeyCode
[280] :324:GETUPVAL       v12 = u_v0
[282] :324:GETTABLEKS     v11 = v12.Data
[284] :324:GETTABLEKS     v10 = v11.Basic_DF1D
[286] :324:GETTABLEKS     v9 = v10.Value
[287] :324:GETTABLE       v7 = v8[v9]
[290] :324:CALL           v2:BindAction(v4, v5, v6, v7)
[292] :325:GETIMPORT      v2 = game
[293] :325:LOADK          v4 = "ContextActionService"
[296] :325:CALL           v2 = v2:GetService(v4)
[298] :325:GETIMPORT      v7 = script
[300] :325:GETTABLEKS     v5 = v7.Name
[301] :325:LOADK          v6 = "Power5"
[302] :325:CONCAT         v4 = v5 .. v6
[304] :325:GETGLOBAL      v5 = Power5
[305] :325:LOADB          v6 = false
[307] :325:GETIMPORT      v8 = Enum.KeyCode
[308] :325:GETUPVAL       v12 = u_v0
[310] :325:GETTABLEKS     v11 = v12.Data
[312] :325:GETTABLEKS     v10 = v11.Basic_DF1E
[314] :325:GETTABLEKS     v9 = v10.Value
[315] :325:GETTABLE       v7 = v8[v9]
[318] :325:CALL           v2:BindAction(v4, v5, v6, v7)
[320] :326:GETIMPORT      v2 = game
[321] :326:LOADK          v4 = "ContextActionService"
[324] :326:CALL           v2 = v2:GetService(v4)
[326] :326:GETIMPORT      v7 = script
[328] :326:GETTABLEKS     v5 = v7.Name
[329] :326:LOADK          v6 = "Power6"
[330] :326:CONCAT         v4 = v5 .. v6
[332] :326:GETGLOBAL      v5 = Power6
[333] :326:LOADB          v6 = false
[335] :326:GETIMPORT      v8 = Enum.KeyCode
[336] :326:GETUPVAL       v12 = u_v0
[338] :326:GETTABLEKS     v11 = v12.Data
[340] :326:GETTABLEKS     v10 = v11.Basic_DF1F
[342] :326:GETTABLEKS     v9 = v10.Value
[343] :326:GETTABLE       v7 = v8[v9]
[346] :326:CALL           v2:BindAction(v4, v5, v6, v7)
[348] :327:GETIMPORT      v3 = game
[349] :327:LOADK          v5 = "UserInputService"
[352] :327:CALL           v3 = v3:GetService(v5)
[354] :327:GETTABLEKS     v2 = v3.TouchEnabled
[356] :327:JUMPXEQKB      if v2 == true then -- goto #1156
[358] :328:GETGLOBAL      v5 = player
[360] :328:GETTABLEKS     v4 = v5.PlayerGui
[362] :328:GETTABLEKS     v3 = v4.MobileContext
[364] :328:GETTABLEKS     v2 = v3.Button
[367] :328:CALL           v2 = v2:Clone()
[369] :328:SETGLOBAL      Button1 = v2
[371] :329:GETGLOBAL      v5 = player
[373] :329:GETTABLEKS     v4 = v5.PlayerGui
[375] :329:GETTABLEKS     v3 = v4.MobileContext
[377] :329:GETTABLEKS     v2 = v3.Button
[380] :329:CALL           v2 = v2:Clone()
[382] :329:SETGLOBAL      Button2 = v2
[384] :330:GETGLOBAL      v5 = player
[386] :330:GETTABLEKS     v4 = v5.PlayerGui
[388] :330:GETTABLEKS     v3 = v4.MobileContext
[390] :330:GETTABLEKS     v2 = v3.Button
[393] :330:CALL           v2 = v2:Clone()
[395] :330:SETGLOBAL      Button3 = v2
[397] :331:GETGLOBAL      v5 = player
[399] :331:GETTABLEKS     v4 = v5.PlayerGui
[401] :331:GETTABLEKS     v3 = v4.MobileContext
[403] :331:GETTABLEKS     v2 = v3.Button
[406] :331:CALL           v2 = v2:Clone()
[408] :331:SETGLOBAL      Button4 = v2
[410] :332:GETGLOBAL      v5 = player
[412] :332:GETTABLEKS     v4 = v5.PlayerGui
[414] :332:GETTABLEKS     v3 = v4.MobileContext
[416] :332:GETTABLEKS     v2 = v3.Button
[419] :332:CALL           v2 = v2:Clone()
[421] :332:SETGLOBAL      Button5 = v2
[423] :333:GETGLOBAL      v5 = player
[425] :333:GETTABLEKS     v4 = v5.PlayerGui
[427] :333:GETTABLEKS     v3 = v4.MobileContext
[429] :333:GETTABLEKS     v2 = v3.Button
[432] :333:CALL           v2 = v2:Clone()
[434] :333:SETGLOBAL      Button6 = v2
[436] :334:GETGLOBAL      v2 = Button1
[437] :334:LOADK          v3 = "Power1"
[439] :334:SETTABLEKS     v2.Name = v3
[441] :335:GETGLOBAL      v2 = Button2
[442] :335:LOADK          v3 = "Power2"
[444] :335:SETTABLEKS     v2.Name = v3
[446] :336:GETGLOBAL      v2 = Button3
[447] :336:LOADK          v3 = "Power3"
[449] :336:SETTABLEKS     v2.Name = v3
[451] :337:GETGLOBAL      v2 = Button4
[452] :337:LOADK          v3 = "Power4"
[454] :337:SETTABLEKS     v2.Name = v3
[456] :338:GETGLOBAL      v2 = Button5
[457] :338:LOADK          v3 = "Power5"
[459] :338:SETTABLEKS     v2.Name = v3
[461] :339:GETGLOBAL      v2 = Button6
[462] :339:LOADK          v3 = "Power6"
[464] :339:SETTABLEKS     v2.Name = v3
[466] :340:GETGLOBAL      v2 = Button1
[468] :340:GETGLOBAL      v6 = player
[470] :340:GETTABLEKS     v5 = v6.PlayerGui
[472] :340:GETTABLEKS     v4 = v5.MobileContext
[474] :340:GETTABLEKS     v3 = v4.ContextActions1
[476] :340:SETTABLEKS     v2.Parent = v3
[478] :341:GETGLOBAL      v2 = Button2
[480] :341:GETGLOBAL      v6 = player
[482] :341:GETTABLEKS     v5 = v6.PlayerGui
[484] :341:GETTABLEKS     v4 = v5.MobileContext
[486] :341:GETTABLEKS     v3 = v4.ContextActions1
[488] :341:SETTABLEKS     v2.Parent = v3
[490] :342:GETGLOBAL      v2 = Button3
[492] :342:GETGLOBAL      v6 = player
[494] :342:GETTABLEKS     v5 = v6.PlayerGui
[496] :342:GETTABLEKS     v4 = v5.MobileContext
[498] :342:GETTABLEKS     v3 = v4.ContextActions1
[500] :342:SETTABLEKS     v2.Parent = v3
[502] :343:GETGLOBAL      v2 = Button4
[504] :343:GETGLOBAL      v6 = player
[506] :343:GETTABLEKS     v5 = v6.PlayerGui
[508] :343:GETTABLEKS     v4 = v5.MobileContext
[510] :343:GETTABLEKS     v3 = v4.ContextActions1
[512] :343:SETTABLEKS     v2.Parent = v3
[514] :344:GETGLOBAL      v2 = Button5
[516] :344:GETGLOBAL      v6 = player
[518] :344:GETTABLEKS     v5 = v6.PlayerGui
[520] :344:GETTABLEKS     v4 = v5.MobileContext
[522] :344:GETTABLEKS     v3 = v4.ContextActions1
[524] :344:SETTABLEKS     v2.Parent = v3
[526] :345:GETGLOBAL      v2 = Button6
[528] :345:GETGLOBAL      v6 = player
[530] :345:GETTABLEKS     v5 = v6.PlayerGui
[532] :345:GETTABLEKS     v4 = v5.MobileContext
[534] :345:GETTABLEKS     v3 = v4.ContextActions1
[536] :345:SETTABLEKS     v2.Parent = v3
[538] :346:GETGLOBAL      v3 = Button1
[540] :346:GETTABLEKS     v2 = v3.MouseButton1Click
[541] :346:DUPCLOSURE     v4 = function()
-- proto pool id: 14
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :346:GETGLOBAL      v0 = SP
[004] :346:GETGLOBAL      v1 = Button1
[006] :346:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :346:LOADNIL        v0 = nil
[009] :346:SETGLOBAL      SP = v0
[010] :346:JUMP           -- jump to #14
end
[012] :346:GETGLOBAL      v0 = Button1
[014] :346:SETGLOBAL      SP = v0
[016] :346:GETGLOBAL      v0 = NewSP
[017] :346:CALL           v0()
[018] :346:RETURN         return
end
[544] :346:CALL           v2:Connect(v4)
[546] :347:GETGLOBAL      v3 = Button2
[548] :347:GETTABLEKS     v2 = v3.MouseButton1Click
[549] :347:DUPCLOSURE     v4 = function()
-- proto pool id: 15
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :347:GETGLOBAL      v0 = SP
[004] :347:GETGLOBAL      v1 = Button2
[006] :347:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :347:LOADNIL        v0 = nil
[009] :347:SETGLOBAL      SP = v0
[010] :347:JUMP           -- jump to #14
end
[012] :347:GETGLOBAL      v0 = Button2
[014] :347:SETGLOBAL      SP = v0
[016] :347:GETGLOBAL      v0 = NewSP
[017] :347:CALL           v0()
[018] :347:RETURN         return
end
[552] :347:CALL           v2:Connect(v4)
[554] :348:GETGLOBAL      v3 = Button3
[556] :348:GETTABLEKS     v2 = v3.MouseButton1Click
[557] :348:DUPCLOSURE     v4 = function()
-- proto pool id: 16
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :348:GETGLOBAL      v0 = SP
[004] :348:GETGLOBAL      v1 = Button3
[006] :348:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :348:LOADNIL        v0 = nil
[009] :348:SETGLOBAL      SP = v0
[010] :348:JUMP           -- jump to #14
end
[012] :348:GETGLOBAL      v0 = Button3
[014] :348:SETGLOBAL      SP = v0
[016] :348:GETGLOBAL      v0 = NewSP
[017] :348:CALL           v0()
[018] :348:RETURN         return
end
[560] :348:CALL           v2:Connect(v4)
[562] :349:GETGLOBAL      v3 = Button4
[564] :349:GETTABLEKS     v2 = v3.MouseButton1Click
[565] :349:DUPCLOSURE     v4 = function()
-- proto pool id: 17
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :349:GETGLOBAL      v0 = SP
[004] :349:GETGLOBAL      v1 = Button4
[006] :349:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :349:LOADNIL        v0 = nil
[009] :349:SETGLOBAL      SP = v0
[010] :349:JUMP           -- jump to #14
end
[012] :349:GETGLOBAL      v0 = Button4
[014] :349:SETGLOBAL      SP = v0
[016] :349:GETGLOBAL      v0 = NewSP
[017] :349:CALL           v0()
[018] :349:RETURN         return
end
[568] :349:CALL           v2:Connect(v4)
[570] :350:GETGLOBAL      v3 = Button5
[572] :350:GETTABLEKS     v2 = v3.MouseButton1Click
[573] :350:DUPCLOSURE     v4 = function()
-- proto pool id: 18
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :350:GETGLOBAL      v0 = SP
[004] :350:GETGLOBAL      v1 = Button5
[006] :350:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :350:LOADNIL        v0 = nil
[009] :350:SETGLOBAL      SP = v0
[010] :350:JUMP           -- jump to #14
end
[012] :350:GETGLOBAL      v0 = Button5
[014] :350:SETGLOBAL      SP = v0
[016] :350:GETGLOBAL      v0 = NewSP
[017] :350:CALL           v0()
[018] :350:RETURN         return
end
[576] :350:CALL           v2:Connect(v4)
[578] :351:GETGLOBAL      v3 = Button6
[580] :351:GETTABLEKS     v2 = v3.MouseButton1Click
[581] :351:DUPCLOSURE     v4 = function()
-- proto pool id: 19
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :351:GETGLOBAL      v0 = SP
[004] :351:GETGLOBAL      v1 = Button6
[006] :351:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :351:LOADNIL        v0 = nil
[009] :351:SETGLOBAL      SP = v0
[010] :351:JUMP           -- jump to #14
end
[012] :351:GETGLOBAL      v0 = Button6
[014] :351:SETGLOBAL      SP = v0
[016] :351:GETGLOBAL      v0 = NewSP
[017] :351:CALL           v0()
[018] :351:RETURN         return
end
[584] :351:CALL           v2:Connect(v4)
[585] :351:RETURN         return
end
[587] :354:JUMPXEQKN      if p23 == 2 then -- goto #1156
[589] :355:GETIMPORT      v2 = print
[591] :355:GETGLOBAL      v9 = player
[593] :355:GETTABLEKS     v4 = v9.Name
[594] :355:LOADK          v5 = " - Devil Fruit "
[595] :355:MOVE           v6 = p23
[596] :355:LOADK          v7 = " = "
[597] :355:MOVE           v8 = p24
[598] :355:CONCAT         v3 = v4 .. v5 .. v6 .. v7 .. v8
[599] :355:CALL           v2(v3)
[601] :356:GETIMPORT      v2 = game
[602] :356:LOADK          v4 = "ContextActionService"
[605] :356:CALL           v2 = v2:GetService(v4)
[607] :356:GETIMPORT      v7 = script
[609] :356:GETTABLEKS     v5 = v7.Name
[610] :356:LOADK          v6 = "Power7"
[611] :356:CONCAT         v4 = v5 .. v6
[614] :356:CALL           v2:UnbindAction(v4)
[616] :357:GETIMPORT      v2 = game
[617] :357:LOADK          v4 = "ContextActionService"
[620] :357:CALL           v2 = v2:GetService(v4)
[622] :357:GETIMPORT      v7 = script
[624] :357:GETTABLEKS     v5 = v7.Name
[625] :357:LOADK          v6 = "Power8"
[626] :357:CONCAT         v4 = v5 .. v6
[629] :357:CALL           v2:UnbindAction(v4)
[631] :358:GETIMPORT      v2 = game
[632] :358:LOADK          v4 = "ContextActionService"
[635] :358:CALL           v2 = v2:GetService(v4)
[637] :358:GETIMPORT      v7 = script
[639] :358:GETTABLEKS     v5 = v7.Name
[640] :358:LOADK          v6 = "Power9"
[641] :358:CONCAT         v4 = v5 .. v6
[644] :358:CALL           v2:UnbindAction(v4)
[646] :359:GETIMPORT      v2 = game
[647] :359:LOADK          v4 = "ContextActionService"
[650] :359:CALL           v2 = v2:GetService(v4)
[652] :359:GETIMPORT      v7 = script
[654] :359:GETTABLEKS     v5 = v7.Name
[655] :359:LOADK          v6 = "Power10"
[656] :359:CONCAT         v4 = v5 .. v6
[659] :359:CALL           v2:UnbindAction(v4)
[661] :360:GETIMPORT      v2 = game
[662] :360:LOADK          v4 = "ContextActionService"
[665] :360:CALL           v2 = v2:GetService(v4)
[667] :360:GETIMPORT      v7 = script
[669] :360:GETTABLEKS     v5 = v7.Name
[670] :360:LOADK          v6 = "Power11"
[671] :360:CONCAT         v4 = v5 .. v6
[674] :360:CALL           v2:UnbindAction(v4)
[676] :361:GETIMPORT      v2 = game
[677] :361:LOADK          v4 = "ContextActionService"
[680] :361:CALL           v2 = v2:GetService(v4)
[682] :361:GETIMPORT      v7 = script
[684] :361:GETTABLEKS     v5 = v7.Name
[685] :361:LOADK          v6 = "Power12"
[686] :361:CONCAT         v4 = v5 .. v6
[689] :361:CALL           v2:UnbindAction(v4)
[691] :362:GETGLOBAL      v2 = Button7
[693] :362:JUMPXEQKNIL    if v2 ~= nil then -- goto #699
[695] :362:GETGLOBAL      v2 = Button7
[698] :362:CALL           v2:Destroy()
end
[700] :363:GETGLOBAL      v2 = Button8
[702] :363:JUMPXEQKNIL    if v2 ~= nil then -- goto #708
[704] :363:GETGLOBAL      v2 = Button8
[707] :363:CALL           v2:Destroy()
end
[709] :364:GETGLOBAL      v2 = Button9
[711] :364:JUMPXEQKNIL    if v2 ~= nil then -- goto #717
[713] :364:GETGLOBAL      v2 = Button9
[716] :364:CALL           v2:Destroy()
end
[718] :365:GETGLOBAL      v2 = Button10
[720] :365:JUMPXEQKNIL    if v2 ~= nil then -- goto #726
[722] :365:GETGLOBAL      v2 = Button10
[725] :365:CALL           v2:Destroy()
end
[727] :366:GETGLOBAL      v2 = Button11
[729] :366:JUMPXEQKNIL    if v2 ~= nil then -- goto #735
[731] :366:GETGLOBAL      v2 = Button11
[734] :366:CALL           v2:Destroy()
end
[736] :367:GETGLOBAL      v2 = Button12
[738] :367:JUMPXEQKNIL    if v2 ~= nil then -- goto #744
[740] :367:GETGLOBAL      v2 = Button12
[743] :367:CALL           v2:Destroy()
end
[745] :368:GETIMPORT      v3 = script
[747] :368:GETTABLEKS     v2 = v3.Name
[749] :368:JUMPIFNOTEQ    if p24 ~= v2 then -- goto #1156
[751] :369:GETIMPORT      v2 = game
[752] :369:LOADK          v4 = "ContextActionService"
[755] :369:CALL           v2 = v2:GetService(v4)
[757] :369:GETIMPORT      v7 = script
[759] :369:GETTABLEKS     v5 = v7.Name
[760] :369:LOADK          v6 = "Power7"
[761] :369:CONCAT         v4 = v5 .. v6
[763] :369:GETGLOBAL      v5 = Power1
[764] :369:LOADB          v6 = false
[766] :369:GETIMPORT      v8 = Enum.KeyCode
[767] :369:GETUPVAL       v12 = u_v0
[769] :369:GETTABLEKS     v11 = v12.Data
[771] :369:GETTABLEKS     v10 = v11.Basic_DF2A
[773] :369:GETTABLEKS     v9 = v10.Value
[774] :369:GETTABLE       v7 = v8[v9]
[777] :369:CALL           v2:BindAction(v4, v5, v6, v7)
[779] :370:GETIMPORT      v2 = game
[780] :370:LOADK          v4 = "ContextActionService"
[783] :370:CALL           v2 = v2:GetService(v4)
[785] :370:GETIMPORT      v7 = script
[787] :370:GETTABLEKS     v5 = v7.Name
[788] :370:LOADK          v6 = "Power8"
[789] :370:CONCAT         v4 = v5 .. v6
[791] :370:GETGLOBAL      v5 = Power2
[792] :370:LOADB          v6 = false
[794] :370:GETIMPORT      v8 = Enum.KeyCode
[795] :370:GETUPVAL       v12 = u_v0
[797] :370:GETTABLEKS     v11 = v12.Data
[799] :370:GETTABLEKS     v10 = v11.Basic_DF2B
[801] :370:GETTABLEKS     v9 = v10.Value
[802] :370:GETTABLE       v7 = v8[v9]
[805] :370:CALL           v2:BindAction(v4, v5, v6, v7)
[807] :371:GETIMPORT      v2 = game
[808] :371:LOADK          v4 = "ContextActionService"
[811] :371:CALL           v2 = v2:GetService(v4)
[813] :371:GETIMPORT      v7 = script
[815] :371:GETTABLEKS     v5 = v7.Name
[816] :371:LOADK          v6 = "Power9"
[817] :371:CONCAT         v4 = v5 .. v6
[819] :371:GETGLOBAL      v5 = Power3
[820] :371:LOADB          v6 = false
[822] :371:GETIMPORT      v8 = Enum.KeyCode
[823] :371:GETUPVAL       v12 = u_v0
[825] :371:GETTABLEKS     v11 = v12.Data
[827] :371:GETTABLEKS     v10 = v11.Basic_DF2C
[829] :371:GETTABLEKS     v9 = v10.Value
[830] :371:GETTABLE       v7 = v8[v9]
[833] :371:CALL           v2:BindAction(v4, v5, v6, v7)
[835] :372:GETIMPORT      v2 = game
[836] :372:LOADK          v4 = "ContextActionService"
[839] :372:CALL           v2 = v2:GetService(v4)
[841] :372:GETIMPORT      v7 = script
[843] :372:GETTABLEKS     v5 = v7.Name
[844] :372:LOADK          v6 = "Power10"
[845] :372:CONCAT         v4 = v5 .. v6
[847] :372:GETGLOBAL      v5 = Power4
[848] :372:LOADB          v6 = false
[850] :372:GETIMPORT      v8 = Enum.KeyCode
[851] :372:GETUPVAL       v12 = u_v0
[853] :372:GETTABLEKS     v11 = v12.Data
[855] :372:GETTABLEKS     v10 = v11.Basic_DF2D
[857] :372:GETTABLEKS     v9 = v10.Value
[858] :372:GETTABLE       v7 = v8[v9]
[861] :372:CALL           v2:BindAction(v4, v5, v6, v7)
[863] :373:GETIMPORT      v2 = game
[864] :373:LOADK          v4 = "ContextActionService"
[867] :373:CALL           v2 = v2:GetService(v4)
[869] :373:GETIMPORT      v7 = script
[871] :373:GETTABLEKS     v5 = v7.Name
[872] :373:LOADK          v6 = "Power11"
[873] :373:CONCAT         v4 = v5 .. v6
[875] :373:GETGLOBAL      v5 = Power5
[876] :373:LOADB          v6 = false
[878] :373:GETIMPORT      v8 = Enum.KeyCode
[879] :373:GETUPVAL       v12 = u_v0
[881] :373:GETTABLEKS     v11 = v12.Data
[883] :373:GETTABLEKS     v10 = v11.Basic_DF2E
[885] :373:GETTABLEKS     v9 = v10.Value
[886] :373:GETTABLE       v7 = v8[v9]
[889] :373:CALL           v2:BindAction(v4, v5, v6, v7)
[891] :374:GETIMPORT      v2 = game
[892] :374:LOADK          v4 = "ContextActionService"
[895] :374:CALL           v2 = v2:GetService(v4)
[897] :374:GETIMPORT      v7 = script
[899] :374:GETTABLEKS     v5 = v7.Name
[900] :374:LOADK          v6 = "Power12"
[901] :374:CONCAT         v4 = v5 .. v6
[903] :374:GETGLOBAL      v5 = Power6
[904] :374:LOADB          v6 = false
[906] :374:GETIMPORT      v8 = Enum.KeyCode
[907] :374:GETUPVAL       v12 = u_v0
[909] :374:GETTABLEKS     v11 = v12.Data
[911] :374:GETTABLEKS     v10 = v11.Basic_DF2F
[913] :374:GETTABLEKS     v9 = v10.Value
[914] :374:GETTABLE       v7 = v8[v9]
[917] :374:CALL           v2:BindAction(v4, v5, v6, v7)
[919] :375:GETIMPORT      v3 = game
[920] :375:LOADK          v5 = "UserInputService"
[923] :375:CALL           v3 = v3:GetService(v5)
[925] :375:GETTABLEKS     v2 = v3.TouchEnabled
[927] :375:JUMPXEQKB      if v2 == true then -- goto #1156
[929] :376:GETGLOBAL      v5 = player
[931] :376:GETTABLEKS     v4 = v5.PlayerGui
[933] :376:GETTABLEKS     v3 = v4.MobileContext
[935] :376:GETTABLEKS     v2 = v3.Button
[938] :376:CALL           v2 = v2:Clone()
[940] :376:SETGLOBAL      Button7 = v2
[942] :377:GETGLOBAL      v5 = player
[944] :377:GETTABLEKS     v4 = v5.PlayerGui
[946] :377:GETTABLEKS     v3 = v4.MobileContext
[948] :377:GETTABLEKS     v2 = v3.Button
[951] :377:CALL           v2 = v2:Clone()
[953] :377:SETGLOBAL      Button8 = v2
[955] :378:GETGLOBAL      v5 = player
[957] :378:GETTABLEKS     v4 = v5.PlayerGui
[959] :378:GETTABLEKS     v3 = v4.MobileContext
[961] :378:GETTABLEKS     v2 = v3.Button
[964] :378:CALL           v2 = v2:Clone()
[966] :378:SETGLOBAL      Button9 = v2
[968] :379:GETGLOBAL      v5 = player
[970] :379:GETTABLEKS     v4 = v5.PlayerGui
[972] :379:GETTABLEKS     v3 = v4.MobileContext
[974] :379:GETTABLEKS     v2 = v3.Button
[977] :379:CALL           v2 = v2:Clone()
[979] :379:SETGLOBAL      Button10 = v2
[981] :380:GETGLOBAL      v5 = player
[983] :380:GETTABLEKS     v4 = v5.PlayerGui
[985] :380:GETTABLEKS     v3 = v4.MobileContext
[987] :380:GETTABLEKS     v2 = v3.Button
[990] :380:CALL           v2 = v2:Clone()
[992] :380:SETGLOBAL      Button11 = v2
[994] :381:GETGLOBAL      v5 = player
[996] :381:GETTABLEKS     v4 = v5.PlayerGui
[998] :381:GETTABLEKS     v3 = v4.MobileContext
[1000] :381:GETTABLEKS     v2 = v3.Button
[1003] :381:CALL           v2 = v2:Clone()
[1005] :381:SETGLOBAL      Button12 = v2
[1007] :382:GETGLOBAL      v2 = Button7
[1008] :382:LOADK          v3 = "Power7"
[1010] :382:SETTABLEKS     v2.Name = v3
[1012] :383:GETGLOBAL      v2 = Button8
[1013] :383:LOADK          v3 = "Power8"
[1015] :383:SETTABLEKS     v2.Name = v3
[1017] :384:GETGLOBAL      v2 = Button9
[1018] :384:LOADK          v3 = "Power9"
[1020] :384:SETTABLEKS     v2.Name = v3
[1022] :385:GETGLOBAL      v2 = Button10
[1023] :385:LOADK          v3 = "Power10"
[1025] :385:SETTABLEKS     v2.Name = v3
[1027] :386:GETGLOBAL      v2 = Button11
[1028] :386:LOADK          v3 = "Power11"
[1030] :386:SETTABLEKS     v2.Name = v3
[1032] :387:GETGLOBAL      v2 = Button12
[1033] :387:LOADK          v3 = "Power12"
[1035] :387:SETTABLEKS     v2.Name = v3
[1037] :388:GETGLOBAL      v2 = Button7
[1039] :388:GETGLOBAL      v6 = player
[1041] :388:GETTABLEKS     v5 = v6.PlayerGui
[1043] :388:GETTABLEKS     v4 = v5.MobileContext
[1045] :388:GETTABLEKS     v3 = v4.ContextActions2
[1047] :388:SETTABLEKS     v2.Parent = v3
[1049] :389:GETGLOBAL      v2 = Button8
[1051] :389:GETGLOBAL      v6 = player
[1053] :389:GETTABLEKS     v5 = v6.PlayerGui
[1055] :389:GETTABLEKS     v4 = v5.MobileContext
[1057] :389:GETTABLEKS     v3 = v4.ContextActions2
[1059] :389:SETTABLEKS     v2.Parent = v3
[1061] :390:GETGLOBAL      v2 = Button9
[1063] :390:GETGLOBAL      v6 = player
[1065] :390:GETTABLEKS     v5 = v6.PlayerGui
[1067] :390:GETTABLEKS     v4 = v5.MobileContext
[1069] :390:GETTABLEKS     v3 = v4.ContextActions2
[1071] :390:SETTABLEKS     v2.Parent = v3
[1073] :391:GETGLOBAL      v2 = Button10
[1075] :391:GETGLOBAL      v6 = player
[1077] :391:GETTABLEKS     v5 = v6.PlayerGui
[1079] :391:GETTABLEKS     v4 = v5.MobileContext
[1081] :391:GETTABLEKS     v3 = v4.ContextActions2
[1083] :391:SETTABLEKS     v2.Parent = v3
[1085] :392:GETGLOBAL      v2 = Button11
[1087] :392:GETGLOBAL      v6 = player
[1089] :392:GETTABLEKS     v5 = v6.PlayerGui
[1091] :392:GETTABLEKS     v4 = v5.MobileContext
[1093] :392:GETTABLEKS     v3 = v4.ContextActions2
[1095] :392:SETTABLEKS     v2.Parent = v3
[1097] :393:GETGLOBAL      v2 = Button12
[1099] :393:GETGLOBAL      v6 = player
[1101] :393:GETTABLEKS     v5 = v6.PlayerGui
[1103] :393:GETTABLEKS     v4 = v5.MobileContext
[1105] :393:GETTABLEKS     v3 = v4.ContextActions2
[1107] :393:SETTABLEKS     v2.Parent = v3
[1109] :394:GETGLOBAL      v3 = Button7
[1111] :394:GETTABLEKS     v2 = v3.MouseButton1Click
[1112] :394:DUPCLOSURE     v4 = function()
-- proto pool id: 20
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :394:GETGLOBAL      v0 = SP
[004] :394:GETGLOBAL      v1 = Button7
[006] :394:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :394:LOADNIL        v0 = nil
[009] :394:SETGLOBAL      SP = v0
[010] :394:JUMP           -- jump to #14
end
[012] :394:GETGLOBAL      v0 = Button7
[014] :394:SETGLOBAL      SP = v0
[016] :394:GETGLOBAL      v0 = NewSP
[017] :394:CALL           v0()
[018] :394:RETURN         return
end
[1115] :394:CALL           v2:Connect(v4)
[1117] :395:GETGLOBAL      v3 = Button8
[1119] :395:GETTABLEKS     v2 = v3.MouseButton1Click
[1120] :395:DUPCLOSURE     v4 = function()
-- proto pool id: 21
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :395:GETGLOBAL      v0 = SP
[004] :395:GETGLOBAL      v1 = Button8
[006] :395:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :395:LOADNIL        v0 = nil
[009] :395:SETGLOBAL      SP = v0
[010] :395:JUMP           -- jump to #14
end
[012] :395:GETGLOBAL      v0 = Button8
[014] :395:SETGLOBAL      SP = v0
[016] :395:GETGLOBAL      v0 = NewSP
[017] :395:CALL           v0()
[018] :395:RETURN         return
end
[1123] :395:CALL           v2:Connect(v4)
[1125] :396:GETGLOBAL      v3 = Button9
[1127] :396:GETTABLEKS     v2 = v3.MouseButton1Click
[1128] :396:DUPCLOSURE     v4 = function()
-- proto pool id: 22
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :396:GETGLOBAL      v0 = SP
[004] :396:GETGLOBAL      v1 = Button9
[006] :396:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :396:LOADNIL        v0 = nil
[009] :396:SETGLOBAL      SP = v0
[010] :396:JUMP           -- jump to #14
end
[012] :396:GETGLOBAL      v0 = Button9
[014] :396:SETGLOBAL      SP = v0
[016] :396:GETGLOBAL      v0 = NewSP
[017] :396:CALL           v0()
[018] :396:RETURN         return
end
[1131] :396:CALL           v2:Connect(v4)
[1133] :397:GETGLOBAL      v3 = Button10
[1135] :397:GETTABLEKS     v2 = v3.MouseButton1Click
[1136] :397:DUPCLOSURE     v4 = function()
-- proto pool id: 23
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :397:GETGLOBAL      v0 = SP
[004] :397:GETGLOBAL      v1 = Button10
[006] :397:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :397:LOADNIL        v0 = nil
[009] :397:SETGLOBAL      SP = v0
[010] :397:JUMP           -- jump to #14
end
[012] :397:GETGLOBAL      v0 = Button10
[014] :397:SETGLOBAL      SP = v0
[016] :397:GETGLOBAL      v0 = NewSP
[017] :397:CALL           v0()
[018] :397:RETURN         return
end
[1139] :397:CALL           v2:Connect(v4)
[1141] :398:GETGLOBAL      v3 = Button11
[1143] :398:GETTABLEKS     v2 = v3.MouseButton1Click
[1144] :398:DUPCLOSURE     v4 = function()
-- proto pool id: 24
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :398:GETGLOBAL      v0 = SP
[004] :398:GETGLOBAL      v1 = Button11
[006] :398:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :398:LOADNIL        v0 = nil
[009] :398:SETGLOBAL      SP = v0
[010] :398:JUMP           -- jump to #14
end
[012] :398:GETGLOBAL      v0 = Button11
[014] :398:SETGLOBAL      SP = v0
[016] :398:GETGLOBAL      v0 = NewSP
[017] :398:CALL           v0()
[018] :398:RETURN         return
end
[1147] :398:CALL           v2:Connect(v4)
[1149] :399:GETGLOBAL      v3 = Button12
[1151] :399:GETTABLEKS     v2 = v3.MouseButton1Click
[1152] :399:DUPCLOSURE     v4 = function()
-- proto pool id: 25
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :399:GETGLOBAL      v0 = SP
[004] :399:GETGLOBAL      v1 = Button12
[006] :399:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :399:LOADNIL        v0 = nil
[009] :399:SETGLOBAL      SP = v0
[010] :399:JUMP           -- jump to #14
end
[012] :399:GETGLOBAL      v0 = Button12
[014] :399:SETGLOBAL      SP = v0
[016] :399:GETGLOBAL      v0 = NewSP
[017] :399:CALL           v0()
[018] :399:RETURN         return
end
[1155] :399:CALL           v2:Connect(v4)
end
end
end
end
end
[1156] :403:RETURN         return
end
v2 = Update
[643] :660:GETIMPORT      v6 = script
[645] :660:GETTABLEKS     v5 = v6.Parent
[647] :660:GETTABLEKS     v4 = v5.DevilFruitUpdate
[649] :660:GETTABLEKS     v3 = v4.OnClientEvent
[650] :660:DUPCLOSURE     v5 = function(p25, p26)
-- proto pool id: 27
-- num upvalues: 1
-- num inner protos: 0
-- size instructions: 5
-- size constants: 0
-- lineinfo gap: 24
-- max stack size: 5
-- is typed: false
[001] :405:GETUPVAL       v0 = u_v2
[002] :405:MOVE           v1 = p25
[003] :405:MOVE           v2 = p26
[004] :405:CALL           v0(v1, v2)
[005] :406:RETURN         return
end
[654] :660:CALL           v3:connect(v5)
[656] :663:GETTABLEKS     v4 = v0.Data
[658] :663:GETTABLEKS     v3 = v4.Basic_DF1A
[659] :663:LOADK          v5 = "Value"
[662] :663:CALL           v3 = v3:GetPropertyChangedSignal(v5)
[663] :663:DUPCLOSURE     v5 = function()
-- proto pool id: 28
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: false
[001] :407:GETUPVAL       v0 = u_v2
[002] :407:LOADN          v1 = 1
[003] :407:GETUPVAL       v5 = u_v0
[005] :407:GETTABLEKS     v4 = v5.Data
[007] :407:GETTABLEKS     v3 = v4.DevilFruit
[009] :407:GETTABLEKS     v2 = v3.Value
[010] :407:CALL           v0(v1, v2)
[011] :407:RETURN         return
end
[668] :663:CALL           v3:Connect(v5)
[670] :664:GETTABLEKS     v4 = v0.Data
[672] :664:GETTABLEKS     v3 = v4.Basic_DF1B
[673] :664:LOADK          v5 = "Value"
[676] :664:CALL           v3 = v3:GetPropertyChangedSignal(v5)
[677] :664:DUPCLOSURE     v5 = function()
-- proto pool id: 29
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: false
[001] :408:GETUPVAL       v0 = u_v2
[002] :408:LOADN          v1 = 1
[003] :408:GETUPVAL       v5 = u_v0
[005] :408:GETTABLEKS     v4 = v5.Data
[007] :408:GETTABLEKS     v3 = v4.DevilFruit
[009] :408:GETTABLEKS     v2 = v3.Value
[010] :408:CALL           v0(v1, v2)
[011] :408:RETURN         return
end
[682] :664:CALL           v3:Connect(v5)
[684] :665:GETTABLEKS     v4 = v0.Data
[686] :665:GETTABLEKS     v3 = v4.Basic_DF1C
[687] :665:LOADK          v5 = "Value"
[690] :665:CALL           v3 = v3:GetPropertyChangedSignal(v5)
[691] :665:DUPCLOSURE     v5 = function()
-- proto pool id: 30
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: false
[001] :409:GETUPVAL       v0 = u_v2
[002] :409:LOADN          v1 = 1
[003] :409:GETUPVAL       v5 = u_v0
[005] :409:GETTABLEKS     v4 = v5.Data
[007] :409:GETTABLEKS     v3 = v4.DevilFruit
[009] :409:GETTABLEKS     v2 = v3.Value
[010] :409:CALL           v0(v1, v2)
[011] :409:RETURN         return
end
[696] :665:CALL           v3:Connect(v5)
[698] :666:GETTABLEKS     v4 = v0.Data
[700] :666:GETTABLEKS     v3 = v4.Basic_DF1D
[701] :666:LOADK          v5 = "Value"
[704] :666:CALL           v3 = v3:GetPropertyChangedSignal(v5)
[705] :666:DUPCLOSURE     v5 = function()
-- proto pool id: 31
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: false
[001] :410:GETUPVAL       v0 = u_v2
[002] :410:LOADN          v1 = 1
[003] :410:GETUPVAL       v5 = u_v0
[005] :410:GETTABLEKS     v4 = v5.Data
[007] :410:GETTABLEKS     v3 = v4.DevilFruit
[009] :410:GETTABLEKS     v2 = v3.Value
[010] :410:CALL           v0(v1, v2)
[011] :410:RETURN         return
end
[710] :666:CALL           v3:Connect(v5)
[712] :667:GETTABLEKS     v4 = v0.Data
[714] :667:GETTABLEKS     v3 = v4.Basic_DF1E
[715] :667:LOADK          v5 = "Value"
[718] :667:CALL           v3 = v3:GetPropertyChangedSignal(v5)
[719] :667:DUPCLOSURE     v5 = function()
-- proto pool id: 32
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: false
[001] :411:GETUPVAL       v0 = u_v2
[002] :411:LOADN          v1 = 1
[003] :411:GETUPVAL       v5 = u_v0
[005] :411:GETTABLEKS     v4 = v5.Data
[007] :411:GETTABLEKS     v3 = v4.DevilFruit
[009] :411:GETTABLEKS     v2 = v3.Value
[010] :411:CALL           v0(v1, v2)
[011] :411:RETURN         return
end
[724] :667:CALL           v3:Connect(v5)
[726] :668:GETTABLEKS     v4 = v0.Data
[728] :668:GETTABLEKS     v3 = v4.Basic_DF1F
[729] :668:LOADK          v5 = "Value"
[732] :668:CALL           v3 = v3:GetPropertyChangedSignal(v5)
[733] :668:DUPCLOSURE     v5 = function()
-- proto pool id: 33
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: false
[001] :412:GETUPVAL       v0 = u_v2
[002] :412:LOADN          v1 = 1
[003] :412:GETUPVAL       v5 = u_v0
[005] :412:GETTABLEKS     v4 = v5.Data
[007] :412:GETTABLEKS     v3 = v4.DevilFruit
[009] :412:GETTABLEKS     v2 = v3.Value
[010] :412:CALL           v0(v1, v2)
[011] :412:RETURN         return
end
[738] :668:CALL           v3:Connect(v5)
[740] :669:GETTABLEKS     v4 = v0.Data
[742] :669:GETTABLEKS     v3 = v4.Basic_DF2A
[743] :669:LOADK          v5 = "Value"
[746] :669:CALL           v3 = v3:GetPropertyChangedSignal(v5)
[747] :669:DUPCLOSURE     v5 = function()
-- proto pool id: 34
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: false
[001] :413:GETUPVAL       v0 = u_v2
[002] :413:LOADN          v1 = 2
[003] :413:GETUPVAL       v5 = u_v0
[005] :413:GETTABLEKS     v4 = v5.Data
[007] :413:GETTABLEKS     v3 = v4.DevilFruit2
[009] :413:GETTABLEKS     v2 = v3.Value
[010] :413:CALL           v0(v1, v2)
[011] :413:RETURN         return
end
[752] :669:CALL           v3:Connect(v5)
[754] :670:GETTABLEKS     v4 = v0.Data
[756] :670:GETTABLEKS     v3 = v4.Basic_DF2B
[757] :670:LOADK          v5 = "Value"
[760] :670:CALL           v3 = v3:GetPropertyChangedSignal(v5)
[761] :670:DUPCLOSURE     v5 = function()
-- proto pool id: 35
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: false
[001] :414:GETUPVAL       v0 = u_v2
[002] :414:LOADN          v1 = 2
[003] :414:GETUPVAL       v5 = u_v0
[005] :414:GETTABLEKS     v4 = v5.Data
[007] :414:GETTABLEKS     v3 = v4.DevilFruit2
[009] :414:GETTABLEKS     v2 = v3.Value
[010] :414:CALL           v0(v1, v2)
[011] :414:RETURN         return
end
[766] :670:CALL           v3:Connect(v5)
[768] :671:GETTABLEKS     v4 = v0.Data
[770] :671:GETTABLEKS     v3 = v4.Basic_DF2C
[771] :671:LOADK          v5 = "Value"
[774] :671:CALL           v3 = v3:GetPropertyChangedSignal(v5)
[775] :671:DUPCLOSURE     v5 = function()
-- proto pool id: 36
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: false
[001] :415:GETUPVAL       v0 = u_v2
[002] :415:LOADN          v1 = 2
[003] :415:GETUPVAL       v5 = u_v0
[005] :415:GETTABLEKS     v4 = v5.Data
[007] :415:GETTABLEKS     v3 = v4.DevilFruit2
[009] :415:GETTABLEKS     v2 = v3.Value
[010] :415:CALL           v0(v1, v2)
[011] :415:RETURN         return
end
[780] :671:CALL           v3:Connect(v5)
[782] :672:GETTABLEKS     v4 = v0.Data
[784] :672:GETTABLEKS     v3 = v4.Basic_DF2D
[785] :672:LOADK          v5 = "Value"
[788] :672:CALL           v3 = v3:GetPropertyChangedSignal(v5)
[789] :672:DUPCLOSURE     v5 = function()
-- proto pool id: 37
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: false
[001] :416:GETUPVAL       v0 = u_v2
[002] :416:LOADN          v1 = 2
[003] :416:GETUPVAL       v5 = u_v0
[005] :416:GETTABLEKS     v4 = v5.Data
[007] :416:GETTABLEKS     v3 = v4.DevilFruit2
[009] :416:GETTABLEKS     v2 = v3.Value
[010] :416:CALL           v0(v1, v2)
[011] :416:RETURN         return
end
[794] :672:CALL           v3:Connect(v5)
[796] :673:GETTABLEKS     v4 = v0.Data
[798] :673:GETTABLEKS     v3 = v4.Basic_DF2E
[799] :673:LOADK          v5 = "Value"
[802] :673:CALL           v3 = v3:GetPropertyChangedSignal(v5)
[803] :673:DUPCLOSURE     v5 = function()
-- proto pool id: 38
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: false
[001] :417:GETUPVAL       v0 = u_v2
[002] :417:LOADN          v1 = 2
[003] :417:GETUPVAL       v5 = u_v0
[005] :417:GETTABLEKS     v4 = v5.Data
[007] :417:GETTABLEKS     v3 = v4.DevilFruit2
[009] :417:GETTABLEKS     v2 = v3.Value
[010] :417:CALL           v0(v1, v2)
[011] :417:RETURN         return
end
[808] :673:CALL           v3:Connect(v5)
[810] :674:GETTABLEKS     v4 = v0.Data
[812] :674:GETTABLEKS     v3 = v4.Basic_DF2F
[813] :674:LOADK          v5 = "Value"
[816] :674:CALL           v3 = v3:GetPropertyChangedSignal(v5)
[817] :674:DUPCLOSURE     v5 = function()
-- proto pool id: 39
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: false
[001] :418:GETUPVAL       v0 = u_v2
[002] :418:LOADN          v1 = 2
[003] :418:GETUPVAL       v5 = u_v0
[005] :418:GETTABLEKS     v4 = v5.Data
[007] :418:GETTABLEKS     v3 = v4.DevilFruit2
[009] :418:GETTABLEKS     v2 = v3.Value
[010] :418:CALL           v0(v1, v2)
[011] :418:RETURN         return
end
[822] :674:CALL           v3:Connect(v5)
[824] :676:GETTABLEKS     v3 = v0.Data
[825] :676:LOADK          v5 = "DevilFruit"
[828] :676:CALL           v3 = v3:FindFirstChild(v5)
[830] :677:GETTABLEKS     v4 = v0.Data
[831] :677:LOADK          v6 = "DevilFruit2"
[834] :677:CALL           v4 = v4:FindFirstChild(v6)
[835] :680:MOVE           v5 = v2
[836] :680:LOADN          v6 = 1
[838] :680:GETTABLEKS     v7 = v3.Value
[839] :680:CALL           v5(v6, v7)
[840] :681:MOVE           v5 = v2
[841] :681:LOADN          v6 = 2
[843] :681:GETTABLEKS     v7 = v4.Value
[844] :681:CALL           v5(v6, v7)
[846] :683:GETIMPORT      v9 = script
[848] :683:GETTABLEKS     v8 = v9.Parent
[850] :683:GETTABLEKS     v7 = v8.Parent
[852] :683:GETTABLEKS     v6 = v7.OrderedPair
[854] :683:GETTABLEKS     v5 = v6.OnClientEvent
[855] :683:DUPCLOSURE     v7 = function(p27, p28, p29, p30)
-- proto pool id: 40
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 104
-- size constants: 22
-- lineinfo gap: 24
-- max stack size: 10
-- is typed: false
[002] :428:GETIMPORT      v1 = script
[004] :428:GETTABLEKS     v0 = v1.Name
[006] :428:JUMPIFEQ       if p28 == v0 then -- goto #8
[007] :428:RETURN         return
end
[009] :429:JUMPXEQKS      if p29 ~= 1 then -- goto #12
[011] :429:JUMPXEQKS      if p29 == 7 then -- goto #24
end
[013] :430:GETGLOBAL      v0 = Power1
[015] :430:GETIMPORT      v5 = script
[017] :430:GETTABLEKS     v2 = v5.Name
[018] :430:LOADK          v3 = "Power"
[019] :430:MOVE           v4 = p29
[020] :430:CONCAT         v1 = v2 .. v3 .. v4
[021] :430:MOVE           v2 = p30
[022] :430:LOADNIL        v3 = nil
[023] :430:CALL           v0(v1, v2, v3)
end
[025] :432:JUMPXEQKS      if p29 ~= 2 then -- goto #28
[027] :432:JUMPXEQKS      if p29 == 8 then -- goto #40
end
[029] :433:GETGLOBAL      v0 = Power2
[031] :433:GETIMPORT      v5 = script
[033] :433:GETTABLEKS     v2 = v5.Name
[034] :433:LOADK          v3 = "Power"
[035] :433:MOVE           v4 = p29
[036] :433:CONCAT         v1 = v2 .. v3 .. v4
[037] :433:MOVE           v2 = p30
[038] :433:LOADNIL        v3 = nil
[039] :433:CALL           v0(v1, v2, v3)
end
[041] :435:JUMPXEQKS      if p29 ~= 3 then -- goto #44
[043] :435:JUMPXEQKS      if p29 == 9 then -- goto #56
end
[045] :436:GETGLOBAL      v0 = Power3
[047] :436:GETIMPORT      v5 = script
[049] :436:GETTABLEKS     v2 = v5.Name
[050] :436:LOADK          v3 = "Power"
[051] :436:MOVE           v4 = p29
[052] :436:CONCAT         v1 = v2 .. v3 .. v4
[053] :436:MOVE           v2 = p30
[054] :436:LOADNIL        v3 = nil
[055] :436:CALL           v0(v1, v2, v3)
end
[057] :438:JUMPXEQKS      if p29 ~= 4 then -- goto #60
[059] :438:JUMPXEQKS      if p29 == 10 then -- goto #72
end
[061] :439:GETGLOBAL      v0 = Power4
[063] :439:GETIMPORT      v5 = script
[065] :439:GETTABLEKS     v2 = v5.Name
[066] :439:LOADK          v3 = "Power"
[067] :439:MOVE           v4 = p29
[068] :439:CONCAT         v1 = v2 .. v3 .. v4
[069] :439:MOVE           v2 = p30
[070] :439:LOADNIL        v3 = nil
[071] :439:CALL           v0(v1, v2, v3)
end
[073] :441:JUMPXEQKS      if p29 ~= 5 then -- goto #76
[075] :441:JUMPXEQKS      if p29 == 11 then -- goto #88
end
[077] :442:GETGLOBAL      v0 = Power5
[079] :442:GETIMPORT      v5 = script
[081] :442:GETTABLEKS     v2 = v5.Name
[082] :442:LOADK          v3 = "Power"
[083] :442:MOVE           v4 = p29
[084] :442:CONCAT         v1 = v2 .. v3 .. v4
[085] :442:MOVE           v2 = p30
[086] :442:LOADNIL        v3 = nil
[087] :442:CALL           v0(v1, v2, v3)
end
[089] :444:JUMPXEQKS      if p29 ~= 6 then -- goto #92
[091] :444:JUMPXEQKS      if p29 == 12 then -- goto #104
end
[093] :445:GETGLOBAL      v0 = Power6
[095] :445:GETIMPORT      v5 = script
[097] :445:GETTABLEKS     v2 = v5.Name
[098] :445:LOADK          v3 = "Power"
[099] :445:MOVE           v4 = p29
[100] :445:CONCAT         v1 = v2 .. v3 .. v4
[101] :445:MOVE           v2 = p30
[102] :445:LOADNIL        v3 = nil
[103] :445:CALL           v0(v1, v2, v3)
end
[104] :447:RETURN         return
end
[858] :683:CALL           v5:Connect(v7)
[860] :705:GETIMPORT      v7 = script
[862] :705:GETTABLEKS     v6 = v7.Controller
[864] :705:GETTABLEKS     v5 = v6.Event
[865] :705:DUPCLOSURE     v7 = function(p31, p32, p33)
-- proto pool id: 41
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 169
-- size constants: 15
-- lineinfo gap: 24
-- max stack size: 7
-- is typed: false
[002] :450:GETIMPORT      v3 = script
[004] :450:GETTABLEKS     v1 = v3.Name
[005] :450:LOADK          v2 = "Power1"
[006] :450:CONCAT         v0 = v1 .. v2
[008] :450:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #15
[010] :450:GETGLOBAL      v0 = Power1
[011] :450:MOVE           v1 = p31
[012] :450:MOVE           v2 = p32
[013] :450:MOVE           v3 = p33
[014] :450:CALL           v0(v1, v2, v3)
end
[016] :451:GETIMPORT      v3 = script
[018] :451:GETTABLEKS     v1 = v3.Name
[019] :451:LOADK          v2 = "Power2"
[020] :451:CONCAT         v0 = v1 .. v2
[022] :451:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #29
[024] :451:GETGLOBAL      v0 = Power2
[025] :451:MOVE           v1 = p31
[026] :451:MOVE           v2 = p32
[027] :451:MOVE           v3 = p33
[028] :451:CALL           v0(v1, v2, v3)
end
[030] :452:GETIMPORT      v3 = script
[032] :452:GETTABLEKS     v1 = v3.Name
[033] :452:LOADK          v2 = "Power3"
[034] :452:CONCAT         v0 = v1 .. v2
[036] :452:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #43
[038] :452:GETGLOBAL      v0 = Power3
[039] :452:MOVE           v1 = p31
[040] :452:MOVE           v2 = p32
[041] :452:MOVE           v3 = p33
[042] :452:CALL           v0(v1, v2, v3)
end
[044] :453:GETIMPORT      v3 = script
[046] :453:GETTABLEKS     v1 = v3.Name
[047] :453:LOADK          v2 = "Power4"
[048] :453:CONCAT         v0 = v1 .. v2
[050] :453:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #57
[052] :453:GETGLOBAL      v0 = Power4
[053] :453:MOVE           v1 = p31
[054] :453:MOVE           v2 = p32
[055] :453:MOVE           v3 = p33
[056] :453:CALL           v0(v1, v2, v3)
end
[058] :454:GETIMPORT      v3 = script
[060] :454:GETTABLEKS     v1 = v3.Name
[061] :454:LOADK          v2 = "Power5"
[062] :454:CONCAT         v0 = v1 .. v2
[064] :454:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #71
[066] :454:GETGLOBAL      v0 = Power5
[067] :454:MOVE           v1 = p31
[068] :454:MOVE           v2 = p32
[069] :454:MOVE           v3 = p33
[070] :454:CALL           v0(v1, v2, v3)
end
[072] :455:GETIMPORT      v3 = script
[074] :455:GETTABLEKS     v1 = v3.Name
[075] :455:LOADK          v2 = "Power6"
[076] :455:CONCAT         v0 = v1 .. v2
[078] :455:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #85
[080] :455:GETGLOBAL      v0 = Power6
[081] :455:MOVE           v1 = p31
[082] :455:MOVE           v2 = p32
[083] :455:MOVE           v3 = p33
[084] :455:CALL           v0(v1, v2, v3)
end
[086] :456:GETIMPORT      v3 = script
[088] :456:GETTABLEKS     v1 = v3.Name
[089] :456:LOADK          v2 = "Power7"
[090] :456:CONCAT         v0 = v1 .. v2
[092] :456:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #99
[094] :456:GETGLOBAL      v0 = Power1
[095] :456:MOVE           v1 = p31
[096] :456:MOVE           v2 = p32
[097] :456:MOVE           v3 = p33
[098] :456:CALL           v0(v1, v2, v3)
end
[100] :457:GETIMPORT      v3 = script
[102] :457:GETTABLEKS     v1 = v3.Name
[103] :457:LOADK          v2 = "Power8"
[104] :457:CONCAT         v0 = v1 .. v2
[106] :457:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #113
[108] :457:GETGLOBAL      v0 = Power2
[109] :457:MOVE           v1 = p31
[110] :457:MOVE           v2 = p32
[111] :457:MOVE           v3 = p33
[112] :457:CALL           v0(v1, v2, v3)
end
[114] :458:GETIMPORT      v3 = script
[116] :458:GETTABLEKS     v1 = v3.Name
[117] :458:LOADK          v2 = "Power9"
[118] :458:CONCAT         v0 = v1 .. v2
[120] :458:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #127
[122] :458:GETGLOBAL      v0 = Power3
[123] :458:MOVE           v1 = p31
[124] :458:MOVE           v2 = p32
[125] :458:MOVE           v3 = p33
[126] :458:CALL           v0(v1, v2, v3)
end
[128] :459:GETIMPORT      v3 = script
[130] :459:GETTABLEKS     v1 = v3.Name
[131] :459:LOADK          v2 = "Power10"
[132] :459:CONCAT         v0 = v1 .. v2
[134] :459:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #141
[136] :459:GETGLOBAL      v0 = Power4
[137] :459:MOVE           v1 = p31
[138] :459:MOVE           v2 = p32
[139] :459:MOVE           v3 = p33
[140] :459:CALL           v0(v1, v2, v3)
end
[142] :460:GETIMPORT      v3 = script
[144] :460:GETTABLEKS     v1 = v3.Name
[145] :460:LOADK          v2 = "Power11"
[146] :460:CONCAT         v0 = v1 .. v2
[148] :460:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #155
[150] :460:GETGLOBAL      v0 = Power5
[151] :460:MOVE           v1 = p31
[152] :460:MOVE           v2 = p32
[153] :460:MOVE           v3 = p33
[154] :460:CALL           v0(v1, v2, v3)
end
[156] :461:GETIMPORT      v3 = script
[158] :461:GETTABLEKS     v1 = v3.Name
[159] :461:LOADK          v2 = "Power12"
[160] :461:CONCAT         v0 = v1 .. v2
[162] :461:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #169
[164] :461:GETGLOBAL      v0 = Power6
[165] :461:MOVE           v1 = p31
[166] :461:MOVE           v2 = p32
[167] :461:MOVE           v3 = p33
[168] :461:CALL           v0(v1, v2, v3)
end
[169] :462:RETURN         return
end
[868] :705:CALL           v5:Connect(v7)
[870] :720:GETIMPORT      v7 = script
[872] :720:GETTABLEKS     v6 = v7.Parent
[874] :720:GETTABLEKS     v5 = v6.Parent
[875] :720:LOADK          v7 = "DPAD"
[878] :720:CALL           v5 = v5:WaitForChild(v7)
[880] :720:SETGLOBAL      DPAD = v5
[881] :721:DUPCLOSURE     
local function Conser(p34, p35, p36)
-- proto pool id: 42
-- num upvalues: 1
-- num inner protos: 0
-- size instructions: 242
-- size constants: 32
-- lineinfo gap: 24
-- max stack size: 8
-- is typed: false
[001] :466:GETUPVAL       v3 = u_v0
[003] :466:GETTABLEKS     v2 = v3.Data
[005] :466:GETTABLEKS     v1 = v2.DevilFruit
[007] :466:GETTABLEKS     v0 = v1.Value
[009] :466:GETIMPORT      v2 = script
[011] :466:GETTABLEKS     v1 = v2.Name
[013] :466:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #122
[015] :467:GETGLOBAL      v1 = DPAD
[017] :467:GETTABLEKS     v0 = v1.Value
[019] :467:JUMPXEQKN      if v0 == 1 then -- goto #32
[021] :467:GETGLOBAL      v0 = Power1
[023] :467:GETIMPORT      v4 = script
[025] :467:GETTABLEKS     v2 = v4.Name
[026] :467:LOADK          v3 = "Power1"
[027] :467:CONCAT         v1 = v2 .. v3
[028] :467:MOVE           v2 = p35
[029] :467:MOVE           v3 = p36
[030] :467:CALL           v0(v1, v2, v3)
[031] :467:RETURN         return
end
[033] :468:GETGLOBAL      v1 = DPAD
[035] :468:GETTABLEKS     v0 = v1.Value
[037] :468:JUMPXEQKN      if v0 == 2 then -- goto #50
[039] :468:GETGLOBAL      v0 = Power2
[041] :468:GETIMPORT      v4 = script
[043] :468:GETTABLEKS     v2 = v4.Name
[044] :468:LOADK          v3 = "Power2"
[045] :468:CONCAT         v1 = v2 .. v3
[046] :468:MOVE           v2 = p35
[047] :468:MOVE           v3 = p36
[048] :468:CALL           v0(v1, v2, v3)
[049] :468:RETURN         return
end
[051] :469:GETGLOBAL      v1 = DPAD
[053] :469:GETTABLEKS     v0 = v1.Value
[055] :469:JUMPXEQKN      if v0 == 3 then -- goto #68
[057] :469:GETGLOBAL      v0 = Power3
[059] :469:GETIMPORT      v4 = script
[061] :469:GETTABLEKS     v2 = v4.Name
[062] :469:LOADK          v3 = "Power3"
[063] :469:CONCAT         v1 = v2 .. v3
[064] :469:MOVE           v2 = p35
[065] :469:MOVE           v3 = p36
[066] :469:CALL           v0(v1, v2, v3)
[067] :469:RETURN         return
end
[069] :470:GETGLOBAL      v1 = DPAD
[071] :470:GETTABLEKS     v0 = v1.Value
[073] :470:JUMPXEQKN      if v0 == 4 then -- goto #86
[075] :470:GETGLOBAL      v0 = Power4
[077] :470:GETIMPORT      v4 = script
[079] :470:GETTABLEKS     v2 = v4.Name
[080] :470:LOADK          v3 = "Power4"
[081] :470:CONCAT         v1 = v2 .. v3
[082] :470:MOVE           v2 = p35
[083] :470:MOVE           v3 = p36
[084] :470:CALL           v0(v1, v2, v3)
[085] :470:RETURN         return
end
[087] :471:GETGLOBAL      v1 = DPAD
[089] :471:GETTABLEKS     v0 = v1.Value
[091] :471:JUMPXEQKN      if v0 == 5 then -- goto #104
[093] :471:GETGLOBAL      v0 = Power5
[095] :471:GETIMPORT      v4 = script
[097] :471:GETTABLEKS     v2 = v4.Name
[098] :471:LOADK          v3 = "Power5"
[099] :471:CONCAT         v1 = v2 .. v3
[100] :471:MOVE           v2 = p35
[101] :471:MOVE           v3 = p36
[102] :471:CALL           v0(v1, v2, v3)
[103] :471:RETURN         return
end
[105] :472:GETGLOBAL      v1 = DPAD
[107] :472:GETTABLEKS     v0 = v1.Value
[109] :472:JUMPXEQKN      if v0 == 6 then -- goto #242
[111] :472:GETGLOBAL      v0 = Power6
[113] :472:GETIMPORT      v4 = script
[115] :472:GETTABLEKS     v2 = v4.Name
[116] :472:LOADK          v3 = "Power6"
[117] :472:CONCAT         v1 = v2 .. v3
[118] :472:MOVE           v2 = p35
[119] :472:MOVE           v3 = p36
[120] :472:CALL           v0(v1, v2, v3)
[121] :472:RETURN         return
end
[122] :474:GETUPVAL       v3 = u_v0
[124] :474:GETTABLEKS     v2 = v3.Data
[126] :474:GETTABLEKS     v1 = v2.DevilFruit2
[128] :474:GETTABLEKS     v0 = v1.Value
[130] :474:GETIMPORT      v2 = script
[132] :474:GETTABLEKS     v1 = v2.Name
[134] :474:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #242
[136] :475:GETGLOBAL      v1 = DPAD
[138] :475:GETTABLEKS     v0 = v1.Value
[140] :475:JUMPXEQKN      if v0 == 7 then -- goto #153
[142] :475:GETGLOBAL      v0 = Power1
[144] :475:GETIMPORT      v4 = script
[146] :475:GETTABLEKS     v2 = v4.Name
[147] :475:LOADK          v3 = "Power7"
[148] :475:CONCAT         v1 = v2 .. v3
[149] :475:MOVE           v2 = p35
[150] :475:MOVE           v3 = p36
[151] :475:CALL           v0(v1, v2, v3)
[152] :475:RETURN         return
end
[154] :476:GETGLOBAL      v1 = DPAD
[156] :476:GETTABLEKS     v0 = v1.Value
[158] :476:JUMPXEQKN      if v0 == 8 then -- goto #171
[160] :476:GETGLOBAL      v0 = Power2
[162] :476:GETIMPORT      v4 = script
[164] :476:GETTABLEKS     v2 = v4.Name
[165] :476:LOADK          v3 = "Power8"
[166] :476:CONCAT         v1 = v2 .. v3
[167] :476:MOVE           v2 = p35
[168] :476:MOVE           v3 = p36
[169] :476:CALL           v0(v1, v2, v3)
[170] :476:RETURN         return
end
[172] :477:GETGLOBAL      v1 = DPAD
[174] :477:GETTABLEKS     v0 = v1.Value
[176] :477:JUMPXEQKN      if v0 == 9 then -- goto #189
[178] :477:GETGLOBAL      v0 = Power3
[180] :477:GETIMPORT      v4 = script
[182] :477:GETTABLEKS     v2 = v4.Name
[183] :477:LOADK          v3 = "Power9"
[184] :477:CONCAT         v1 = v2 .. v3
[185] :477:MOVE           v2 = p35
[186] :477:MOVE           v3 = p36
[187] :477:CALL           v0(v1, v2, v3)
[188] :477:RETURN         return
end
[190] :478:GETGLOBAL      v1 = DPAD
[192] :478:GETTABLEKS     v0 = v1.Value
[194] :478:JUMPXEQKN      if v0 == 10 then -- goto #207
[196] :478:GETGLOBAL      v0 = Power4
[198] :478:GETIMPORT      v4 = script
[200] :478:GETTABLEKS     v2 = v4.Name
[201] :478:LOADK          v3 = "Power10"
[202] :478:CONCAT         v1 = v2 .. v3
[203] :478:MOVE           v2 = p35
[204] :478:MOVE           v3 = p36
[205] :478:CALL           v0(v1, v2, v3)
[206] :478:RETURN         return
end
[208] :479:GETGLOBAL      v1 = DPAD
[210] :479:GETTABLEKS     v0 = v1.Value
[212] :479:JUMPXEQKN      if v0 == 11 then -- goto #225
[214] :479:GETGLOBAL      v0 = Power5
[216] :479:GETIMPORT      v4 = script
[218] :479:GETTABLEKS     v2 = v4.Name
[219] :479:LOADK          v3 = "Power11"
[220] :479:CONCAT         v1 = v2 .. v3
[221] :479:MOVE           v2 = p35
[222] :479:MOVE           v3 = p36
[223] :479:CALL           v0(v1, v2, v3)
[224] :479:RETURN         return
end
[226] :480:GETGLOBAL      v1 = DPAD
[228] :480:GETTABLEKS     v0 = v1.Value
[230] :480:JUMPXEQKN      if v0 == 12 then -- goto #242
[232] :480:GETGLOBAL      v0 = Power6
[234] :480:GETIMPORT      v4 = script
[236] :480:GETTABLEKS     v2 = v4.Name
[237] :480:LOADK          v3 = "Power12"
[238] :480:CONCAT         v1 = v2 .. v3
[239] :480:MOVE           v2 = p35
[240] :480:MOVE           v3 = p36
[241] :480:CALL           v0(v1, v2, v3)
end
end
end
[242] :483:RETURN         return
end
v5 = Conser
[884] :721:SETGLOBAL      Conser = v5
[885] :740:NEWCLOSURE     
local function UpdateDPAD()
-- proto pool id: 43
-- num upvalues: 4
-- num inner protos: 0
-- size instructions: 145
-- size constants: 25
-- lineinfo gap: 24
-- max stack size: 11
-- is typed: false
[001] :485:GETUPVAL       v0 = u_v1
[003] :485:JUMPXEQKB      if v0 == true then -- goto #145
[005] :486:GETGLOBAL      v1 = DPAD
[007] :486:GETTABLEKS     v0 = v1.Value
[008] :486:LOADN          v1 = 1
[010] :486:JUMPIFNOTLE    if v1 <= v0 then -- goto #75
[012] :486:GETGLOBAL      v1 = DPAD
[014] :486:GETTABLEKS     v0 = v1.Value
[015] :486:LOADN          v1 = 6
[017] :486:JUMPIFNOTLE    if v0 <= v1 then -- goto #75
[018] :486:GETUPVAL       v1 = u_v3
[020] :486:GETTABLEKS     v0 = v1.Value
[022] :486:GETIMPORT      v2 = script
[024] :486:GETTABLEKS     v1 = v2.Name
[026] :486:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #75
[028] :487:GETIMPORT      v0 = game
[029] :487:LOADK          v2 = "ContextActionService"
[032] :487:CALL           v0 = v0:GetService(v2)
[034] :487:GETIMPORT      v5 = script
[036] :487:GETTABLEKS     v3 = v5.Name
[037] :487:LOADK          v4 = "Conser2"
[038] :487:CONCAT         v2 = v3 .. v4
[041] :487:CALL           v0:UnbindAction(v2)
[043] :488:GETIMPORT      v0 = game
[044] :488:LOADK          v2 = "ContextActionService"
[047] :488:CALL           v0 = v0:GetService(v2)
[049] :488:GETIMPORT      v5 = script
[051] :488:GETTABLEKS     v3 = v5.Name
[052] :488:LOADK          v4 = "Cons1"
[053] :488:CONCAT         v2 = v3 .. v4
[055] :488:GETGLOBAL      v3 = Conser
[056] :488:LOADB          v4 = false
[058] :488:GETIMPORT      v6 = Enum.KeyCode
[059] :488:GETUPVAL       v10 = u_v0
[061] :488:GETTABLEKS     v9 = v10.Data
[063] :488:GETTABLEKS     v8 = v9["Basic-DPadFn"]
[065] :488:GETTABLEKS     v7 = v8.Value
[066] :488:GETTABLE       v5 = v6[v7]
[069] :488:CALL           v0:BindAction(v2, v3, v4, v5)
[071] :489:GETIMPORT      v0 = print
[072] :489:LOADK          v1 = "BINDING 1"
[073] :489:CALL           v0(v1)
[074] :489:RETURN         return
end
end
end
[076] :490:GETGLOBAL      v1 = DPAD
[078] :490:GETTABLEKS     v0 = v1.Value
[079] :490:LOADN          v1 = 7
[081] :490:JUMPIFNOTLE    if v1 <= v0 then -- goto #145
[083] :490:GETGLOBAL      v1 = DPAD
[085] :490:GETTABLEKS     v0 = v1.Value
[086] :490:LOADN          v1 = 12
[088] :490:JUMPIFNOTLE    if v0 <= v1 then -- goto #145
[089] :490:GETUPVAL       v1 = u_v4
[091] :490:GETTABLEKS     v0 = v1.Value
[093] :490:GETIMPORT      v2 = script
[095] :490:GETTABLEKS     v1 = v2.Name
[097] :490:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #145
[099] :491:GETIMPORT      v0 = game
[100] :491:LOADK          v2 = "ContextActionService"
[103] :491:CALL           v0 = v0:GetService(v2)
[105] :491:GETIMPORT      v5 = script
[107] :491:GETTABLEKS     v3 = v5.Name
[108] :491:LOADK          v4 = "Conser1"
[109] :491:CONCAT         v2 = v3 .. v4
[112] :491:CALL           v0:UnbindAction(v2)
[114] :492:GETIMPORT      v0 = game
[115] :492:LOADK          v2 = "ContextActionService"
[118] :492:CALL           v0 = v0:GetService(v2)
[120] :492:GETIMPORT      v5 = script
[122] :492:GETTABLEKS     v3 = v5.Name
[123] :492:LOADK          v4 = "Cons2"
[124] :492:CONCAT         v2 = v3 .. v4
[126] :492:GETGLOBAL      v3 = Conser
[127] :492:LOADB          v4 = false
[129] :492:GETIMPORT      v6 = Enum.KeyCode
[130] :492:GETUPVAL       v10 = u_v0
[132] :492:GETTABLEKS     v9 = v10.Data
[134] :492:GETTABLEKS     v8 = v9["Basic-DPadFn"]
[136] :492:GETTABLEKS     v7 = v8.Value
[137] :492:GETTABLE       v5 = v6[v7]
[140] :492:CALL           v0:BindAction(v2, v3, v4, v5)
[142] :493:GETIMPORT      v0 = print
[143] :493:LOADK          v1 = "BINDING 2"
[144] :493:CALL           v0(v1)
end
end
end
end
[145] :496:RETURN         return
end
v5 = UpdateDPAD
[891] :740:SETGLOBAL      UpdateDPAD = v5
[893] :753:GETTABLEKS     v5 = v3.Value
[895] :753:GETIMPORT      v7 = script
[897] :753:GETTABLEKS     v6 = v7.Name
[899] :753:JUMPIFEQ       if v5 == v6 then -- goto #908
[901] :753:GETTABLEKS     v5 = v4.Value
[903] :753:GETIMPORT      v7 = script
[905] :753:GETTABLEKS     v6 = v7.Name
[907] :753:JUMPIFNOTEQ    if v5 ~= v6 then -- goto #909
end
[908] :754:LOADB          v1 = true
end
[910] :756:GETGLOBAL      v5 = DPAD
[911] :756:LOADK          v7 = "Value"
[914] :756:CALL           v5 = v5:GetPropertyChangedSignal(v7)
[915] :756:DUPCLOSURE     v7 = function()
-- proto pool id: 44
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 4
-- size constants: 1
-- lineinfo gap: 24
-- max stack size: 1
-- is typed: false
[002] :500:GETGLOBAL      v0 = UpdateDPAD
[003] :500:CALL           v0()
[004] :500:RETURN         return
end
[918] :756:CALL           v5:Connect(v7)
[920] :757:GETGLOBAL      v5 = UpdateDPAD
[921] :757:CALL           v5()
[923] :757:RETURN         return
