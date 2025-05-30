-- Exceeded decompiler timeout.
-- USED GLOBALS: script, FinishedLoading, DevilFruit, DevilFruit2, VTCoa, FDPModule, FlightDisablers, AbilityActivated, Power1, Power2, Power3, Power4, Power5, Power6, Button1, Button2, Button3, Button4, Button5, Button6, Button7, Button8, Button9, Button10, Button11, Button12, SP, NewSP, DPAD, Conser, UpdateDPAD.
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
[023] :003:GETIMPORT      v3 = script
[025] :003:GETTABLEKS     v2 = v3.Parent
[027] :003:GETTABLEKS     v1 = v2.Parent
[029] :003:GETTABLEKS     v0 = v1.ClassName
[031] :003:JUMPXEQKS      if v0 == "Script" then -- goto #33
[032] :004:RETURN         return
end
[034] :006:GETIMPORT      v2 = game
[036] :006:GETTABLEKS     v1 = v2.Players
[038] :006:GETTABLEKS     v0 = v1.LocalPlayer
[039] :008:LOADK          v1 = "Contract"
[040] :009:LOADB          v2 = true
[042] :011:GETIMPORT      v3 = wait
[043] :011:CALL           v3()
[045] :011:GETIMPORT      v3 = workspace
[046] :011:LOADK          v5 = "UserData"
[049] :011:CALL           v3 = v3:FindFirstChild(v5)
[050] :011:JUMPIF         if not v3 then -- goto #51
end
[051] :011:JUMPBACK       -- jump back to #41
[053] :012:GETIMPORT      v3 = wait
[054] :012:CALL           v3()
[056] :012:GETIMPORT      v4 = workspace
[058] :012:GETTABLEKS     v3 = v4.UserData
[059] :012:LOADK          v6 = "User_"
[061] :012:GETTABLEKS     v7 = v0.UserId
[062] :012:CONCAT         v5 = v6 .. v7
[065] :012:CALL           v3 = v3:FindFirstChild(v5)
[066] :012:JUMPIF         if not v3 then -- goto #67
end
[067] :012:JUMPBACK       -- jump back to #52
[069] :013:GETIMPORT      v4 = workspace
[071] :013:GETTABLEKS     v3 = v4.UserData
[072] :013:LOADK          v6 = "User_"
[074] :013:GETTABLEKS     v7 = v0.UserId
[075] :013:CONCAT         v5 = v6 .. v7
[078] :013:CALL           v3 = v3:FindFirstChild(v5)
[080] :014:GETIMPORT      v4 = wait
[081] :014:CALL           v4()
[082] :014:LOADK          v6 = "Data"
[085] :014:CALL           v4 = v4:FindFirstChild(v6)
[086] :014:JUMPIF         if not v4 then -- goto #87
end
[087] :014:JUMPBACK       -- jump back to #79
[089] :015:GETIMPORT      v4 = wait
[090] :015:CALL           v4()
[092] :015:GETTABLEKS     v4 = v3.Data
[093] :015:LOADK          v6 = "MeleeLevel"
[096] :015:CALL           v4 = v4:FindFirstChild(v6)
[097] :015:JUMPIF         if not v4 then -- goto #98
end
[098] :015:JUMPBACK       -- jump back to #88
[100] :016:GETIMPORT      v4 = wait
[101] :016:CALL           v4()
[103] :016:GETTABLEKS     v4 = v3.Data
[104] :016:LOADK          v6 = "DefenseLevel"
[107] :016:CALL           v4 = v4:FindFirstChild(v6)
[108] :016:JUMPIF         if not v4 then -- goto #109
end
[109] :016:JUMPBACK       -- jump back to #99
[111] :017:GETTABLEKS     v4 = v3.Data
[112] :017:LOADK          v6 = "DefenseLevel"
[115] :017:CALL           v4 = v4:FindFirstChild(v6)
[117] :018:GETIMPORT      v5 = wait
[118] :018:CALL           v5()
[120] :018:GETTABLEKS     v5 = v3.Data
[121] :018:LOADK          v7 = "DevilFruit"
[124] :018:CALL           v5 = v5:FindFirstChild(v7)
[125] :018:JUMPIF         if not v5 then -- goto #126
end
[126] :018:JUMPBACK       -- jump back to #116
[128] :019:GETIMPORT      v5 = wait
[129] :019:CALL           v5()
[131] :019:GETTABLEKS     v5 = v3.Data
[132] :019:LOADK          v7 = "DevilFruit2"
[135] :019:CALL           v5 = v5:FindFirstChild(v7)
[136] :019:JUMPIF         if not v5 then -- goto #137
end
[137] :019:JUMPBACK       -- jump back to #127
[139] :020:GETIMPORT      v5 = wait
[140] :020:CALL           v5()
[141] :020:LOADK          v7 = "FinishedLoading"
[144] :020:CALL           v5 = v5:FindFirstChild(v7)
[145] :020:JUMPIF         if not v5 then -- goto #146
end
[146] :020:JUMPBACK       -- jump back to #138
[147] :021:LOADK          v7 = "FinishedLoading"
[150] :021:CALL           v5 = v5:FindFirstChild(v7)
[152] :021:SETGLOBAL      FinishedLoading = v5
[154] :022:GETIMPORT      v5 = wait
[155] :022:CALL           v5()
[157] :022:GETGLOBAL      v6 = FinishedLoading
[159] :022:GETTABLEKS     v5 = v6.Value
[161] :022:JUMPXEQKB      if v5 ~= true then -- goto #163
[162] :022:JUMPBACK       -- jump back to #153
end
[164] :023:GETTABLEKS     v5 = v3.Data
[165] :023:LOADK          v7 = "DevilFruit"
[168] :023:CALL           v5 = v5:FindFirstChild(v7)
[170] :023:SETGLOBAL      DevilFruit = v5
[172] :024:GETTABLEKS     v5 = v3.Data
[173] :024:LOADK          v7 = "DevilFruit2"
[176] :024:CALL           v5 = v5:FindFirstChild(v7)
[178] :024:SETGLOBAL      DevilFruit2 = v5
[180] :025:GETIMPORT      v7 = script
[182] :025:GETTABLEKS     v6 = v7.RemoteEvent
[184] :025:GETTABLEKS     v5 = v6.RemoteFunction
[187] :025:CALL           v5 = v5:InvokeServer()
[189] :025:SETGLOBAL      VTCoa = v5
[190] :027:LOADB          v5 = false
[192] :029:GETIMPORT      v6 = wait
[193] :029:CALL           v6()
[195] :029:GETIMPORT      v6 = workspace
[196] :029:LOADK          v8 = "ResourceHolder"
[199] :029:CALL           v6 = v6:FindFirstChild(v8)
[200] :029:JUMPIF         if not v6 then -- goto #201
end
[201] :029:JUMPBACK       -- jump back to #191
[203] :030:GETIMPORT      v6 = wait
[204] :030:CALL           v6()
[206] :030:GETIMPORT      v7 = workspace
[208] :030:GETTABLEKS     v6 = v7.ResourceHolder
[209] :030:LOADK          v9 = "Resources_"
[211] :030:GETTABLEKS     v10 = v0.UserId
[212] :030:CONCAT         v8 = v9 .. v10
[215] :030:CALL           v6 = v6:FindFirstChild(v8)
[216] :030:JUMPIF         if not v6 then -- goto #217
end
[217] :030:JUMPBACK       -- jump back to #202
[219] :031:GETIMPORT      v7 = workspace
[221] :031:GETTABLEKS     v6 = v7.ResourceHolder
[222] :031:LOADK          v9 = "Resources_"
[224] :031:GETTABLEKS     v10 = v0.UserId
[225] :031:CONCAT         v8 = v9 .. v10
[228] :031:CALL           v6 = v6:FindFirstChild(v8)
[230] :033:GETIMPORT      v9 = script
[232] :033:GETTABLEKS     v8 = v9.Parent
[234] :033:GETTABLEKS     v7 = v8.Parent
[235] :033:LOADK          v9 = "FDP"
[238] :033:CALL           v7 = v7:FindFirstChild(v9)
[239] :033:JUMPIF         if not v7 then -- goto #254
[241] :034:GETIMPORT      v7 = wait
[242] :034:CALL           v7()
[244] :034:GETIMPORT      v9 = script
[246] :034:GETTABLEKS     v8 = v9.Parent
[248] :034:GETTABLEKS     v7 = v8.Parent
[249] :034:LOADK          v9 = "FDP"
[252] :034:CALL           v7 = v7:FindFirstChild(v9)
[253] :034:JUMPIF         if not v7 then -- goto #254
end
end
[254] :034:JUMPBACK       -- jump back to #240
[256] :036:GETIMPORT      v7 = require
[258] :036:GETIMPORT      v12 = script
[260] :036:GETTABLEKS     v11 = v12.Parent
[262] :036:GETTABLEKS     v10 = v11.Parent
[264] :036:GETTABLEKS     v9 = v10.FDP
[266] :036:GETTABLEKS     v8 = v9.FDPModule
[267] :036:CALL           v7 = v7(v8)
[269] :036:SETGLOBAL      FDPModule = v7
[271] :037:GETIMPORT      v10 = script
[273] :037:GETTABLEKS     v9 = v10.Parent
[275] :037:GETTABLEKS     v8 = v9.Parent
[277] :037:GETTABLEKS     v7 = v8.FDP
[278] :037:LOADK          v9 = "Value"
[281] :037:CALL           v7 = v7:GetPropertyChangedSignal(v9)
[282] :037:DUPCLOSURE     v9 = function()
-- proto pool id: 0
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 13
-- size constants: 6
-- lineinfo gap: 24
-- max stack size: 5
-- is typed: false
[002] :038:GETIMPORT      v4 = script
[004] :038:GETTABLEKS     v3 = v4.Parent
[006] :038:GETTABLEKS     v2 = v3.Parent
[008] :038:GETTABLEKS     v1 = v2.FDP
[010] :038:GETTABLEKS     v0 = v1.Value
[012] :038:SETGLOBAL      FlightDisablers = v0
[013] :040:RETURN         return
end
[285] :037:CALL           v7:Connect(v9)
[286] :041:LOADN          v7 = 0
[288] :041:SETGLOBAL      FlightDisablers = v7
[289] :042:DUPCLOSURE     
local function AbilityActivated()
-- proto pool id: 2
-- num upvalues: 0
-- num inner protos: 1
-- size instructions: 7
-- size constants: 4
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :043:GETIMPORT      v0 = coroutine.wrap
[003] :043:DUPCLOSURE     v1 = function()
-- proto pool id: 1
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 7
-- size constants: 2
-- lineinfo gap: 24
-- max stack size: 3
-- is typed: false
[002] :044:GETGLOBAL      v0 = FDPModule
[003] :044:LOADN          v2 = 3
[006] :044:CALL           v0:AddFDP(v2)
[007] :045:RETURN         return
end
[004] :043:CALL           v0 = v0(v1)
[005] :046:MOVE           v1 = v0
[006] :046:CALL           v1()
[007] :047:RETURN         return
end
v7 = AbilityActivated
[291] :042:SETGLOBAL      AbilityActivated = v7
[292] :049:NEWCLOSURE     
local function Power1(p1, p2, p3)
-- proto pool id: 3
-- num upvalues: 3
-- num inner protos: 0
-- size instructions: 77
-- size constants: 22
-- lineinfo gap: 24
-- max stack size: 14
-- is typed: false
[002] :050:GETIMPORT      v4 = script
[004] :050:GETTABLEKS     v3 = v4.Parent
[006] :050:GETTABLEKS     v2 = v3.Parent
[008] :050:GETTABLEKS     v1 = v2.DF_Disabled
[010] :050:GETTABLEKS     v0 = v1.Value
[012] :050:JUMPXEQKB      if v0 == true then -- goto #14
[013] :050:RETURN         return
end
[014] :052:GETUPVAL       v2 = u_v3
[016] :052:GETTABLEKS     v1 = v2.Data
[018] :052:GETIMPORT      v6 = script
[020] :052:GETTABLEKS     v5 = v6.Power1
[022] :052:GETTABLEKS     v4 = v5.StatType
[024] :052:GETTABLEKS     v3 = v4.Value
[027] :052:CALL           v1 = v1:FindFirstChild(v3)
[029] :052:GETTABLEKS     v0 = v1.Value
[031] :053:GETIMPORT      v2 = script
[032] :053:LOADK          v4 = "Power1"
[035] :053:CALL           v2 = v2:FindFirstChild(v4)
[037] :053:GETTABLEKS     v1 = v2.Value
[039] :053:JUMPIFNOTLT    if v0 < v1 then -- goto #41
[040] :053:RETURN         return
end
[042] :055:GETIMPORT      v1 = Enum.UserInputState.Begin
[044] :055:JUMPIFNOTEQ    if p2 ~= v1 then -- goto #77
[046] :056:GETGLOBAL      v1 = AbilityActivated
[047] :056:CALL           v1()
[048] :058:GETUPVAL       v1 = u_v0
[051] :058:CALL           v1 = v1:GetMouse()
[053] :059:GETTABLEKS     v2 = v1.Hit
[055] :060:GETTABLEKS     v3 = v1.Target
[057] :061:GETIMPORT      v5 = script
[059] :061:GETTABLEKS     v4 = v5.RemoteEvent
[061] :061:GETGLOBAL      v6 = VTCoa
[062] :061:MOVE           v7 = p1
[063] :061:GETUPVAL       v8 = u_v1
[064] :061:MOVE           v9 = v2
[065] :061:MOVE           v10 = v3
[068] :061:CALL           v4:FireServer(v6, v7, v8, v9, v10)
[069] :062:GETUPVAL       v4 = u_v1
[071] :062:JUMPXEQKS      if v4 == "Contract" then -- goto #75
[072] :063:LOADK          v4 = "Free"
[073] :063:SETUPVAL       u_v1 = v4
[074] :063:RETURN         return
end
[075] :065:LOADK          v4 = "Contract"
[076] :065:SETUPVAL       u_v1 = v4
end
[077] :070:RETURN         return
end
v7 = Power1
[297] :049:SETGLOBAL      Power1 = v7
[298] :071:NEWCLOSURE     
local function Power2(p4, p5, p6)
-- proto pool id: 4
-- num upvalues: 3
-- num inner protos: 0
-- size instructions: 150
-- size constants: 49
-- lineinfo gap: 24
-- max stack size: 18
-- is typed: false
[002] :072:GETIMPORT      v4 = script
[004] :072:GETTABLEKS     v3 = v4.Parent
[006] :072:GETTABLEKS     v2 = v3.Parent
[008] :072:GETTABLEKS     v1 = v2.DF_Disabled
[010] :072:GETTABLEKS     v0 = v1.Value
[012] :072:JUMPXEQKB      if v0 == true then -- goto #14
[013] :072:RETURN         return
end
[014] :074:GETUPVAL       v2 = u_v3
[016] :074:GETTABLEKS     v1 = v2.Data
[018] :074:GETIMPORT      v6 = script
[020] :074:GETTABLEKS     v5 = v6.Power2
[022] :074:GETTABLEKS     v4 = v5.StatType
[024] :074:GETTABLEKS     v3 = v4.Value
[027] :074:CALL           v1 = v1:FindFirstChild(v3)
[029] :074:GETTABLEKS     v0 = v1.Value
[031] :075:GETIMPORT      v2 = script
[032] :075:LOADK          v4 = "Power2"
[035] :075:CALL           v2 = v2:FindFirstChild(v4)
[037] :075:GETTABLEKS     v1 = v2.Value
[039] :075:JUMPIFNOTLT    if v0 < v1 then -- goto #41
[040] :075:RETURN         return
end
[042] :077:GETIMPORT      v1 = Enum.UserInputState.Begin
[044] :077:JUMPIFNOTEQ    if p5 ~= v1 then -- goto #150
[045] :078:GETUPVAL       v1 = u_v2
[047] :078:JUMPXEQKB      if v1 == false then -- goto #49
[048] :078:RETURN         return
end
[049] :079:LOADB          v1 = false
[050] :079:SETUPVAL       u_v2 = v1
[052] :080:GETGLOBAL      v1 = AbilityActivated
[053] :080:CALL           v1()
[055] :082:GETIMPORT      v3 = game
[057] :082:GETTABLEKS     v2 = v3.Players
[059] :082:GETTABLEKS     v1 = v2.LocalPlayer
[061] :083:GETTABLEKS     v2 = v1.Character
[064] :084:CALL           v3 = v3:GetChildren()
[065] :085:LOADB          v4 = false
[066] :086:LOADN          v7 = 1
[067] :086:LENGTH         v5 = #v3
[068] :086:LOADN          v6 = 1
[069] :086:FORNPREP       for v7 = v7, v5, v6 do -- end at #76
[070] :087:GETTABLE       v9 = v3[v7]
[072] :087:GETTABLEKS     v8 = v9.ClassName
[074] :087:JUMPXEQKS      if v8 == "Humanoid" then -- goto #76
[075] :088:GETTABLE       v4 = v3[v7]
end
[076] :086:FORNLOOP       end -- iterate + jump to #69
[078] :091:JUMPXEQKB      if v4 == false then -- goto #80
[079] :091:RETURN         return
end
[081] :092:GETTABLEKS     v5 = v4.Health
[082] :092:LOADN          v6 = 0
[084] :092:JUMPIFNOTLT    if v6 < v5 then -- goto #124
[086] :093:GETIMPORT      v6 = workspace
[088] :093:GETTABLEKS     v5 = v6.ResourceHolder
[089] :093:LOADK          v8 = "Resources_"
[091] :093:GETTABLEKS     v9 = v1.UserId
[092] :093:CONCAT         v7 = v8 .. v9
[095] :093:CALL           v5 = v5:FindFirstChild(v7)
[097] :094:GETIMPORT      v6 = Instance.new
[098] :094:LOADK          v7 = "Animation"
[099] :094:CALL           v6 = v6(v7)
[100] :095:LOADK          v7 = "https://www.roblox.com/item.aspx?id=584033336"
[102] :095:SETTABLEKS     v6.AnimationId = v7
[103] :096:LOADK          v7 = "ReturnP2"
[105] :096:SETTABLEKS     v6.Name = v7
[107] :097:SETTABLEKS     v6.Parent = v4
[108] :098:MOVE           v9 = v6
[111] :098:CALL           v7 = v7:LoadAnimation(v9)
[114] :099:CALL           v8:Play()
[115] :100:LOADN          v10 = 8
[118] :100:CALL           v8:AdjustSpeed(v10)
[119] :101:LOADN          v10 = 3
[120] :101:LOADK          v11 = 0.1
[123] :101:CALL           v8:AdjustWeight(v10, v11)
end
[126] :105:CALL           v5 = v5:GetMouse()
[128] :106:GETTABLEKS     v6 = v5.Hit
[130] :107:GETTABLEKS     v7 = v5.Target
[132] :108:GETIMPORT      v9 = script
[134] :108:GETTABLEKS     v8 = v9.RemoteEvent
[136] :108:GETGLOBAL      v10 = VTCoa
[137] :108:MOVE           v11 = p4
[138] :108:GETUPVAL       v12 = u_v1
[139] :108:MOVE           v13 = v6
[140] :108:MOVE           v14 = v7
[143] :108:CALL           v8:FireServer(v10, v11, v12, v13, v14)
[145] :110:GETIMPORT      v8 = wait
[146] :110:LOADN          v9 = 1
[147] :110:CALL           v8(v9)
[148] :111:LOADB          v8 = true
[149] :111:SETUPVAL       u_v2 = v8
end
[150] :113:RETURN         return
end
v7 = Power2
[303] :071:SETGLOBAL      Power2 = v7
[304] :114:NEWCLOSURE     
local function Power3(p7, p8, p9)
-- proto pool id: 5
-- num upvalues: 3
-- num inner protos: 0
-- size instructions: 69
-- size constants: 20
-- lineinfo gap: 24
-- max stack size: 14
-- is typed: false
[002] :115:GETIMPORT      v4 = script
[004] :115:GETTABLEKS     v3 = v4.Parent
[006] :115:GETTABLEKS     v2 = v3.Parent
[008] :115:GETTABLEKS     v1 = v2.DF_Disabled
[010] :115:GETTABLEKS     v0 = v1.Value
[012] :115:JUMPXEQKB      if v0 == true then -- goto #14
[013] :115:RETURN         return
end
[014] :117:GETUPVAL       v2 = u_v3
[016] :117:GETTABLEKS     v1 = v2.Data
[018] :117:GETIMPORT      v6 = script
[020] :117:GETTABLEKS     v5 = v6.Power3
[022] :117:GETTABLEKS     v4 = v5.StatType
[024] :117:GETTABLEKS     v3 = v4.Value
[027] :117:CALL           v1 = v1:FindFirstChild(v3)
[029] :117:GETTABLEKS     v0 = v1.Value
[031] :118:GETIMPORT      v2 = script
[032] :118:LOADK          v4 = "Power3"
[035] :118:CALL           v2 = v2:FindFirstChild(v4)
[037] :118:GETTABLEKS     v1 = v2.Value
[039] :118:JUMPIFNOTLT    if v0 < v1 then -- goto #41
[040] :118:RETURN         return
end
[042] :120:GETIMPORT      v1 = Enum.UserInputState.Begin
[044] :120:JUMPIFNOTEQ    if p8 ~= v1 then -- goto #69
[046] :121:GETGLOBAL      v1 = AbilityActivated
[047] :121:CALL           v1()
[048] :123:GETUPVAL       v1 = u_v0
[051] :123:CALL           v1 = v1:GetMouse()
[053] :124:GETTABLEKS     v2 = v1.Hit
[055] :125:GETTABLEKS     v3 = v1.Target
[057] :126:GETIMPORT      v5 = script
[059] :126:GETTABLEKS     v4 = v5.RemoteEvent
[061] :126:GETGLOBAL      v6 = VTCoa
[062] :126:MOVE           v7 = p7
[063] :126:GETUPVAL       v8 = u_v1
[064] :126:MOVE           v9 = v2
[065] :126:MOVE           v10 = v3
[068] :126:CALL           v4:FireServer(v6, v7, v8, v9, v10)
end
[069] :129:RETURN         return
end
v7 = Power3
[309] :114:SETGLOBAL      Power3 = v7
[310] :130:NEWCLOSURE     
local function Power4(p10, p11, p12)
-- proto pool id: 6
-- num upvalues: 3
-- num inner protos: 0
-- size instructions: 69
-- size constants: 20
-- lineinfo gap: 24
-- max stack size: 14
-- is typed: false
[002] :131:GETIMPORT      v4 = script
[004] :131:GETTABLEKS     v3 = v4.Parent
[006] :131:GETTABLEKS     v2 = v3.Parent
[008] :131:GETTABLEKS     v1 = v2.DF_Disabled
[010] :131:GETTABLEKS     v0 = v1.Value
[012] :131:JUMPXEQKB      if v0 == true then -- goto #14
[013] :131:RETURN         return
end
[014] :133:GETUPVAL       v2 = u_v3
[016] :133:GETTABLEKS     v1 = v2.Data
[018] :133:GETIMPORT      v6 = script
[020] :133:GETTABLEKS     v5 = v6.Power4
[022] :133:GETTABLEKS     v4 = v5.StatType
[024] :133:GETTABLEKS     v3 = v4.Value
[027] :133:CALL           v1 = v1:FindFirstChild(v3)
[029] :133:GETTABLEKS     v0 = v1.Value
[031] :134:GETIMPORT      v2 = script
[032] :134:LOADK          v4 = "Power4"
[035] :134:CALL           v2 = v2:FindFirstChild(v4)
[037] :134:GETTABLEKS     v1 = v2.Value
[039] :134:JUMPIFNOTLT    if v0 < v1 then -- goto #41
[040] :134:RETURN         return
end
[042] :136:GETIMPORT      v1 = Enum.UserInputState.Begin
[044] :136:JUMPIFNOTEQ    if p11 ~= v1 then -- goto #69
[046] :137:GETGLOBAL      v1 = AbilityActivated
[047] :137:CALL           v1()
[048] :138:GETUPVAL       v1 = u_v0
[051] :138:CALL           v1 = v1:GetMouse()
[053] :138:GETTABLEKS     v2 = v1.Hit
[055] :138:GETTABLEKS     v3 = v1.Target
[057] :139:GETIMPORT      v5 = script
[059] :139:GETTABLEKS     v4 = v5.RemoteEvent
[061] :139:GETGLOBAL      v6 = VTCoa
[062] :139:MOVE           v7 = p10
[063] :139:GETUPVAL       v8 = u_v1
[064] :139:MOVE           v9 = v2
[065] :139:MOVE           v10 = v3
[068] :139:CALL           v4:FireServer(v6, v7, v8, v9, v10)
end
[069] :141:RETURN         return
end
v7 = Power4
[315] :130:SETGLOBAL      Power4 = v7
[316] :142:DUPCLOSURE     
local function Power5(p13, p14, p15)
-- proto pool id: 7
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 14
-- size constants: 5
-- lineinfo gap: 24
-- max stack size: 8
-- is typed: false
[002] :143:GETIMPORT      v4 = script
[004] :143:GETTABLEKS     v3 = v4.Parent
[006] :143:GETTABLEKS     v2 = v3.Parent
[008] :143:GETTABLEKS     v1 = v2.DF_Disabled
[010] :143:GETTABLEKS     v0 = v1.Value
[012] :143:JUMPXEQKB      if v0 == true then -- goto #14
[013] :143:RETURN         return
end
[014] :145:RETURN         return
end
v7 = Power5
[318] :142:SETGLOBAL      Power5 = v7
[319] :146:DUPCLOSURE     
local function Power6(p16, p17, p18)
-- proto pool id: 8
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 14
-- size constants: 5
-- lineinfo gap: 24
-- max stack size: 8
-- is typed: false
[002] :147:GETIMPORT      v4 = script
[004] :147:GETTABLEKS     v3 = v4.Parent
[006] :147:GETTABLEKS     v2 = v3.Parent
[008] :147:GETTABLEKS     v1 = v2.DF_Disabled
[010] :147:GETTABLEKS     v0 = v1.Value
[012] :147:JUMPXEQKB      if v0 == true then -- goto #14
[013] :147:RETURN         return
end
[014] :149:RETURN         return
end
v7 = Power6
[321] :146:SETGLOBAL      Power6 = v7
[323] :151:GETIMPORT      v7 = wait
[324] :151:CALL           v7()
[326] :151:GETIMPORT      v9 = script
[328] :151:GETTABLEKS     v8 = v9.Parent
[330] :151:GETTABLEKS     v7 = v8.Parent
[331] :151:LOADK          v9 = "DamageScript"
[334] :151:CALL           v7 = v7:FindFirstChild(v9)
[335] :151:JUMPIF         if not v7 then -- goto #336
end
[336] :151:JUMPBACK       -- jump back to #322
[338] :152:GETIMPORT      v7 = wait
[339] :152:CALL           v7()
[341] :152:GETIMPORT      v11 = script
[343] :152:GETTABLEKS     v10 = v11.Parent
[345] :152:GETTABLEKS     v9 = v10.Parent
[347] :152:GETTABLEKS     v8 = v9.DamageScript
[349] :152:GETTABLEKS     v7 = v8.Disabled
[351] :152:JUMPXEQKB      if v7 ~= false then -- goto #353
[352] :152:JUMPBACK       -- jump back to #337
end
[353] :153:LOADNIL        v7 = nil
[355] :153:SETGLOBAL      Button1 = v7
[356] :154:LOADNIL        v7 = nil
[358] :154:SETGLOBAL      Button2 = v7
[359] :155:LOADNIL        v7 = nil
[361] :155:SETGLOBAL      Button3 = v7
[362] :156:LOADNIL        v7 = nil
[364] :156:SETGLOBAL      Button4 = v7
[365] :157:LOADNIL        v7 = nil
[367] :157:SETGLOBAL      Button5 = v7
[368] :158:LOADNIL        v7 = nil
[370] :158:SETGLOBAL      Button6 = v7
[371] :159:LOADNIL        v7 = nil
[373] :159:SETGLOBAL      Button7 = v7
[374] :160:LOADNIL        v7 = nil
[376] :160:SETGLOBAL      Button8 = v7
[377] :161:LOADNIL        v7 = nil
[379] :161:SETGLOBAL      Button9 = v7
[380] :162:LOADNIL        v7 = nil
[382] :162:SETGLOBAL      Button10 = v7
[383] :163:LOADNIL        v7 = nil
[385] :163:SETGLOBAL      Button11 = v7
[386] :164:LOADNIL        v7 = nil
[388] :164:SETGLOBAL      Button12 = v7
[389] :165:LOADNIL        v7 = nil
[391] :165:SETGLOBAL      SP = v7
[392] :166:DUPCLOSURE     
local function NewSP()
-- proto pool id: 9
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 183
-- size constants: 17
-- lineinfo gap: 24
-- max stack size: 5
-- is typed: false
[002] :167:GETGLOBAL      v0 = Button1
[004] :167:JUMPXEQKNIL    if v0 ~= nil then -- goto #15
[006] :167:GETGLOBAL      v0 = Button1
[008] :167:GETIMPORT      v1 = Color3.fromRGB
[009] :167:LOADN          v2 = 255
[010] :167:LOADN          v3 = 255
[011] :167:LOADN          v4 = 255
[012] :167:CALL           v1 = v1(v2, v3, v4)
[014] :167:SETTABLEKS     v0.ImageColor3 = v1
end
[016] :168:GETGLOBAL      v0 = Button2
[018] :168:JUMPXEQKNIL    if v0 ~= nil then -- goto #29
[020] :168:GETGLOBAL      v0 = Button2
[022] :168:GETIMPORT      v1 = Color3.fromRGB
[023] :168:LOADN          v2 = 255
[024] :168:LOADN          v3 = 255
[025] :168:LOADN          v4 = 255
[026] :168:CALL           v1 = v1(v2, v3, v4)
[028] :168:SETTABLEKS     v0.ImageColor3 = v1
end
[030] :169:GETGLOBAL      v0 = Button3
[032] :169:JUMPXEQKNIL    if v0 ~= nil then -- goto #43
[034] :169:GETGLOBAL      v0 = Button3
[036] :169:GETIMPORT      v1 = Color3.fromRGB
[037] :169:LOADN          v2 = 255
[038] :169:LOADN          v3 = 255
[039] :169:LOADN          v4 = 255
[040] :169:CALL           v1 = v1(v2, v3, v4)
[042] :169:SETTABLEKS     v0.ImageColor3 = v1
end
[044] :170:GETGLOBAL      v0 = Button4
[046] :170:JUMPXEQKNIL    if v0 ~= nil then -- goto #57
[048] :170:GETGLOBAL      v0 = Button4
[050] :170:GETIMPORT      v1 = Color3.fromRGB
[051] :170:LOADN          v2 = 255
[052] :170:LOADN          v3 = 255
[053] :170:LOADN          v4 = 255
[054] :170:CALL           v1 = v1(v2, v3, v4)
[056] :170:SETTABLEKS     v0.ImageColor3 = v1
end
[058] :171:GETGLOBAL      v0 = Button5
[060] :171:JUMPXEQKNIL    if v0 ~= nil then -- goto #71
[062] :171:GETGLOBAL      v0 = Button5
[064] :171:GETIMPORT      v1 = Color3.fromRGB
[065] :171:LOADN          v2 = 255
[066] :171:LOADN          v3 = 255
[067] :171:LOADN          v4 = 255
[068] :171:CALL           v1 = v1(v2, v3, v4)
[070] :171:SETTABLEKS     v0.ImageColor3 = v1
end
[072] :172:GETGLOBAL      v0 = Button6
[074] :172:JUMPXEQKNIL    if v0 ~= nil then -- goto #85
[076] :172:GETGLOBAL      v0 = Button6
[078] :172:GETIMPORT      v1 = Color3.fromRGB
[079] :172:LOADN          v2 = 255
[080] :172:LOADN          v3 = 255
[081] :172:LOADN          v4 = 255
[082] :172:CALL           v1 = v1(v2, v3, v4)
[084] :172:SETTABLEKS     v0.ImageColor3 = v1
end
[086] :173:GETGLOBAL      v0 = Button7
[088] :173:JUMPXEQKNIL    if v0 ~= nil then -- goto #99
[090] :173:GETGLOBAL      v0 = Button7
[092] :173:GETIMPORT      v1 = Color3.fromRGB
[093] :173:LOADN          v2 = 255
[094] :173:LOADN          v3 = 255
[095] :173:LOADN          v4 = 255
[096] :173:CALL           v1 = v1(v2, v3, v4)
[098] :173:SETTABLEKS     v0.ImageColor3 = v1
end
[100] :174:GETGLOBAL      v0 = Button8
[102] :174:JUMPXEQKNIL    if v0 ~= nil then -- goto #113
[104] :174:GETGLOBAL      v0 = Button8
[106] :174:GETIMPORT      v1 = Color3.fromRGB
[107] :174:LOADN          v2 = 255
[108] :174:LOADN          v3 = 255
[109] :174:LOADN          v4 = 255
[110] :174:CALL           v1 = v1(v2, v3, v4)
[112] :174:SETTABLEKS     v0.ImageColor3 = v1
end
[114] :175:GETGLOBAL      v0 = Button9
[116] :175:JUMPXEQKNIL    if v0 ~= nil then -- goto #127
[118] :175:GETGLOBAL      v0 = Button9
[120] :175:GETIMPORT      v1 = Color3.fromRGB
[121] :175:LOADN          v2 = 255
[122] :175:LOADN          v3 = 255
[123] :175:LOADN          v4 = 255
[124] :175:CALL           v1 = v1(v2, v3, v4)
[126] :175:SETTABLEKS     v0.ImageColor3 = v1
end
[128] :176:GETGLOBAL      v0 = Button10
[130] :176:JUMPXEQKNIL    if v0 ~= nil then -- goto #141
[132] :176:GETGLOBAL      v0 = Button10
[134] :176:GETIMPORT      v1 = Color3.fromRGB
[135] :176:LOADN          v2 = 255
[136] :176:LOADN          v3 = 255
[137] :176:LOADN          v4 = 255
[138] :176:CALL           v1 = v1(v2, v3, v4)
[140] :176:SETTABLEKS     v0.ImageColor3 = v1
end
[142] :177:GETGLOBAL      v0 = Button11
[144] :177:JUMPXEQKNIL    if v0 ~= nil then -- goto #155
[146] :177:GETGLOBAL      v0 = Button11
[148] :177:GETIMPORT      v1 = Color3.fromRGB
[149] :177:LOADN          v2 = 255
[150] :177:LOADN          v3 = 255
[151] :177:LOADN          v4 = 255
[152] :177:CALL           v1 = v1(v2, v3, v4)
[154] :177:SETTABLEKS     v0.ImageColor3 = v1
end
[156] :178:GETGLOBAL      v0 = Button12
[158] :178:JUMPXEQKNIL    if v0 ~= nil then -- goto #169
[160] :178:GETGLOBAL      v0 = Button12
[162] :178:GETIMPORT      v1 = Color3.fromRGB
[163] :178:LOADN          v2 = 255
[164] :178:LOADN          v3 = 255
[165] :178:LOADN          v4 = 255
[166] :178:CALL           v1 = v1(v2, v3, v4)
[168] :178:SETTABLEKS     v0.ImageColor3 = v1
end
[170] :179:GETGLOBAL      v0 = SP
[172] :179:JUMPXEQKNIL    if v0 ~= nil then -- goto #183
[174] :180:GETGLOBAL      v0 = SP
[176] :180:GETIMPORT      v1 = Color3.fromRGB
[177] :180:LOADN          v2 = 127
[178] :180:LOADN          v3 = 255
[179] :180:LOADN          v4 = 127
[180] :180:CALL           v1 = v1(v2, v3, v4)
[182] :180:SETTABLEKS     v0.ImageColor3 = v1
end
[183] :182:RETURN         return
end
v7 = NewSP
[394] :166:SETGLOBAL      NewSP = v7
[396] :183:GETIMPORT      v8 = game
[397] :183:LOADK          v10 = "UserInputService"
[400] :183:CALL           v8 = v8:GetService(v10)
[402] :183:GETTABLEKS     v7 = v8.TouchStarted
[403] :183:DUPCLOSURE     v9 = function(p19, p20)
-- proto pool id: 10
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 223
-- size constants: 32
-- lineinfo gap: 24
-- max stack size: 7
-- is typed: false
[002] :184:JUMPXEQKB      if p20 == false then -- goto #223
[004] :184:GETGLOBAL      v0 = SP
[006] :184:JUMPXEQKNIL    if v0 ~= nil then -- goto #223
[008] :185:GETGLOBAL      v0 = SP
[010] :185:GETGLOBAL      v1 = Button1
[012] :185:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #25
[014] :185:GETGLOBAL      v0 = Power1
[016] :185:GETIMPORT      v4 = script
[018] :185:GETTABLEKS     v2 = v4.Name
[019] :185:LOADK          v3 = "Power1"
[020] :185:CONCAT         v1 = v2 .. v3
[022] :185:GETIMPORT      v2 = Enum.UserInputState.Begin
[023] :185:LOADNIL        v3 = nil
[024] :185:CALL           v0(v1, v2, v3)
end
[026] :186:GETGLOBAL      v0 = SP
[028] :186:GETGLOBAL      v1 = Button2
[030] :186:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #43
[032] :186:GETGLOBAL      v0 = Power2
[034] :186:GETIMPORT      v4 = script
[036] :186:GETTABLEKS     v2 = v4.Name
[037] :186:LOADK          v3 = "Power2"
[038] :186:CONCAT         v1 = v2 .. v3
[040] :186:GETIMPORT      v2 = Enum.UserInputState.Begin
[041] :186:LOADNIL        v3 = nil
[042] :186:CALL           v0(v1, v2, v3)
end
[044] :187:GETGLOBAL      v0 = SP
[046] :187:GETGLOBAL      v1 = Button3
[048] :187:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #61
[050] :187:GETGLOBAL      v0 = Power3
[052] :187:GETIMPORT      v4 = script
[054] :187:GETTABLEKS     v2 = v4.Name
[055] :187:LOADK          v3 = "Power3"
[056] :187:CONCAT         v1 = v2 .. v3
[058] :187:GETIMPORT      v2 = Enum.UserInputState.Begin
[059] :187:LOADNIL        v3 = nil
[060] :187:CALL           v0(v1, v2, v3)
end
[062] :188:GETGLOBAL      v0 = SP
[064] :188:GETGLOBAL      v1 = Button4
[066] :188:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #79
[068] :188:GETGLOBAL      v0 = Power4
[070] :188:GETIMPORT      v4 = script
[072] :188:GETTABLEKS     v2 = v4.Name
[073] :188:LOADK          v3 = "Power4"
[074] :188:CONCAT         v1 = v2 .. v3
[076] :188:GETIMPORT      v2 = Enum.UserInputState.Begin
[077] :188:LOADNIL        v3 = nil
[078] :188:CALL           v0(v1, v2, v3)
end
[080] :189:GETGLOBAL      v0 = SP
[082] :189:GETGLOBAL      v1 = Button5
[084] :189:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #97
[086] :189:GETGLOBAL      v0 = Power5
[088] :189:GETIMPORT      v4 = script
[090] :189:GETTABLEKS     v2 = v4.Name
[091] :189:LOADK          v3 = "Power5"
[092] :189:CONCAT         v1 = v2 .. v3
[094] :189:GETIMPORT      v2 = Enum.UserInputState.Begin
[095] :189:LOADNIL        v3 = nil
[096] :189:CALL           v0(v1, v2, v3)
end
[098] :190:GETGLOBAL      v0 = SP
[100] :190:GETGLOBAL      v1 = Button6
[102] :190:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #115
[104] :190:GETGLOBAL      v0 = Power6
[106] :190:GETIMPORT      v4 = script
[108] :190:GETTABLEKS     v2 = v4.Name
[109] :190:LOADK          v3 = "Power6"
[110] :190:CONCAT         v1 = v2 .. v3
[112] :190:GETIMPORT      v2 = Enum.UserInputState.Begin
[113] :190:LOADNIL        v3 = nil
[114] :190:CALL           v0(v1, v2, v3)
end
[116] :191:GETGLOBAL      v0 = SP
[118] :191:GETGLOBAL      v1 = Button7
[120] :191:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #133
[122] :191:GETGLOBAL      v0 = Power1
[124] :191:GETIMPORT      v4 = script
[126] :191:GETTABLEKS     v2 = v4.Name
[127] :191:LOADK          v3 = "Power7"
[128] :191:CONCAT         v1 = v2 .. v3
[130] :191:GETIMPORT      v2 = Enum.UserInputState.Begin
[131] :191:LOADNIL        v3 = nil
[132] :191:CALL           v0(v1, v2, v3)
end
[134] :192:GETGLOBAL      v0 = SP
[136] :192:GETGLOBAL      v1 = Button8
[138] :192:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #151
[140] :192:GETGLOBAL      v0 = Power2
[142] :192:GETIMPORT      v4 = script
[144] :192:GETTABLEKS     v2 = v4.Name
[145] :192:LOADK          v3 = "Power8"
[146] :192:CONCAT         v1 = v2 .. v3
[148] :192:GETIMPORT      v2 = Enum.UserInputState.Begin
[149] :192:LOADNIL        v3 = nil
[150] :192:CALL           v0(v1, v2, v3)
end
[152] :193:GETGLOBAL      v0 = SP
[154] :193:GETGLOBAL      v1 = Button9
[156] :193:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #169
[158] :193:GETGLOBAL      v0 = Power3
[160] :193:GETIMPORT      v4 = script
[162] :193:GETTABLEKS     v2 = v4.Name
[163] :193:LOADK          v3 = "Power9"
[164] :193:CONCAT         v1 = v2 .. v3
[166] :193:GETIMPORT      v2 = Enum.UserInputState.Begin
[167] :193:LOADNIL        v3 = nil
[168] :193:CALL           v0(v1, v2, v3)
end
[170] :194:GETGLOBAL      v0 = SP
[172] :194:GETGLOBAL      v1 = Button10
[174] :194:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #187
[176] :194:GETGLOBAL      v0 = Power4
[178] :194:GETIMPORT      v4 = script
[180] :194:GETTABLEKS     v2 = v4.Name
[181] :194:LOADK          v3 = "Power10"
[182] :194:CONCAT         v1 = v2 .. v3
[184] :194:GETIMPORT      v2 = Enum.UserInputState.Begin
[185] :194:LOADNIL        v3 = nil
[186] :194:CALL           v0(v1, v2, v3)
end
[188] :195:GETGLOBAL      v0 = SP
[190] :195:GETGLOBAL      v1 = Button11
[192] :195:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #205
[194] :195:GETGLOBAL      v0 = Power5
[196] :195:GETIMPORT      v4 = script
[198] :195:GETTABLEKS     v2 = v4.Name
[199] :195:LOADK          v3 = "Power11"
[200] :195:CONCAT         v1 = v2 .. v3
[202] :195:GETIMPORT      v2 = Enum.UserInputState.Begin
[203] :195:LOADNIL        v3 = nil
[204] :195:CALL           v0(v1, v2, v3)
end
[206] :196:GETGLOBAL      v0 = SP
[208] :196:GETGLOBAL      v1 = Button12
[210] :196:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #223
[212] :196:GETGLOBAL      v0 = Power6
[214] :196:GETIMPORT      v4 = script
[216] :196:GETTABLEKS     v2 = v4.Name
[217] :196:LOADK          v3 = "Power12"
[218] :196:CONCAT         v1 = v2 .. v3
[220] :196:GETIMPORT      v2 = Enum.UserInputState.Begin
[221] :196:LOADNIL        v3 = nil
[222] :196:CALL           v0(v1, v2, v3)
end
end
end
[223] :198:RETURN         return
end
[406] :183:CALL           v7:Connect(v9)
[408] :199:GETIMPORT      v8 = game
[409] :199:LOADK          v10 = "UserInputService"
[412] :199:CALL           v8 = v8:GetService(v10)
[414] :199:GETTABLEKS     v7 = v8.TouchEnded
[415] :199:DUPCLOSURE     v9 = function(p21, p22)
-- proto pool id: 11
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 223
-- size constants: 32
-- lineinfo gap: 24
-- max stack size: 7
-- is typed: false
[002] :200:JUMPXEQKB      if p22 == false then -- goto #223
[004] :200:GETGLOBAL      v0 = SP
[006] :200:JUMPXEQKNIL    if v0 ~= nil then -- goto #223
[008] :201:GETGLOBAL      v0 = SP
[010] :201:GETGLOBAL      v1 = Button1
[012] :201:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #25
[014] :201:GETGLOBAL      v0 = Power1
[016] :201:GETIMPORT      v4 = script
[018] :201:GETTABLEKS     v2 = v4.Name
[019] :201:LOADK          v3 = "Power1"
[020] :201:CONCAT         v1 = v2 .. v3
[022] :201:GETIMPORT      v2 = Enum.UserInputState.End
[023] :201:LOADNIL        v3 = nil
[024] :201:CALL           v0(v1, v2, v3)
end
[026] :202:GETGLOBAL      v0 = SP
[028] :202:GETGLOBAL      v1 = Button2
[030] :202:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #43
[032] :202:GETGLOBAL      v0 = Power2
[034] :202:GETIMPORT      v4 = script
[036] :202:GETTABLEKS     v2 = v4.Name
[037] :202:LOADK          v3 = "Power2"
[038] :202:CONCAT         v1 = v2 .. v3
[040] :202:GETIMPORT      v2 = Enum.UserInputState.End
[041] :202:LOADNIL        v3 = nil
[042] :202:CALL           v0(v1, v2, v3)
end
[044] :203:GETGLOBAL      v0 = SP
[046] :203:GETGLOBAL      v1 = Button3
[048] :203:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #61
[050] :203:GETGLOBAL      v0 = Power3
[052] :203:GETIMPORT      v4 = script
[054] :203:GETTABLEKS     v2 = v4.Name
[055] :203:LOADK          v3 = "Power3"
[056] :203:CONCAT         v1 = v2 .. v3
[058] :203:GETIMPORT      v2 = Enum.UserInputState.End
[059] :203:LOADNIL        v3 = nil
[060] :203:CALL           v0(v1, v2, v3)
end
[062] :204:GETGLOBAL      v0 = SP
[064] :204:GETGLOBAL      v1 = Button4
[066] :204:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #79
[068] :204:GETGLOBAL      v0 = Power4
[070] :204:GETIMPORT      v4 = script
[072] :204:GETTABLEKS     v2 = v4.Name
[073] :204:LOADK          v3 = "Power4"
[074] :204:CONCAT         v1 = v2 .. v3
[076] :204:GETIMPORT      v2 = Enum.UserInputState.End
[077] :204:LOADNIL        v3 = nil
[078] :204:CALL           v0(v1, v2, v3)
end
[080] :205:GETGLOBAL      v0 = SP
[082] :205:GETGLOBAL      v1 = Button5
[084] :205:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #97
[086] :205:GETGLOBAL      v0 = Power5
[088] :205:GETIMPORT      v4 = script
[090] :205:GETTABLEKS     v2 = v4.Name
[091] :205:LOADK          v3 = "Power5"
[092] :205:CONCAT         v1 = v2 .. v3
[094] :205:GETIMPORT      v2 = Enum.UserInputState.End
[095] :205:LOADNIL        v3 = nil
[096] :205:CALL           v0(v1, v2, v3)
end
[098] :206:GETGLOBAL      v0 = SP
[100] :206:GETGLOBAL      v1 = Button6
[102] :206:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #115
[104] :206:GETGLOBAL      v0 = Power6
[106] :206:GETIMPORT      v4 = script
[108] :206:GETTABLEKS     v2 = v4.Name
[109] :206:LOADK          v3 = "Power6"
[110] :206:CONCAT         v1 = v2 .. v3
[112] :206:GETIMPORT      v2 = Enum.UserInputState.End
[113] :206:LOADNIL        v3 = nil
[114] :206:CALL           v0(v1, v2, v3)
end
[116] :207:GETGLOBAL      v0 = SP
[118] :207:GETGLOBAL      v1 = Button7
[120] :207:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #133
[122] :207:GETGLOBAL      v0 = Power1
[124] :207:GETIMPORT      v4 = script
[126] :207:GETTABLEKS     v2 = v4.Name
[127] :207:LOADK          v3 = "Power7"
[128] :207:CONCAT         v1 = v2 .. v3
[130] :207:GETIMPORT      v2 = Enum.UserInputState.End
[131] :207:LOADNIL        v3 = nil
[132] :207:CALL           v0(v1, v2, v3)
end
[134] :208:GETGLOBAL      v0 = SP
[136] :208:GETGLOBAL      v1 = Button8
[138] :208:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #151
[140] :208:GETGLOBAL      v0 = Power2
[142] :208:GETIMPORT      v4 = script
[144] :208:GETTABLEKS     v2 = v4.Name
[145] :208:LOADK          v3 = "Power8"
[146] :208:CONCAT         v1 = v2 .. v3
[148] :208:GETIMPORT      v2 = Enum.UserInputState.End
[149] :208:LOADNIL        v3 = nil
[150] :208:CALL           v0(v1, v2, v3)
end
[152] :209:GETGLOBAL      v0 = SP
[154] :209:GETGLOBAL      v1 = Button9
[156] :209:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #169
[158] :209:GETGLOBAL      v0 = Power3
[160] :209:GETIMPORT      v4 = script
[162] :209:GETTABLEKS     v2 = v4.Name
[163] :209:LOADK          v3 = "Power9"
[164] :209:CONCAT         v1 = v2 .. v3
[166] :209:GETIMPORT      v2 = Enum.UserInputState.End
[167] :209:LOADNIL        v3 = nil
[168] :209:CALL           v0(v1, v2, v3)
end
[170] :210:GETGLOBAL      v0 = SP
[172] :210:GETGLOBAL      v1 = Button10
[174] :210:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #187
[176] :210:GETGLOBAL      v0 = Power4
[178] :210:GETIMPORT      v4 = script
[180] :210:GETTABLEKS     v2 = v4.Name
[181] :210:LOADK          v3 = "Power10"
[182] :210:CONCAT         v1 = v2 .. v3
[184] :210:GETIMPORT      v2 = Enum.UserInputState.End
[185] :210:LOADNIL        v3 = nil
[186] :210:CALL           v0(v1, v2, v3)
end
[188] :211:GETGLOBAL      v0 = SP
[190] :211:GETGLOBAL      v1 = Button11
[192] :211:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #205
[194] :211:GETGLOBAL      v0 = Power5
[196] :211:GETIMPORT      v4 = script
[198] :211:GETTABLEKS     v2 = v4.Name
[199] :211:LOADK          v3 = "Power11"
[200] :211:CONCAT         v1 = v2 .. v3
[202] :211:GETIMPORT      v2 = Enum.UserInputState.End
[203] :211:LOADNIL        v3 = nil
[204] :211:CALL           v0(v1, v2, v3)
end
[206] :212:GETGLOBAL      v0 = SP
[208] :212:GETGLOBAL      v1 = Button12
[210] :212:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #223
[212] :212:GETGLOBAL      v0 = Power6
[214] :212:GETIMPORT      v4 = script
[216] :212:GETTABLEKS     v2 = v4.Name
[217] :212:LOADK          v3 = "Power12"
[218] :212:CONCAT         v1 = v2 .. v3
[220] :212:GETIMPORT      v2 = Enum.UserInputState.End
[221] :212:LOADNIL        v3 = nil
[222] :212:CALL           v0(v1, v2, v3)
end
end
end
[223] :214:RETURN         return
end
[418] :199:CALL           v7:Connect(v9)
[419] :215:DUPCLOSURE     
local function Update(p23, p24)
-- proto pool id: 24
-- num upvalues: 2
-- num inner protos: 12
-- size instructions: 1130
-- size constants: 83
-- lineinfo gap: 24
-- max stack size: 15
-- is typed: false
[001] :216:GETUPVAL       v1 = u_v3
[003] :216:GETTABLEKS     v0 = v1.Data
[004] :216:LOADK          v2 = "DevilFruit"
[007] :216:CALL           v0 = v0:FindFirstChild(v2)
[008] :217:GETUPVAL       v2 = u_v3
[010] :217:GETTABLEKS     v1 = v2.Data
[011] :217:LOADK          v3 = "DevilFruit2"
[014] :217:CALL           v1 = v1:FindFirstChild(v3)
[016] :218:JUMPXEQKN      if p23 == 1 then -- goto #573
[018] :219:GETIMPORT      v2 = game
[019] :219:LOADK          v4 = "ContextActionService"
[022] :219:CALL           v2 = v2:GetService(v4)
[024] :219:GETIMPORT      v7 = script
[026] :219:GETTABLEKS     v5 = v7.Name
[027] :219:LOADK          v6 = "Power1"
[028] :219:CONCAT         v4 = v5 .. v6
[031] :219:CALL           v2:UnbindAction(v4)
[033] :220:GETIMPORT      v2 = game
[034] :220:LOADK          v4 = "ContextActionService"
[037] :220:CALL           v2 = v2:GetService(v4)
[039] :220:GETIMPORT      v7 = script
[041] :220:GETTABLEKS     v5 = v7.Name
[042] :220:LOADK          v6 = "Power2"
[043] :220:CONCAT         v4 = v5 .. v6
[046] :220:CALL           v2:UnbindAction(v4)
[048] :221:GETIMPORT      v2 = game
[049] :221:LOADK          v4 = "ContextActionService"
[052] :221:CALL           v2 = v2:GetService(v4)
[054] :221:GETIMPORT      v7 = script
[056] :221:GETTABLEKS     v5 = v7.Name
[057] :221:LOADK          v6 = "Power3"
[058] :221:CONCAT         v4 = v5 .. v6
[061] :221:CALL           v2:UnbindAction(v4)
[063] :222:GETIMPORT      v2 = game
[064] :222:LOADK          v4 = "ContextActionService"
[067] :222:CALL           v2 = v2:GetService(v4)
[069] :222:GETIMPORT      v7 = script
[071] :222:GETTABLEKS     v5 = v7.Name
[072] :222:LOADK          v6 = "Power4"
[073] :222:CONCAT         v4 = v5 .. v6
[076] :222:CALL           v2:UnbindAction(v4)
[078] :223:GETIMPORT      v2 = game
[079] :223:LOADK          v4 = "ContextActionService"
[082] :223:CALL           v2 = v2:GetService(v4)
[084] :223:GETIMPORT      v7 = script
[086] :223:GETTABLEKS     v5 = v7.Name
[087] :223:LOADK          v6 = "Power5"
[088] :223:CONCAT         v4 = v5 .. v6
[091] :223:CALL           v2:UnbindAction(v4)
[093] :224:GETIMPORT      v2 = game
[094] :224:LOADK          v4 = "ContextActionService"
[097] :224:CALL           v2 = v2:GetService(v4)
[099] :224:GETIMPORT      v7 = script
[101] :224:GETTABLEKS     v5 = v7.Name
[102] :224:LOADK          v6 = "Power6"
[103] :224:CONCAT         v4 = v5 .. v6
[106] :224:CALL           v2:UnbindAction(v4)
[108] :225:GETGLOBAL      v2 = Button1
[110] :225:JUMPXEQKNIL    if v2 ~= nil then -- goto #116
[112] :225:GETGLOBAL      v2 = Button1
[115] :225:CALL           v2:Destroy()
end
[117] :226:GETGLOBAL      v2 = Button2
[119] :226:JUMPXEQKNIL    if v2 ~= nil then -- goto #125
[121] :226:GETGLOBAL      v2 = Button2
[124] :226:CALL           v2:Destroy()
end
[126] :227:GETGLOBAL      v2 = Button3
[128] :227:JUMPXEQKNIL    if v2 ~= nil then -- goto #134
[130] :227:GETGLOBAL      v2 = Button3
[133] :227:CALL           v2:Destroy()
end
[135] :228:GETGLOBAL      v2 = Button4
[137] :228:JUMPXEQKNIL    if v2 ~= nil then -- goto #143
[139] :228:GETGLOBAL      v2 = Button4
[142] :228:CALL           v2:Destroy()
end
[144] :229:GETGLOBAL      v2 = Button5
[146] :229:JUMPXEQKNIL    if v2 ~= nil then -- goto #152
[148] :229:GETGLOBAL      v2 = Button5
[151] :229:CALL           v2:Destroy()
end
[153] :230:GETGLOBAL      v2 = Button6
[155] :230:JUMPXEQKNIL    if v2 ~= nil then -- goto #161
[157] :230:GETGLOBAL      v2 = Button6
[160] :230:CALL           v2:Destroy()
end
[162] :231:GETIMPORT      v3 = script
[164] :231:GETTABLEKS     v2 = v3.Name
[166] :231:JUMPIFNOTEQ    if p24 ~= v2 then -- goto #1130
[168] :232:GETIMPORT      v2 = print
[169] :232:GETUPVAL       v9 = u_v0
[171] :232:GETTABLEKS     v4 = v9.Name
[172] :232:LOADK          v5 = " - Devil Fruit "
[173] :232:MOVE           v6 = p23
[174] :232:LOADK          v7 = " = "
[175] :232:MOVE           v8 = p24
[176] :232:CONCAT         v3 = v4 .. v5 .. v6 .. v7 .. v8
[177] :232:CALL           v2(v3)
[179] :233:GETIMPORT      v2 = game
[180] :233:LOADK          v4 = "ContextActionService"
[183] :233:CALL           v2 = v2:GetService(v4)
[185] :233:GETIMPORT      v7 = script
[187] :233:GETTABLEKS     v5 = v7.Name
[188] :233:LOADK          v6 = "Power1"
[189] :233:CONCAT         v4 = v5 .. v6
[191] :233:GETGLOBAL      v5 = Power1
[192] :233:LOADB          v6 = false
[194] :233:GETIMPORT      v8 = Enum.KeyCode
[195] :233:GETUPVAL       v12 = u_v3
[197] :233:GETTABLEKS     v11 = v12.Data
[199] :233:GETTABLEKS     v10 = v11.Basic_DF1A
[201] :233:GETTABLEKS     v9 = v10.Value
[202] :233:GETTABLE       v7 = v8[v9]
[205] :233:CALL           v2:BindAction(v4, v5, v6, v7)
[207] :234:GETIMPORT      v2 = game
[208] :234:LOADK          v4 = "ContextActionService"
[211] :234:CALL           v2 = v2:GetService(v4)
[213] :234:GETIMPORT      v7 = script
[215] :234:GETTABLEKS     v5 = v7.Name
[216] :234:LOADK          v6 = "Power2"
[217] :234:CONCAT         v4 = v5 .. v6
[219] :234:GETGLOBAL      v5 = Power2
[220] :234:LOADB          v6 = false
[222] :234:GETIMPORT      v8 = Enum.KeyCode
[223] :234:GETUPVAL       v12 = u_v3
[225] :234:GETTABLEKS     v11 = v12.Data
[227] :234:GETTABLEKS     v10 = v11.Basic_DF1B
[229] :234:GETTABLEKS     v9 = v10.Value
[230] :234:GETTABLE       v7 = v8[v9]
[233] :234:CALL           v2:BindAction(v4, v5, v6, v7)
[235] :235:GETIMPORT      v2 = game
[236] :235:LOADK          v4 = "ContextActionService"
[239] :235:CALL           v2 = v2:GetService(v4)
[241] :235:GETIMPORT      v7 = script
[243] :235:GETTABLEKS     v5 = v7.Name
[244] :235:LOADK          v6 = "Power3"
[245] :235:CONCAT         v4 = v5 .. v6
[247] :235:GETGLOBAL      v5 = Power3
[248] :235:LOADB          v6 = false
[250] :235:GETIMPORT      v8 = Enum.KeyCode
[251] :235:GETUPVAL       v12 = u_v3
[253] :235:GETTABLEKS     v11 = v12.Data
[255] :235:GETTABLEKS     v10 = v11.Basic_DF1C
[257] :235:GETTABLEKS     v9 = v10.Value
[258] :235:GETTABLE       v7 = v8[v9]
[261] :235:CALL           v2:BindAction(v4, v5, v6, v7)
[263] :236:GETIMPORT      v2 = game
[264] :236:LOADK          v4 = "ContextActionService"
[267] :236:CALL           v2 = v2:GetService(v4)
[269] :236:GETIMPORT      v7 = script
[271] :236:GETTABLEKS     v5 = v7.Name
[272] :236:LOADK          v6 = "Power4"
[273] :236:CONCAT         v4 = v5 .. v6
[275] :236:GETGLOBAL      v5 = Power4
[276] :236:LOADB          v6 = false
[278] :236:GETIMPORT      v8 = Enum.KeyCode
[279] :236:GETUPVAL       v12 = u_v3
[281] :236:GETTABLEKS     v11 = v12.Data
[283] :236:GETTABLEKS     v10 = v11.Basic_DF1D
[285] :236:GETTABLEKS     v9 = v10.Value
[286] :236:GETTABLE       v7 = v8[v9]
[289] :236:CALL           v2:BindAction(v4, v5, v6, v7)
[291] :237:GETIMPORT      v2 = game
[292] :237:LOADK          v4 = "ContextActionService"
[295] :237:CALL           v2 = v2:GetService(v4)
[297] :237:GETIMPORT      v7 = script
[299] :237:GETTABLEKS     v5 = v7.Name
[300] :237:LOADK          v6 = "Power5"
[301] :237:CONCAT         v4 = v5 .. v6
[303] :237:GETGLOBAL      v5 = Power5
[304] :237:LOADB          v6 = false
[306] :237:GETIMPORT      v8 = Enum.KeyCode
[307] :237:GETUPVAL       v12 = u_v3
[309] :237:GETTABLEKS     v11 = v12.Data
[311] :237:GETTABLEKS     v10 = v11.Basic_DF1E
[313] :237:GETTABLEKS     v9 = v10.Value
[314] :237:GETTABLE       v7 = v8[v9]
[317] :237:CALL           v2:BindAction(v4, v5, v6, v7)
[319] :238:GETIMPORT      v2 = game
[320] :238:LOADK          v4 = "ContextActionService"
[323] :238:CALL           v2 = v2:GetService(v4)
[325] :238:GETIMPORT      v7 = script
[327] :238:GETTABLEKS     v5 = v7.Name
[328] :238:LOADK          v6 = "Power6"
[329] :238:CONCAT         v4 = v5 .. v6
[331] :238:GETGLOBAL      v5 = Power6
[332] :238:LOADB          v6 = false
[334] :238:GETIMPORT      v8 = Enum.KeyCode
[335] :238:GETUPVAL       v12 = u_v3
[337] :238:GETTABLEKS     v11 = v12.Data
[339] :238:GETTABLEKS     v10 = v11.Basic_DF1F
[341] :238:GETTABLEKS     v9 = v10.Value
[342] :238:GETTABLE       v7 = v8[v9]
[345] :238:CALL           v2:BindAction(v4, v5, v6, v7)
[347] :239:GETIMPORT      v3 = game
[348] :239:LOADK          v5 = "UserInputService"
[351] :239:CALL           v3 = v3:GetService(v5)
[353] :239:GETTABLEKS     v2 = v3.TouchEnabled
[355] :239:JUMPXEQKB      if v2 == true then -- goto #1130
[356] :240:GETUPVAL       v5 = u_v0
[358] :240:GETTABLEKS     v4 = v5.PlayerGui
[360] :240:GETTABLEKS     v3 = v4.MobileContext
[362] :240:GETTABLEKS     v2 = v3.Button
[365] :240:CALL           v2 = v2:Clone()
[367] :240:SETGLOBAL      Button1 = v2
[368] :241:GETUPVAL       v5 = u_v0
[370] :241:GETTABLEKS     v4 = v5.PlayerGui
[372] :241:GETTABLEKS     v3 = v4.MobileContext
[374] :241:GETTABLEKS     v2 = v3.Button
[377] :241:CALL           v2 = v2:Clone()
[379] :241:SETGLOBAL      Button2 = v2
[380] :242:GETUPVAL       v5 = u_v0
[382] :242:GETTABLEKS     v4 = v5.PlayerGui
[384] :242:GETTABLEKS     v3 = v4.MobileContext
[386] :242:GETTABLEKS     v2 = v3.Button
[389] :242:CALL           v2 = v2:Clone()
[391] :242:SETGLOBAL      Button3 = v2
[392] :243:GETUPVAL       v5 = u_v0
[394] :243:GETTABLEKS     v4 = v5.PlayerGui
[396] :243:GETTABLEKS     v3 = v4.MobileContext
[398] :243:GETTABLEKS     v2 = v3.Button
[401] :243:CALL           v2 = v2:Clone()
[403] :243:SETGLOBAL      Button4 = v2
[404] :244:GETUPVAL       v5 = u_v0
[406] :244:GETTABLEKS     v4 = v5.PlayerGui
[408] :244:GETTABLEKS     v3 = v4.MobileContext
[410] :244:GETTABLEKS     v2 = v3.Button
[413] :244:CALL           v2 = v2:Clone()
[415] :244:SETGLOBAL      Button5 = v2
[416] :245:GETUPVAL       v5 = u_v0
[418] :245:GETTABLEKS     v4 = v5.PlayerGui
[420] :245:GETTABLEKS     v3 = v4.MobileContext
[422] :245:GETTABLEKS     v2 = v3.Button
[425] :245:CALL           v2 = v2:Clone()
[427] :245:SETGLOBAL      Button6 = v2
[429] :246:GETGLOBAL      v2 = Button1
[430] :246:LOADK          v3 = "Power1"
[432] :246:SETTABLEKS     v2.Name = v3
[434] :247:GETGLOBAL      v2 = Button2
[435] :247:LOADK          v3 = "Power2"
[437] :247:SETTABLEKS     v2.Name = v3
[439] :248:GETGLOBAL      v2 = Button3
[440] :248:LOADK          v3 = "Power3"
[442] :248:SETTABLEKS     v2.Name = v3
[444] :249:GETGLOBAL      v2 = Button4
[445] :249:LOADK          v3 = "Power4"
[447] :249:SETTABLEKS     v2.Name = v3
[449] :250:GETGLOBAL      v2 = Button5
[450] :250:LOADK          v3 = "Power5"
[452] :250:SETTABLEKS     v2.Name = v3
[454] :251:GETGLOBAL      v2 = Button6
[455] :251:LOADK          v3 = "Power6"
[457] :251:SETTABLEKS     v2.Name = v3
[459] :252:GETGLOBAL      v2 = Button1
[460] :252:GETUPVAL       v6 = u_v0
[462] :252:GETTABLEKS     v5 = v6.PlayerGui
[464] :252:GETTABLEKS     v4 = v5.MobileContext
[466] :252:GETTABLEKS     v3 = v4.ContextActions1
[468] :252:SETTABLEKS     v2.Parent = v3
[470] :253:GETGLOBAL      v2 = Button2
[471] :253:GETUPVAL       v6 = u_v0
[473] :253:GETTABLEKS     v5 = v6.PlayerGui
[475] :253:GETTABLEKS     v4 = v5.MobileContext
[477] :253:GETTABLEKS     v3 = v4.ContextActions1
[479] :253:SETTABLEKS     v2.Parent = v3
[481] :254:GETGLOBAL      v2 = Button3
[482] :254:GETUPVAL       v6 = u_v0
[484] :254:GETTABLEKS     v5 = v6.PlayerGui
[486] :254:GETTABLEKS     v4 = v5.MobileContext
[488] :254:GETTABLEKS     v3 = v4.ContextActions1
[490] :254:SETTABLEKS     v2.Parent = v3
[492] :255:GETGLOBAL      v2 = Button4
[493] :255:GETUPVAL       v6 = u_v0
[495] :255:GETTABLEKS     v5 = v6.PlayerGui
[497] :255:GETTABLEKS     v4 = v5.MobileContext
[499] :255:GETTABLEKS     v3 = v4.ContextActions1
[501] :255:SETTABLEKS     v2.Parent = v3
[503] :256:GETGLOBAL      v2 = Button5
[504] :256:GETUPVAL       v6 = u_v0
[506] :256:GETTABLEKS     v5 = v6.PlayerGui
[508] :256:GETTABLEKS     v4 = v5.MobileContext
[510] :256:GETTABLEKS     v3 = v4.ContextActions1
[512] :256:SETTABLEKS     v2.Parent = v3
[514] :257:GETGLOBAL      v2 = Button6
[515] :257:GETUPVAL       v6 = u_v0
[517] :257:GETTABLEKS     v5 = v6.PlayerGui
[519] :257:GETTABLEKS     v4 = v5.MobileContext
[521] :257:GETTABLEKS     v3 = v4.ContextActions1
[523] :257:SETTABLEKS     v2.Parent = v3
[525] :258:GETGLOBAL      v3 = Button1
[527] :258:GETTABLEKS     v2 = v3.MouseButton1Click
[528] :258:DUPCLOSURE     v4 = function()
-- proto pool id: 12
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :258:GETGLOBAL      v0 = SP
[004] :258:GETGLOBAL      v1 = Button1
[006] :258:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :258:LOADNIL        v0 = nil
[009] :258:SETGLOBAL      SP = v0
[010] :258:JUMP           -- jump to #14
end
[012] :258:GETGLOBAL      v0 = Button1
[014] :258:SETGLOBAL      SP = v0
[016] :258:GETGLOBAL      v0 = NewSP
[017] :258:CALL           v0()
[018] :258:RETURN         return
end
[531] :258:CALL           v2:Connect(v4)
[533] :259:GETGLOBAL      v3 = Button2
[535] :259:GETTABLEKS     v2 = v3.MouseButton1Click
[536] :259:DUPCLOSURE     v4 = function()
-- proto pool id: 13
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :259:GETGLOBAL      v0 = SP
[004] :259:GETGLOBAL      v1 = Button2
[006] :259:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :259:LOADNIL        v0 = nil
[009] :259:SETGLOBAL      SP = v0
[010] :259:JUMP           -- jump to #14
end
[012] :259:GETGLOBAL      v0 = Button2
[014] :259:SETGLOBAL      SP = v0
[016] :259:GETGLOBAL      v0 = NewSP
[017] :259:CALL           v0()
[018] :259:RETURN         return
end
[539] :259:CALL           v2:Connect(v4)
[541] :260:GETGLOBAL      v3 = Button3
[543] :260:GETTABLEKS     v2 = v3.MouseButton1Click
[544] :260:DUPCLOSURE     v4 = function()
-- proto pool id: 14
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :260:GETGLOBAL      v0 = SP
[004] :260:GETGLOBAL      v1 = Button3
[006] :260:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :260:LOADNIL        v0 = nil
[009] :260:SETGLOBAL      SP = v0
[010] :260:JUMP           -- jump to #14
end
[012] :260:GETGLOBAL      v0 = Button3
[014] :260:SETGLOBAL      SP = v0
[016] :260:GETGLOBAL      v0 = NewSP
[017] :260:CALL           v0()
[018] :260:RETURN         return
end
[547] :260:CALL           v2:Connect(v4)
[549] :261:GETGLOBAL      v3 = Button4
[551] :261:GETTABLEKS     v2 = v3.MouseButton1Click
[552] :261:DUPCLOSURE     v4 = function()
-- proto pool id: 15
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :261:GETGLOBAL      v0 = SP
[004] :261:GETGLOBAL      v1 = Button4
[006] :261:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :261:LOADNIL        v0 = nil
[009] :261:SETGLOBAL      SP = v0
[010] :261:JUMP           -- jump to #14
end
[012] :261:GETGLOBAL      v0 = Button4
[014] :261:SETGLOBAL      SP = v0
[016] :261:GETGLOBAL      v0 = NewSP
[017] :261:CALL           v0()
[018] :261:RETURN         return
end
[555] :261:CALL           v2:Connect(v4)
[557] :262:GETGLOBAL      v3 = Button5
[559] :262:GETTABLEKS     v2 = v3.MouseButton1Click
[560] :262:DUPCLOSURE     v4 = function()
-- proto pool id: 16
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :262:GETGLOBAL      v0 = SP
[004] :262:GETGLOBAL      v1 = Button5
[006] :262:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :262:LOADNIL        v0 = nil
[009] :262:SETGLOBAL      SP = v0
[010] :262:JUMP           -- jump to #14
end
[012] :262:GETGLOBAL      v0 = Button5
[014] :262:SETGLOBAL      SP = v0
[016] :262:GETGLOBAL      v0 = NewSP
[017] :262:CALL           v0()
[018] :262:RETURN         return
end
[563] :262:CALL           v2:Connect(v4)
[565] :263:GETGLOBAL      v3 = Button6
[567] :263:GETTABLEKS     v2 = v3.MouseButton1Click
[568] :263:DUPCLOSURE     v4 = function()
-- proto pool id: 17
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :263:GETGLOBAL      v0 = SP
[004] :263:GETGLOBAL      v1 = Button6
[006] :263:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :263:LOADNIL        v0 = nil
[009] :263:SETGLOBAL      SP = v0
[010] :263:JUMP           -- jump to #14
end
[012] :263:GETGLOBAL      v0 = Button6
[014] :263:SETGLOBAL      SP = v0
[016] :263:GETGLOBAL      v0 = NewSP
[017] :263:CALL           v0()
[018] :263:RETURN         return
end
[571] :263:CALL           v2:Connect(v4)
[572] :263:RETURN         return
end
[574] :266:JUMPXEQKN      if p23 == 2 then -- goto #1130
[576] :267:GETIMPORT      v2 = print
[577] :267:GETUPVAL       v9 = u_v0
[579] :267:GETTABLEKS     v4 = v9.Name
[580] :267:LOADK          v5 = " - Devil Fruit "
[581] :267:MOVE           v6 = p23
[582] :267:LOADK          v7 = " = "
[583] :267:MOVE           v8 = p24
[584] :267:CONCAT         v3 = v4 .. v5 .. v6 .. v7 .. v8
[585] :267:CALL           v2(v3)
[587] :268:GETIMPORT      v2 = game
[588] :268:LOADK          v4 = "ContextActionService"
[591] :268:CALL           v2 = v2:GetService(v4)
[593] :268:GETIMPORT      v7 = script
[595] :268:GETTABLEKS     v5 = v7.Name
[596] :268:LOADK          v6 = "Power7"
[597] :268:CONCAT         v4 = v5 .. v6
[600] :268:CALL           v2:UnbindAction(v4)
[602] :269:GETIMPORT      v2 = game
[603] :269:LOADK          v4 = "ContextActionService"
[606] :269:CALL           v2 = v2:GetService(v4)
[608] :269:GETIMPORT      v7 = script
[610] :269:GETTABLEKS     v5 = v7.Name
[611] :269:LOADK          v6 = "Power8"
[612] :269:CONCAT         v4 = v5 .. v6
[615] :269:CALL           v2:UnbindAction(v4)
[617] :270:GETIMPORT      v2 = game
[618] :270:LOADK          v4 = "ContextActionService"
[621] :270:CALL           v2 = v2:GetService(v4)
[623] :270:GETIMPORT      v7 = script
[625] :270:GETTABLEKS     v5 = v7.Name
[626] :270:LOADK          v6 = "Power9"
[627] :270:CONCAT         v4 = v5 .. v6
[630] :270:CALL           v2:UnbindAction(v4)
[632] :271:GETIMPORT      v2 = game
[633] :271:LOADK          v4 = "ContextActionService"
[636] :271:CALL           v2 = v2:GetService(v4)
[638] :271:GETIMPORT      v7 = script
[640] :271:GETTABLEKS     v5 = v7.Name
[641] :271:LOADK          v6 = "Power10"
[642] :271:CONCAT         v4 = v5 .. v6
[645] :271:CALL           v2:UnbindAction(v4)
[647] :272:GETIMPORT      v2 = game
[648] :272:LOADK          v4 = "ContextActionService"
[651] :272:CALL           v2 = v2:GetService(v4)
[653] :272:GETIMPORT      v7 = script
[655] :272:GETTABLEKS     v5 = v7.Name
[656] :272:LOADK          v6 = "Power11"
[657] :272:CONCAT         v4 = v5 .. v6
[660] :272:CALL           v2:UnbindAction(v4)
[662] :273:GETIMPORT      v2 = game
[663] :273:LOADK          v4 = "ContextActionService"
[666] :273:CALL           v2 = v2:GetService(v4)
[668] :273:GETIMPORT      v7 = script
[670] :273:GETTABLEKS     v5 = v7.Name
[671] :273:LOADK          v6 = "Power12"
[672] :273:CONCAT         v4 = v5 .. v6
[675] :273:CALL           v2:UnbindAction(v4)
[677] :274:GETGLOBAL      v2 = Button7
[679] :274:JUMPXEQKNIL    if v2 ~= nil then -- goto #685
[681] :274:GETGLOBAL      v2 = Button7
[684] :274:CALL           v2:Destroy()
end
[686] :275:GETGLOBAL      v2 = Button8
[688] :275:JUMPXEQKNIL    if v2 ~= nil then -- goto #694
[690] :275:GETGLOBAL      v2 = Button8
[693] :275:CALL           v2:Destroy()
end
[695] :276:GETGLOBAL      v2 = Button9
[697] :276:JUMPXEQKNIL    if v2 ~= nil then -- goto #703
[699] :276:GETGLOBAL      v2 = Button9
[702] :276:CALL           v2:Destroy()
end
[704] :277:GETGLOBAL      v2 = Button10
[706] :277:JUMPXEQKNIL    if v2 ~= nil then -- goto #712
[708] :277:GETGLOBAL      v2 = Button10
[711] :277:CALL           v2:Destroy()
end
[713] :278:GETGLOBAL      v2 = Button11
[715] :278:JUMPXEQKNIL    if v2 ~= nil then -- goto #721
[717] :278:GETGLOBAL      v2 = Button11
[720] :278:CALL           v2:Destroy()
end
[722] :279:GETGLOBAL      v2 = Button12
[724] :279:JUMPXEQKNIL    if v2 ~= nil then -- goto #730
[726] :279:GETGLOBAL      v2 = Button12
[729] :279:CALL           v2:Destroy()
end
[731] :280:GETIMPORT      v3 = script
[733] :280:GETTABLEKS     v2 = v3.Name
[735] :280:JUMPIFNOTEQ    if p24 ~= v2 then -- goto #1130
[737] :281:GETIMPORT      v2 = game
[738] :281:LOADK          v4 = "ContextActionService"
[741] :281:CALL           v2 = v2:GetService(v4)
[743] :281:GETIMPORT      v7 = script
[745] :281:GETTABLEKS     v5 = v7.Name
[746] :281:LOADK          v6 = "Power7"
[747] :281:CONCAT         v4 = v5 .. v6
[749] :281:GETGLOBAL      v5 = Power1
[750] :281:LOADB          v6 = false
[752] :281:GETIMPORT      v8 = Enum.KeyCode
[753] :281:GETUPVAL       v12 = u_v3
[755] :281:GETTABLEKS     v11 = v12.Data
[757] :281:GETTABLEKS     v10 = v11.Basic_DF2A
[759] :281:GETTABLEKS     v9 = v10.Value
[760] :281:GETTABLE       v7 = v8[v9]
[763] :281:CALL           v2:BindAction(v4, v5, v6, v7)
[765] :282:GETIMPORT      v2 = game
[766] :282:LOADK          v4 = "ContextActionService"
[769] :282:CALL           v2 = v2:GetService(v4)
[771] :282:GETIMPORT      v7 = script
[773] :282:GETTABLEKS     v5 = v7.Name
[774] :282:LOADK          v6 = "Power8"
[775] :282:CONCAT         v4 = v5 .. v6
[777] :282:GETGLOBAL      v5 = Power2
[778] :282:LOADB          v6 = false
[780] :282:GETIMPORT      v8 = Enum.KeyCode
[781] :282:GETUPVAL       v12 = u_v3
[783] :282:GETTABLEKS     v11 = v12.Data
[785] :282:GETTABLEKS     v10 = v11.Basic_DF2B
[787] :282:GETTABLEKS     v9 = v10.Value
[788] :282:GETTABLE       v7 = v8[v9]
[791] :282:CALL           v2:BindAction(v4, v5, v6, v7)
[793] :283:GETIMPORT      v2 = game
[794] :283:LOADK          v4 = "ContextActionService"
[797] :283:CALL           v2 = v2:GetService(v4)
[799] :283:GETIMPORT      v7 = script
[801] :283:GETTABLEKS     v5 = v7.Name
[802] :283:LOADK          v6 = "Power9"
[803] :283:CONCAT         v4 = v5 .. v6
[805] :283:GETGLOBAL      v5 = Power3
[806] :283:LOADB          v6 = false
[808] :283:GETIMPORT      v8 = Enum.KeyCode
[809] :283:GETUPVAL       v12 = u_v3
[811] :283:GETTABLEKS     v11 = v12.Data
[813] :283:GETTABLEKS     v10 = v11.Basic_DF2C
[815] :283:GETTABLEKS     v9 = v10.Value
[816] :283:GETTABLE       v7 = v8[v9]
[819] :283:CALL           v2:BindAction(v4, v5, v6, v7)
[821] :284:GETIMPORT      v2 = game
[822] :284:LOADK          v4 = "ContextActionService"
[825] :284:CALL           v2 = v2:GetService(v4)
[827] :284:GETIMPORT      v7 = script
[829] :284:GETTABLEKS     v5 = v7.Name
[830] :284:LOADK          v6 = "Power10"
[831] :284:CONCAT         v4 = v5 .. v6
[833] :284:GETGLOBAL      v5 = Power4
[834] :284:LOADB          v6 = false
[836] :284:GETIMPORT      v8 = Enum.KeyCode
[837] :284:GETUPVAL       v12 = u_v3
[839] :284:GETTABLEKS     v11 = v12.Data
[841] :284:GETTABLEKS     v10 = v11.Basic_DF2D
[843] :284:GETTABLEKS     v9 = v10.Value
[844] :284:GETTABLE       v7 = v8[v9]
[847] :284:CALL           v2:BindAction(v4, v5, v6, v7)
[849] :285:GETIMPORT      v2 = game
[850] :285:LOADK          v4 = "ContextActionService"
[853] :285:CALL           v2 = v2:GetService(v4)
[855] :285:GETIMPORT      v7 = script
[857] :285:GETTABLEKS     v5 = v7.Name
[858] :285:LOADK          v6 = "Power11"
[859] :285:CONCAT         v4 = v5 .. v6
[861] :285:GETGLOBAL      v5 = Power5
[862] :285:LOADB          v6 = false
[864] :285:GETIMPORT      v8 = Enum.KeyCode
[865] :285:GETUPVAL       v12 = u_v3
[867] :285:GETTABLEKS     v11 = v12.Data
[869] :285:GETTABLEKS     v10 = v11.Basic_DF2E
[871] :285:GETTABLEKS     v9 = v10.Value
[872] :285:GETTABLE       v7 = v8[v9]
[875] :285:CALL           v2:BindAction(v4, v5, v6, v7)
[877] :286:GETIMPORT      v2 = game
[878] :286:LOADK          v4 = "ContextActionService"
[881] :286:CALL           v2 = v2:GetService(v4)
[883] :286:GETIMPORT      v7 = script
[885] :286:GETTABLEKS     v5 = v7.Name
[886] :286:LOADK          v6 = "Power12"
[887] :286:CONCAT         v4 = v5 .. v6
[889] :286:GETGLOBAL      v5 = Power6
[890] :286:LOADB          v6 = false
[892] :286:GETIMPORT      v8 = Enum.KeyCode
[893] :286:GETUPVAL       v12 = u_v3
[895] :286:GETTABLEKS     v11 = v12.Data
[897] :286:GETTABLEKS     v10 = v11.Basic_DF2F
[899] :286:GETTABLEKS     v9 = v10.Value
[900] :286:GETTABLE       v7 = v8[v9]
[903] :286:CALL           v2:BindAction(v4, v5, v6, v7)
[905] :287:GETIMPORT      v3 = game
[906] :287:LOADK          v5 = "UserInputService"
[909] :287:CALL           v3 = v3:GetService(v5)
[911] :287:GETTABLEKS     v2 = v3.TouchEnabled
[913] :287:JUMPXEQKB      if v2 == true then -- goto #1130
[914] :288:GETUPVAL       v5 = u_v0
[916] :288:GETTABLEKS     v4 = v5.PlayerGui
[918] :288:GETTABLEKS     v3 = v4.MobileContext
[920] :288:GETTABLEKS     v2 = v3.Button
[923] :288:CALL           v2 = v2:Clone()
[925] :288:SETGLOBAL      Button7 = v2
[926] :289:GETUPVAL       v5 = u_v0
[928] :289:GETTABLEKS     v4 = v5.PlayerGui
[930] :289:GETTABLEKS     v3 = v4.MobileContext
[932] :289:GETTABLEKS     v2 = v3.Button
[935] :289:CALL           v2 = v2:Clone()
[937] :289:SETGLOBAL      Button8 = v2
[938] :290:GETUPVAL       v5 = u_v0
[940] :290:GETTABLEKS     v4 = v5.PlayerGui
[942] :290:GETTABLEKS     v3 = v4.MobileContext
[944] :290:GETTABLEKS     v2 = v3.Button
[947] :290:CALL           v2 = v2:Clone()
[949] :290:SETGLOBAL      Button9 = v2
[950] :291:GETUPVAL       v5 = u_v0
[952] :291:GETTABLEKS     v4 = v5.PlayerGui
[954] :291:GETTABLEKS     v3 = v4.MobileContext
[956] :291:GETTABLEKS     v2 = v3.Button
[959] :291:CALL           v2 = v2:Clone()
[961] :291:SETGLOBAL      Button10 = v2
[962] :292:GETUPVAL       v5 = u_v0
[964] :292:GETTABLEKS     v4 = v5.PlayerGui
[966] :292:GETTABLEKS     v3 = v4.MobileContext
[968] :292:GETTABLEKS     v2 = v3.Button
[971] :292:CALL           v2 = v2:Clone()
[973] :292:SETGLOBAL      Button11 = v2
[974] :293:GETUPVAL       v5 = u_v0
[976] :293:GETTABLEKS     v4 = v5.PlayerGui
[978] :293:GETTABLEKS     v3 = v4.MobileContext
[980] :293:GETTABLEKS     v2 = v3.Button
[983] :293:CALL           v2 = v2:Clone()
[985] :293:SETGLOBAL      Button12 = v2
[987] :294:GETGLOBAL      v2 = Button7
[988] :294:LOADK          v3 = "Power7"
[990] :294:SETTABLEKS     v2.Name = v3
[992] :295:GETGLOBAL      v2 = Button8
[993] :295:LOADK          v3 = "Power8"
[995] :295:SETTABLEKS     v2.Name = v3
[997] :296:GETGLOBAL      v2 = Button9
[998] :296:LOADK          v3 = "Power9"
[1000] :296:SETTABLEKS     v2.Name = v3
[1002] :297:GETGLOBAL      v2 = Button10
[1003] :297:LOADK          v3 = "Power10"
[1005] :297:SETTABLEKS     v2.Name = v3
[1007] :298:GETGLOBAL      v2 = Button11
[1008] :298:LOADK          v3 = "Power11"
[1010] :298:SETTABLEKS     v2.Name = v3
[1012] :299:GETGLOBAL      v2 = Button12
[1013] :299:LOADK          v3 = "Power12"
[1015] :299:SETTABLEKS     v2.Name = v3
[1017] :300:GETGLOBAL      v2 = Button7
[1018] :300:GETUPVAL       v6 = u_v0
[1020] :300:GETTABLEKS     v5 = v6.PlayerGui
[1022] :300:GETTABLEKS     v4 = v5.MobileContext
[1024] :300:GETTABLEKS     v3 = v4.ContextActions2
[1026] :300:SETTABLEKS     v2.Parent = v3
[1028] :301:GETGLOBAL      v2 = Button8
[1029] :301:GETUPVAL       v6 = u_v0
[1031] :301:GETTABLEKS     v5 = v6.PlayerGui
[1033] :301:GETTABLEKS     v4 = v5.MobileContext
[1035] :301:GETTABLEKS     v3 = v4.ContextActions2
[1037] :301:SETTABLEKS     v2.Parent = v3
[1039] :302:GETGLOBAL      v2 = Button9
[1040] :302:GETUPVAL       v6 = u_v0
[1042] :302:GETTABLEKS     v5 = v6.PlayerGui
[1044] :302:GETTABLEKS     v4 = v5.MobileContext
[1046] :302:GETTABLEKS     v3 = v4.ContextActions2
[1048] :302:SETTABLEKS     v2.Parent = v3
[1050] :303:GETGLOBAL      v2 = Button10
[1051] :303:GETUPVAL       v6 = u_v0
[1053] :303:GETTABLEKS     v5 = v6.PlayerGui
[1055] :303:GETTABLEKS     v4 = v5.MobileContext
[1057] :303:GETTABLEKS     v3 = v4.ContextActions2
[1059] :303:SETTABLEKS     v2.Parent = v3
[1061] :304:GETGLOBAL      v2 = Button11
[1062] :304:GETUPVAL       v6 = u_v0
[1064] :304:GETTABLEKS     v5 = v6.PlayerGui
[1066] :304:GETTABLEKS     v4 = v5.MobileContext
[1068] :304:GETTABLEKS     v3 = v4.ContextActions2
[1070] :304:SETTABLEKS     v2.Parent = v3
[1072] :305:GETGLOBAL      v2 = Button12
[1073] :305:GETUPVAL       v6 = u_v0
[1075] :305:GETTABLEKS     v5 = v6.PlayerGui
[1077] :305:GETTABLEKS     v4 = v5.MobileContext
[1079] :305:GETTABLEKS     v3 = v4.ContextActions2
[1081] :305:SETTABLEKS     v2.Parent = v3
[1083] :306:GETGLOBAL      v3 = Button7
[1085] :306:GETTABLEKS     v2 = v3.MouseButton1Click
[1086] :306:DUPCLOSURE     v4 = function()
-- proto pool id: 18
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :306:GETGLOBAL      v0 = SP
[004] :306:GETGLOBAL      v1 = Button7
[006] :306:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :306:LOADNIL        v0 = nil
[009] :306:SETGLOBAL      SP = v0
[010] :306:JUMP           -- jump to #14
end
[012] :306:GETGLOBAL      v0 = Button7
[014] :306:SETGLOBAL      SP = v0
[016] :306:GETGLOBAL      v0 = NewSP
[017] :306:CALL           v0()
[018] :306:RETURN         return
end
[1089] :306:CALL           v2:Connect(v4)
[1091] :307:GETGLOBAL      v3 = Button8
[1093] :307:GETTABLEKS     v2 = v3.MouseButton1Click
[1094] :307:DUPCLOSURE     v4 = function()
-- proto pool id: 19
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :307:GETGLOBAL      v0 = SP
[004] :307:GETGLOBAL      v1 = Button8
[006] :307:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :307:LOADNIL        v0 = nil
[009] :307:SETGLOBAL      SP = v0
[010] :307:JUMP           -- jump to #14
end
[012] :307:GETGLOBAL      v0 = Button8
[014] :307:SETGLOBAL      SP = v0
[016] :307:GETGLOBAL      v0 = NewSP
[017] :307:CALL           v0()
[018] :307:RETURN         return
end
[1097] :307:CALL           v2:Connect(v4)
[1099] :308:GETGLOBAL      v3 = Button9
[1101] :308:GETTABLEKS     v2 = v3.MouseButton1Click
[1102] :308:DUPCLOSURE     v4 = function()
-- proto pool id: 20
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :308:GETGLOBAL      v0 = SP
[004] :308:GETGLOBAL      v1 = Button9
[006] :308:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :308:LOADNIL        v0 = nil
[009] :308:SETGLOBAL      SP = v0
[010] :308:JUMP           -- jump to #14
end
[012] :308:GETGLOBAL      v0 = Button9
[014] :308:SETGLOBAL      SP = v0
[016] :308:GETGLOBAL      v0 = NewSP
[017] :308:CALL           v0()
[018] :308:RETURN         return
end
[1105] :308:CALL           v2:Connect(v4)
[1107] :309:GETGLOBAL      v3 = Button10
[1109] :309:GETTABLEKS     v2 = v3.MouseButton1Click
[1110] :309:DUPCLOSURE     v4 = function()
-- proto pool id: 21
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :309:GETGLOBAL      v0 = SP
[004] :309:GETGLOBAL      v1 = Button10
[006] :309:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :309:LOADNIL        v0 = nil
[009] :309:SETGLOBAL      SP = v0
[010] :309:JUMP           -- jump to #14
end
[012] :309:GETGLOBAL      v0 = Button10
[014] :309:SETGLOBAL      SP = v0
[016] :309:GETGLOBAL      v0 = NewSP
[017] :309:CALL           v0()
[018] :309:RETURN         return
end
[1113] :309:CALL           v2:Connect(v4)
[1115] :310:GETGLOBAL      v3 = Button11
[1117] :310:GETTABLEKS     v2 = v3.MouseButton1Click
[1118] :310:DUPCLOSURE     v4 = function()
-- proto pool id: 22
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :310:GETGLOBAL      v0 = SP
[004] :310:GETGLOBAL      v1 = Button11
[006] :310:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :310:LOADNIL        v0 = nil
[009] :310:SETGLOBAL      SP = v0
[010] :310:JUMP           -- jump to #14
end
[012] :310:GETGLOBAL      v0 = Button11
[014] :310:SETGLOBAL      SP = v0
[016] :310:GETGLOBAL      v0 = NewSP
[017] :310:CALL           v0()
[018] :310:RETURN         return
end
[1121] :310:CALL           v2:Connect(v4)
[1123] :311:GETGLOBAL      v3 = Button12
[1125] :311:GETTABLEKS     v2 = v3.MouseButton1Click
[1126] :311:DUPCLOSURE     v4 = function()
-- proto pool id: 23
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 18
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 2
-- is typed: false
[002] :311:GETGLOBAL      v0 = SP
[004] :311:GETGLOBAL      v1 = Button12
[006] :311:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #11
[007] :311:LOADNIL        v0 = nil
[009] :311:SETGLOBAL      SP = v0
[010] :311:JUMP           -- jump to #14
end
[012] :311:GETGLOBAL      v0 = Button12
[014] :311:SETGLOBAL      SP = v0
[016] :311:GETGLOBAL      v0 = NewSP
[017] :311:CALL           v0()
[018] :311:RETURN         return
end
[1129] :311:CALL           v2:Connect(v4)
end
end
end
end
end
[1130] :315:RETURN         return
end
v7 = Update
[423] :316:GETIMPORT      v11 = script
[425] :316:GETTABLEKS     v10 = v11.Parent
[427] :316:GETTABLEKS     v9 = v10.DevilFruitUpdate
[429] :316:GETTABLEKS     v8 = v9.OnClientEvent
[430] :316:DUPCLOSURE     v10 = function(p25, p26)
-- proto pool id: 25
-- num upvalues: 1
-- num inner protos: 0
-- size instructions: 5
-- size constants: 0
-- lineinfo gap: 24
-- max stack size: 5
-- is typed: false
[001] :317:GETUPVAL       v0 = u_v7
[002] :317:MOVE           v1 = p25
[003] :317:MOVE           v2 = p26
[004] :317:CALL           v0(v1, v2)
[005] :318:RETURN         return
end
[434] :316:CALL           v8:connect(v10)
[436] :319:GETTABLEKS     v9 = v3.Data
[438] :319:GETTABLEKS     v8 = v9.Basic_DF1A
[439] :319:LOADK          v10 = "Value"
[442] :319:CALL           v8 = v8:GetPropertyChangedSignal(v10)
[443] :319:DUPCLOSURE     v10 = function()
-- proto pool id: 26
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: false
[001] :319:GETUPVAL       v0 = u_v7
[002] :319:LOADN          v1 = 1
[003] :319:GETUPVAL       v5 = u_v3
[005] :319:GETTABLEKS     v4 = v5.Data
[007] :319:GETTABLEKS     v3 = v4.DevilFruit
[009] :319:GETTABLEKS     v2 = v3.Value
[010] :319:CALL           v0(v1, v2)
[011] :319:RETURN         return
end
[448] :319:CALL           v8:Connect(v10)
[450] :320:GETTABLEKS     v9 = v3.Data
[452] :320:GETTABLEKS     v8 = v9.Basic_DF1B
[453] :320:LOADK          v10 = "Value"
[456] :320:CALL           v8 = v8:GetPropertyChangedSignal(v10)
[457] :320:DUPCLOSURE     v10 = function()
-- proto pool id: 27
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: false
[001] :320:GETUPVAL       v0 = u_v7
[002] :320:LOADN          v1 = 1
[003] :320:GETUPVAL       v5 = u_v3
[005] :320:GETTABLEKS     v4 = v5.Data
[007] :320:GETTABLEKS     v3 = v4.DevilFruit
[009] :320:GETTABLEKS     v2 = v3.Value
[010] :320:CALL           v0(v1, v2)
[011] :320:RETURN         return
end
[462] :320:CALL           v8:Connect(v10)
[464] :321:GETTABLEKS     v9 = v3.Data
[466] :321:GETTABLEKS     v8 = v9.Basic_DF1C
[467] :321:LOADK          v10 = "Value"
[470] :321:CALL           v8 = v8:GetPropertyChangedSignal(v10)
[471] :321:DUPCLOSURE     v10 = function()
-- proto pool id: 28
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: false
[001] :321:GETUPVAL       v0 = u_v7
[002] :321:LOADN          v1 = 1
[003] :321:GETUPVAL       v5 = u_v3
[005] :321:GETTABLEKS     v4 = v5.Data
[007] :321:GETTABLEKS     v3 = v4.DevilFruit
[009] :321:GETTABLEKS     v2 = v3.Value
[010] :321:CALL           v0(v1, v2)
[011] :321:RETURN         return
end
[476] :321:CALL           v8:Connect(v10)
[478] :322:GETTABLEKS     v9 = v3.Data
[480] :322:GETTABLEKS     v8 = v9.Basic_DF1D
[481] :322:LOADK          v10 = "Value"
[484] :322:CALL           v8 = v8:GetPropertyChangedSignal(v10)
[485] :322:DUPCLOSURE     v10 = function()
-- proto pool id: 29
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: false
[001] :322:GETUPVAL       v0 = u_v7
[002] :322:LOADN          v1 = 1
[003] :322:GETUPVAL       v5 = u_v3
[005] :322:GETTABLEKS     v4 = v5.Data
[007] :322:GETTABLEKS     v3 = v4.DevilFruit
[009] :322:GETTABLEKS     v2 = v3.Value
[010] :322:CALL           v0(v1, v2)
[011] :322:RETURN         return
end
[490] :322:CALL           v8:Connect(v10)
[492] :323:GETTABLEKS     v9 = v3.Data
[494] :323:GETTABLEKS     v8 = v9.Basic_DF1E
[495] :323:LOADK          v10 = "Value"
[498] :323:CALL           v8 = v8:GetPropertyChangedSignal(v10)
[499] :323:DUPCLOSURE     v10 = function()
-- proto pool id: 30
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: false
[001] :323:GETUPVAL       v0 = u_v7
[002] :323:LOADN          v1 = 1
[003] :323:GETUPVAL       v5 = u_v3
[005] :323:GETTABLEKS     v4 = v5.Data
[007] :323:GETTABLEKS     v3 = v4.DevilFruit
[009] :323:GETTABLEKS     v2 = v3.Value
[010] :323:CALL           v0(v1, v2)
[011] :323:RETURN         return
end
[504] :323:CALL           v8:Connect(v10)
[506] :324:GETTABLEKS     v9 = v3.Data
[508] :324:GETTABLEKS     v8 = v9.Basic_DF1F
[509] :324:LOADK          v10 = "Value"
[512] :324:CALL           v8 = v8:GetPropertyChangedSignal(v10)
[513] :580:DUPCLOSURE     v10 = function()
-- proto pool id: 31
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: false
[001] :324:GETUPVAL       v0 = u_v7
[002] :324:LOADN          v1 = 1
[003] :324:GETUPVAL       v5 = u_v3
[005] :324:GETTABLEKS     v4 = v5.Data
[007] :324:GETTABLEKS     v3 = v4.DevilFruit
[009] :324:GETTABLEKS     v2 = v3.Value
[010] :324:CALL           v0(v1, v2)
[011] :324:RETURN         return
end
[518] :580:CALL           v8:Connect(v10)
[520] :581:GETTABLEKS     v9 = v3.Data
[522] :581:GETTABLEKS     v8 = v9.Basic_DF2A
[523] :581:LOADK          v10 = "Value"
[526] :581:CALL           v8 = v8:GetPropertyChangedSignal(v10)
[527] :581:DUPCLOSURE     v10 = function()
-- proto pool id: 32
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: false
[001] :325:GETUPVAL       v0 = u_v7
[002] :325:LOADN          v1 = 2
[003] :325:GETUPVAL       v5 = u_v3
[005] :325:GETTABLEKS     v4 = v5.Data
[007] :325:GETTABLEKS     v3 = v4.DevilFruit2
[009] :325:GETTABLEKS     v2 = v3.Value
[010] :325:CALL           v0(v1, v2)
[011] :325:RETURN         return
end
[532] :581:CALL           v8:Connect(v10)
[534] :582:GETTABLEKS     v9 = v3.Data
[536] :582:GETTABLEKS     v8 = v9.Basic_DF2B
[537] :582:LOADK          v10 = "Value"
[540] :582:CALL           v8 = v8:GetPropertyChangedSignal(v10)
[541] :582:DUPCLOSURE     v10 = function()
-- proto pool id: 33
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: false
[001] :326:GETUPVAL       v0 = u_v7
[002] :326:LOADN          v1 = 2
[003] :326:GETUPVAL       v5 = u_v3
[005] :326:GETTABLEKS     v4 = v5.Data
[007] :326:GETTABLEKS     v3 = v4.DevilFruit2
[009] :326:GETTABLEKS     v2 = v3.Value
[010] :326:CALL           v0(v1, v2)
[011] :326:RETURN         return
end
[546] :582:CALL           v8:Connect(v10)
[548] :583:GETTABLEKS     v9 = v3.Data
[550] :583:GETTABLEKS     v8 = v9.Basic_DF2C
[551] :583:LOADK          v10 = "Value"
[554] :583:CALL           v8 = v8:GetPropertyChangedSignal(v10)
[555] :583:DUPCLOSURE     v10 = function()
-- proto pool id: 34
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: false
[001] :327:GETUPVAL       v0 = u_v7
[002] :327:LOADN          v1 = 2
[003] :327:GETUPVAL       v5 = u_v3
[005] :327:GETTABLEKS     v4 = v5.Data
[007] :327:GETTABLEKS     v3 = v4.DevilFruit2
[009] :327:GETTABLEKS     v2 = v3.Value
[010] :327:CALL           v0(v1, v2)
[011] :327:RETURN         return
end
[560] :583:CALL           v8:Connect(v10)
[562] :584:GETTABLEKS     v9 = v3.Data
[564] :584:GETTABLEKS     v8 = v9.Basic_DF2D
[565] :584:LOADK          v10 = "Value"
[568] :584:CALL           v8 = v8:GetPropertyChangedSignal(v10)
[569] :584:DUPCLOSURE     v10 = function()
-- proto pool id: 35
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: false
[001] :328:GETUPVAL       v0 = u_v7
[002] :328:LOADN          v1 = 2
[003] :328:GETUPVAL       v5 = u_v3
[005] :328:GETTABLEKS     v4 = v5.Data
[007] :328:GETTABLEKS     v3 = v4.DevilFruit2
[009] :328:GETTABLEKS     v2 = v3.Value
[010] :328:CALL           v0(v1, v2)
[011] :328:RETURN         return
end
[574] :584:CALL           v8:Connect(v10)
[576] :585:GETTABLEKS     v9 = v3.Data
[578] :585:GETTABLEKS     v8 = v9.Basic_DF2E
[579] :585:LOADK          v10 = "Value"
[582] :585:CALL           v8 = v8:GetPropertyChangedSignal(v10)
[583] :585:DUPCLOSURE     v10 = function()
-- proto pool id: 36
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: false
[001] :329:GETUPVAL       v0 = u_v7
[002] :329:LOADN          v1 = 2
[003] :329:GETUPVAL       v5 = u_v3
[005] :329:GETTABLEKS     v4 = v5.Data
[007] :329:GETTABLEKS     v3 = v4.DevilFruit2
[009] :329:GETTABLEKS     v2 = v3.Value
[010] :329:CALL           v0(v1, v2)
[011] :329:RETURN         return
end
[588] :585:CALL           v8:Connect(v10)
[590] :586:GETTABLEKS     v9 = v3.Data
[592] :586:GETTABLEKS     v8 = v9.Basic_DF2F
[593] :586:LOADK          v10 = "Value"
[596] :586:CALL           v8 = v8:GetPropertyChangedSignal(v10)
[597] :586:DUPCLOSURE     v10 = function()
-- proto pool id: 37
-- num upvalues: 2
-- num inner protos: 0
-- size instructions: 11
-- size constants: 3
-- lineinfo gap: 24
-- max stack size: 6
-- is typed: false
[001] :330:GETUPVAL       v0 = u_v7
[002] :330:LOADN          v1 = 2
[003] :330:GETUPVAL       v5 = u_v3
[005] :330:GETTABLEKS     v4 = v5.Data
[007] :330:GETTABLEKS     v3 = v4.DevilFruit2
[009] :330:GETTABLEKS     v2 = v3.Value
[010] :330:CALL           v0(v1, v2)
[011] :330:RETURN         return
end
[602] :586:CALL           v8:Connect(v10)
[604] :588:GETTABLEKS     v8 = v3.Data
[605] :588:LOADK          v10 = "DevilFruit"
[608] :588:CALL           v8 = v8:FindFirstChild(v10)
[610] :589:GETTABLEKS     v9 = v3.Data
[611] :589:LOADK          v11 = "DevilFruit2"
[614] :589:CALL           v9 = v9:FindFirstChild(v11)
[615] :592:MOVE           v10 = v7
[616] :592:LOADN          v11 = 1
[618] :592:GETTABLEKS     v12 = v8.Value
[619] :592:CALL           v10(v11, v12)
[620] :593:MOVE           v10 = v7
[621] :593:LOADN          v11 = 2
[623] :593:GETTABLEKS     v12 = v9.Value
[624] :593:CALL           v10(v11, v12)
[626] :595:GETIMPORT      v14 = script
[628] :595:GETTABLEKS     v13 = v14.Parent
[630] :595:GETTABLEKS     v12 = v13.Parent
[632] :595:GETTABLEKS     v11 = v12.OrderedPair
[634] :595:GETTABLEKS     v10 = v11.OnClientEvent
[635] :595:DUPCLOSURE     v12 = function(p27, p28, p29, p30)
-- proto pool id: 38
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 104
-- size constants: 22
-- lineinfo gap: 24
-- max stack size: 10
-- is typed: false
[002] :340:GETIMPORT      v1 = script
[004] :340:GETTABLEKS     v0 = v1.Name
[006] :340:JUMPIFEQ       if p28 == v0 then -- goto #8
[007] :340:RETURN         return
end
[009] :341:JUMPXEQKS      if p29 ~= 1 then -- goto #12
[011] :341:JUMPXEQKS      if p29 == 7 then -- goto #24
end
[013] :342:GETGLOBAL      v0 = Power1
[015] :342:GETIMPORT      v5 = script
[017] :342:GETTABLEKS     v2 = v5.Name
[018] :342:LOADK          v3 = "Power"
[019] :342:MOVE           v4 = p29
[020] :342:CONCAT         v1 = v2 .. v3 .. v4
[021] :342:MOVE           v2 = p30
[022] :342:LOADNIL        v3 = nil
[023] :342:CALL           v0(v1, v2, v3)
end
[025] :344:JUMPXEQKS      if p29 ~= 2 then -- goto #28
[027] :344:JUMPXEQKS      if p29 == 8 then -- goto #40
end
[029] :345:GETGLOBAL      v0 = Power2
[031] :345:GETIMPORT      v5 = script
[033] :345:GETTABLEKS     v2 = v5.Name
[034] :345:LOADK          v3 = "Power"
[035] :345:MOVE           v4 = p29
[036] :345:CONCAT         v1 = v2 .. v3 .. v4
[037] :345:MOVE           v2 = p30
[038] :345:LOADNIL        v3 = nil
[039] :345:CALL           v0(v1, v2, v3)
end
[041] :347:JUMPXEQKS      if p29 ~= 3 then -- goto #44
[043] :347:JUMPXEQKS      if p29 == 9 then -- goto #56
end
[045] :348:GETGLOBAL      v0 = Power3
[047] :348:GETIMPORT      v5 = script
[049] :348:GETTABLEKS     v2 = v5.Name
[050] :348:LOADK          v3 = "Power"
[051] :348:MOVE           v4 = p29
[052] :348:CONCAT         v1 = v2 .. v3 .. v4
[053] :348:MOVE           v2 = p30
[054] :348:LOADNIL        v3 = nil
[055] :348:CALL           v0(v1, v2, v3)
end
[057] :350:JUMPXEQKS      if p29 ~= 4 then -- goto #60
[059] :350:JUMPXEQKS      if p29 == 10 then -- goto #72
end
[061] :351:GETGLOBAL      v0 = Power4
[063] :351:GETIMPORT      v5 = script
[065] :351:GETTABLEKS     v2 = v5.Name
[066] :351:LOADK          v3 = "Power"
[067] :351:MOVE           v4 = p29
[068] :351:CONCAT         v1 = v2 .. v3 .. v4
[069] :351:MOVE           v2 = p30
[070] :351:LOADNIL        v3 = nil
[071] :351:CALL           v0(v1, v2, v3)
end
[073] :353:JUMPXEQKS      if p29 ~= 5 then -- goto #76
[075] :353:JUMPXEQKS      if p29 == 11 then -- goto #88
end
[077] :354:GETGLOBAL      v0 = Power5
[079] :354:GETIMPORT      v5 = script
[081] :354:GETTABLEKS     v2 = v5.Name
[082] :354:LOADK          v3 = "Power"
[083] :354:MOVE           v4 = p29
[084] :354:CONCAT         v1 = v2 .. v3 .. v4
[085] :354:MOVE           v2 = p30
[086] :354:LOADNIL        v3 = nil
[087] :354:CALL           v0(v1, v2, v3)
end
[089] :356:JUMPXEQKS      if p29 ~= 6 then -- goto #92
[091] :356:JUMPXEQKS      if p29 == 12 then -- goto #104
end
[093] :357:GETGLOBAL      v0 = Power6
[095] :357:GETIMPORT      v5 = script
[097] :357:GETTABLEKS     v2 = v5.Name
[098] :357:LOADK          v3 = "Power"
[099] :357:MOVE           v4 = p29
[100] :357:CONCAT         v1 = v2 .. v3 .. v4
[101] :357:MOVE           v2 = p30
[102] :357:LOADNIL        v3 = nil
[103] :357:CALL           v0(v1, v2, v3)
end
[104] :359:RETURN         return
end
[638] :595:CALL           v10:Connect(v12)
[640] :617:GETIMPORT      v12 = script
[642] :617:GETTABLEKS     v11 = v12.Controller
[644] :617:GETTABLEKS     v10 = v11.Event
[645] :617:DUPCLOSURE     v12 = function(p31, p32, p33)
-- proto pool id: 39
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 169
-- size constants: 15
-- lineinfo gap: 24
-- max stack size: 7
-- is typed: false
[002] :362:GETIMPORT      v3 = script
[004] :362:GETTABLEKS     v1 = v3.Name
[005] :362:LOADK          v2 = "Power1"
[006] :362:CONCAT         v0 = v1 .. v2
[008] :362:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #15
[010] :362:GETGLOBAL      v0 = Power1
[011] :362:MOVE           v1 = p31
[012] :362:MOVE           v2 = p32
[013] :362:MOVE           v3 = p33
[014] :362:CALL           v0(v1, v2, v3)
end
[016] :363:GETIMPORT      v3 = script
[018] :363:GETTABLEKS     v1 = v3.Name
[019] :363:LOADK          v2 = "Power2"
[020] :363:CONCAT         v0 = v1 .. v2
[022] :363:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #29
[024] :363:GETGLOBAL      v0 = Power2
[025] :363:MOVE           v1 = p31
[026] :363:MOVE           v2 = p32
[027] :363:MOVE           v3 = p33
[028] :363:CALL           v0(v1, v2, v3)
end
[030] :364:GETIMPORT      v3 = script
[032] :364:GETTABLEKS     v1 = v3.Name
[033] :364:LOADK          v2 = "Power3"
[034] :364:CONCAT         v0 = v1 .. v2
[036] :364:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #43
[038] :364:GETGLOBAL      v0 = Power3
[039] :364:MOVE           v1 = p31
[040] :364:MOVE           v2 = p32
[041] :364:MOVE           v3 = p33
[042] :364:CALL           v0(v1, v2, v3)
end
[044] :365:GETIMPORT      v3 = script
[046] :365:GETTABLEKS     v1 = v3.Name
[047] :365:LOADK          v2 = "Power4"
[048] :365:CONCAT         v0 = v1 .. v2
[050] :365:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #57
[052] :365:GETGLOBAL      v0 = Power4
[053] :365:MOVE           v1 = p31
[054] :365:MOVE           v2 = p32
[055] :365:MOVE           v3 = p33
[056] :365:CALL           v0(v1, v2, v3)
end
[058] :366:GETIMPORT      v3 = script
[060] :366:GETTABLEKS     v1 = v3.Name
[061] :366:LOADK          v2 = "Power5"
[062] :366:CONCAT         v0 = v1 .. v2
[064] :366:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #71
[066] :366:GETGLOBAL      v0 = Power5
[067] :366:MOVE           v1 = p31
[068] :366:MOVE           v2 = p32
[069] :366:MOVE           v3 = p33
[070] :366:CALL           v0(v1, v2, v3)
end
[072] :367:GETIMPORT      v3 = script
[074] :367:GETTABLEKS     v1 = v3.Name
[075] :367:LOADK          v2 = "Power6"
[076] :367:CONCAT         v0 = v1 .. v2
[078] :367:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #85
[080] :367:GETGLOBAL      v0 = Power6
[081] :367:MOVE           v1 = p31
[082] :367:MOVE           v2 = p32
[083] :367:MOVE           v3 = p33
[084] :367:CALL           v0(v1, v2, v3)
end
[086] :368:GETIMPORT      v3 = script
[088] :368:GETTABLEKS     v1 = v3.Name
[089] :368:LOADK          v2 = "Power7"
[090] :368:CONCAT         v0 = v1 .. v2
[092] :368:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #99
[094] :368:GETGLOBAL      v0 = Power1
[095] :368:MOVE           v1 = p31
[096] :368:MOVE           v2 = p32
[097] :368:MOVE           v3 = p33
[098] :368:CALL           v0(v1, v2, v3)
end
[100] :369:GETIMPORT      v3 = script
[102] :369:GETTABLEKS     v1 = v3.Name
[103] :369:LOADK          v2 = "Power8"
[104] :369:CONCAT         v0 = v1 .. v2
[106] :369:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #113
[108] :369:GETGLOBAL      v0 = Power2
[109] :369:MOVE           v1 = p31
[110] :369:MOVE           v2 = p32
[111] :369:MOVE           v3 = p33
[112] :369:CALL           v0(v1, v2, v3)
end
[114] :370:GETIMPORT      v3 = script
[116] :370:GETTABLEKS     v1 = v3.Name
[117] :370:LOADK          v2 = "Power9"
[118] :370:CONCAT         v0 = v1 .. v2
[120] :370:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #127
[122] :370:GETGLOBAL      v0 = Power3
[123] :370:MOVE           v1 = p31
[124] :370:MOVE           v2 = p32
[125] :370:MOVE           v3 = p33
[126] :370:CALL           v0(v1, v2, v3)
end
[128] :371:GETIMPORT      v3 = script
[130] :371:GETTABLEKS     v1 = v3.Name
[131] :371:LOADK          v2 = "Power10"
[132] :371:CONCAT         v0 = v1 .. v2
[134] :371:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #141
[136] :371:GETGLOBAL      v0 = Power4
[137] :371:MOVE           v1 = p31
[138] :371:MOVE           v2 = p32
[139] :371:MOVE           v3 = p33
[140] :371:CALL           v0(v1, v2, v3)
end
[142] :372:GETIMPORT      v3 = script
[144] :372:GETTABLEKS     v1 = v3.Name
[145] :372:LOADK          v2 = "Power11"
[146] :372:CONCAT         v0 = v1 .. v2
[148] :372:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #155
[150] :372:GETGLOBAL      v0 = Power5
[151] :372:MOVE           v1 = p31
[152] :372:MOVE           v2 = p32
[153] :372:MOVE           v3 = p33
[154] :372:CALL           v0(v1, v2, v3)
end
[156] :373:GETIMPORT      v3 = script
[158] :373:GETTABLEKS     v1 = v3.Name
[159] :373:LOADK          v2 = "Power12"
[160] :373:CONCAT         v0 = v1 .. v2
[162] :373:JUMPIFNOTEQ    if p31 ~= v0 then -- goto #169
[164] :373:GETGLOBAL      v0 = Power6
[165] :373:MOVE           v1 = p31
[166] :373:MOVE           v2 = p32
[167] :373:MOVE           v3 = p33
[168] :373:CALL           v0(v1, v2, v3)
end
[169] :374:RETURN         return
end
[648] :617:CALL           v10:Connect(v12)
[650] :632:GETIMPORT      v12 = script
[652] :632:GETTABLEKS     v11 = v12.Parent
[654] :632:GETTABLEKS     v10 = v11.Parent
[655] :632:LOADK          v12 = "DPAD"
[658] :632:CALL           v10 = v10:WaitForChild(v12)
[660] :632:SETGLOBAL      DPAD = v10
[661] :633:DUPCLOSURE     
local function Conser(p34, p35, p36)
-- proto pool id: 40
-- num upvalues: 1
-- num inner protos: 0
-- size instructions: 242
-- size constants: 32
-- lineinfo gap: 24
-- max stack size: 8
-- is typed: false
[001] :378:GETUPVAL       v3 = u_v3
[003] :378:GETTABLEKS     v2 = v3.Data
[005] :378:GETTABLEKS     v1 = v2.DevilFruit
[007] :378:GETTABLEKS     v0 = v1.Value
[009] :378:GETIMPORT      v2 = script
[011] :378:GETTABLEKS     v1 = v2.Name
[013] :378:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #122
[015] :379:GETGLOBAL      v1 = DPAD
[017] :379:GETTABLEKS     v0 = v1.Value
[019] :379:JUMPXEQKN      if v0 == 1 then -- goto #32
[021] :379:GETGLOBAL      v0 = Power1
[023] :379:GETIMPORT      v4 = script
[025] :379:GETTABLEKS     v2 = v4.Name
[026] :379:LOADK          v3 = "Power1"
[027] :379:CONCAT         v1 = v2 .. v3
[028] :379:MOVE           v2 = p35
[029] :379:MOVE           v3 = p36
[030] :379:CALL           v0(v1, v2, v3)
[031] :379:RETURN         return
end
[033] :380:GETGLOBAL      v1 = DPAD
[035] :380:GETTABLEKS     v0 = v1.Value
[037] :380:JUMPXEQKN      if v0 == 2 then -- goto #50
[039] :380:GETGLOBAL      v0 = Power2
[041] :380:GETIMPORT      v4 = script
[043] :380:GETTABLEKS     v2 = v4.Name
[044] :380:LOADK          v3 = "Power2"
[045] :380:CONCAT         v1 = v2 .. v3
[046] :380:MOVE           v2 = p35
[047] :380:MOVE           v3 = p36
[048] :380:CALL           v0(v1, v2, v3)
[049] :380:RETURN         return
end
[051] :381:GETGLOBAL      v1 = DPAD
[053] :381:GETTABLEKS     v0 = v1.Value
[055] :381:JUMPXEQKN      if v0 == 3 then -- goto #68
[057] :381:GETGLOBAL      v0 = Power3
[059] :381:GETIMPORT      v4 = script
[061] :381:GETTABLEKS     v2 = v4.Name
[062] :381:LOADK          v3 = "Power3"
[063] :381:CONCAT         v1 = v2 .. v3
[064] :381:MOVE           v2 = p35
[065] :381:MOVE           v3 = p36
[066] :381:CALL           v0(v1, v2, v3)
[067] :381:RETURN         return
end
[069] :382:GETGLOBAL      v1 = DPAD
[071] :382:GETTABLEKS     v0 = v1.Value
[073] :382:JUMPXEQKN      if v0 == 4 then -- goto #86
[075] :382:GETGLOBAL      v0 = Power4
[077] :382:GETIMPORT      v4 = script
[079] :382:GETTABLEKS     v2 = v4.Name
[080] :382:LOADK          v3 = "Power4"
[081] :382:CONCAT         v1 = v2 .. v3
[082] :382:MOVE           v2 = p35
[083] :382:MOVE           v3 = p36
[084] :382:CALL           v0(v1, v2, v3)
[085] :382:RETURN         return
end
[087] :383:GETGLOBAL      v1 = DPAD
[089] :383:GETTABLEKS     v0 = v1.Value
[091] :383:JUMPXEQKN      if v0 == 5 then -- goto #104
[093] :383:GETGLOBAL      v0 = Power5
[095] :383:GETIMPORT      v4 = script
[097] :383:GETTABLEKS     v2 = v4.Name
[098] :383:LOADK          v3 = "Power5"
[099] :383:CONCAT         v1 = v2 .. v3
[100] :383:MOVE           v2 = p35
[101] :383:MOVE           v3 = p36
[102] :383:CALL           v0(v1, v2, v3)
[103] :383:RETURN         return
end
[105] :384:GETGLOBAL      v1 = DPAD
[107] :384:GETTABLEKS     v0 = v1.Value
[109] :384:JUMPXEQKN      if v0 == 6 then -- goto #242
[111] :384:GETGLOBAL      v0 = Power6
[113] :384:GETIMPORT      v4 = script
[115] :384:GETTABLEKS     v2 = v4.Name
[116] :384:LOADK          v3 = "Power6"
[117] :384:CONCAT         v1 = v2 .. v3
[118] :384:MOVE           v2 = p35
[119] :384:MOVE           v3 = p36
[120] :384:CALL           v0(v1, v2, v3)
[121] :384:RETURN         return
end
[122] :386:GETUPVAL       v3 = u_v3
[124] :386:GETTABLEKS     v2 = v3.Data
[126] :386:GETTABLEKS     v1 = v2.DevilFruit2
[128] :386:GETTABLEKS     v0 = v1.Value
[130] :386:GETIMPORT      v2 = script
[132] :386:GETTABLEKS     v1 = v2.Name
[134] :386:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #242
[136] :387:GETGLOBAL      v1 = DPAD
[138] :387:GETTABLEKS     v0 = v1.Value
[140] :387:JUMPXEQKN      if v0 == 7 then -- goto #153
[142] :387:GETGLOBAL      v0 = Power1
[144] :387:GETIMPORT      v4 = script
[146] :387:GETTABLEKS     v2 = v4.Name
[147] :387:LOADK          v3 = "Power7"
[148] :387:CONCAT         v1 = v2 .. v3
[149] :387:MOVE           v2 = p35
[150] :387:MOVE           v3 = p36
[151] :387:CALL           v0(v1, v2, v3)
[152] :387:RETURN         return
end
[154] :388:GETGLOBAL      v1 = DPAD
[156] :388:GETTABLEKS     v0 = v1.Value
[158] :388:JUMPXEQKN      if v0 == 8 then -- goto #171
[160] :388:GETGLOBAL      v0 = Power2
[162] :388:GETIMPORT      v4 = script
[164] :388:GETTABLEKS     v2 = v4.Name
[165] :388:LOADK          v3 = "Power8"
[166] :388:CONCAT         v1 = v2 .. v3
[167] :388:MOVE           v2 = p35
[168] :388:MOVE           v3 = p36
[169] :388:CALL           v0(v1, v2, v3)
[170] :388:RETURN         return
end
[172] :389:GETGLOBAL      v1 = DPAD
[174] :389:GETTABLEKS     v0 = v1.Value
[176] :389:JUMPXEQKN      if v0 == 9 then -- goto #189
[178] :389:GETGLOBAL      v0 = Power3
[180] :389:GETIMPORT      v4 = script
[182] :389:GETTABLEKS     v2 = v4.Name
[183] :389:LOADK          v3 = "Power9"
[184] :389:CONCAT         v1 = v2 .. v3
[185] :389:MOVE           v2 = p35
[186] :389:MOVE           v3 = p36
[187] :389:CALL           v0(v1, v2, v3)
[188] :389:RETURN         return
end
[190] :390:GETGLOBAL      v1 = DPAD
[192] :390:GETTABLEKS     v0 = v1.Value
[194] :390:JUMPXEQKN      if v0 == 10 then -- goto #207
[196] :390:GETGLOBAL      v0 = Power4
[198] :390:GETIMPORT      v4 = script
[200] :390:GETTABLEKS     v2 = v4.Name
[201] :390:LOADK          v3 = "Power10"
[202] :390:CONCAT         v1 = v2 .. v3
[203] :390:MOVE           v2 = p35
[204] :390:MOVE           v3 = p36
[205] :390:CALL           v0(v1, v2, v3)
[206] :390:RETURN         return
end
[208] :391:GETGLOBAL      v1 = DPAD
[210] :391:GETTABLEKS     v0 = v1.Value
[212] :391:JUMPXEQKN      if v0 == 11 then -- goto #225
[214] :391:GETGLOBAL      v0 = Power5
[216] :391:GETIMPORT      v4 = script
[218] :391:GETTABLEKS     v2 = v4.Name
[219] :391:LOADK          v3 = "Power11"
[220] :391:CONCAT         v1 = v2 .. v3
[221] :391:MOVE           v2 = p35
[222] :391:MOVE           v3 = p36
[223] :391:CALL           v0(v1, v2, v3)
[224] :391:RETURN         return
end
[226] :392:GETGLOBAL      v1 = DPAD
[228] :392:GETTABLEKS     v0 = v1.Value
[230] :392:JUMPXEQKN      if v0 == 12 then -- goto #242
[232] :392:GETGLOBAL      v0 = Power6
[234] :392:GETIMPORT      v4 = script
[236] :392:GETTABLEKS     v2 = v4.Name
[237] :392:LOADK          v3 = "Power12"
[238] :392:CONCAT         v1 = v2 .. v3
[239] :392:MOVE           v2 = p35
[240] :392:MOVE           v3 = p36
[241] :392:CALL           v0(v1, v2, v3)
end
end
end
[242] :395:RETURN         return
end
v10 = Conser
[664] :633:SETGLOBAL      Conser = v10
[665] :652:NEWCLOSURE     
local function UpdateDPAD()
-- proto pool id: 41
-- num upvalues: 4
-- num inner protos: 0
-- size instructions: 145
-- size constants: 25
-- lineinfo gap: 24
-- max stack size: 11
-- is typed: false
[001] :397:GETUPVAL       v0 = u_v5
[003] :397:JUMPXEQKB      if v0 == true then -- goto #145
[005] :398:GETGLOBAL      v1 = DPAD
[007] :398:GETTABLEKS     v0 = v1.Value
[008] :398:LOADN          v1 = 1
[010] :398:JUMPIFNOTLE    if v1 <= v0 then -- goto #75
[012] :398:GETGLOBAL      v1 = DPAD
[014] :398:GETTABLEKS     v0 = v1.Value
[015] :398:LOADN          v1 = 6
[017] :398:JUMPIFNOTLE    if v0 <= v1 then -- goto #75
[018] :398:GETUPVAL       v1 = u_v8
[020] :398:GETTABLEKS     v0 = v1.Value
[022] :398:GETIMPORT      v2 = script
[024] :398:GETTABLEKS     v1 = v2.Name
[026] :398:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #75
[028] :399:GETIMPORT      v0 = game
[029] :399:LOADK          v2 = "ContextActionService"
[032] :399:CALL           v0 = v0:GetService(v2)
[034] :399:GETIMPORT      v5 = script
[036] :399:GETTABLEKS     v3 = v5.Name
[037] :399:LOADK          v4 = "Conser2"
[038] :399:CONCAT         v2 = v3 .. v4
[041] :399:CALL           v0:UnbindAction(v2)
[043] :400:GETIMPORT      v0 = game
[044] :400:LOADK          v2 = "ContextActionService"
[047] :400:CALL           v0 = v0:GetService(v2)
[049] :400:GETIMPORT      v5 = script
[051] :400:GETTABLEKS     v3 = v5.Name
[052] :400:LOADK          v4 = "Cons1"
[053] :400:CONCAT         v2 = v3 .. v4
[055] :400:GETGLOBAL      v3 = Conser
[056] :400:LOADB          v4 = false
[058] :400:GETIMPORT      v6 = Enum.KeyCode
[059] :400:GETUPVAL       v10 = u_v3
[061] :400:GETTABLEKS     v9 = v10.Data
[063] :400:GETTABLEKS     v8 = v9["Basic-DPadFn"]
[065] :400:GETTABLEKS     v7 = v8.Value
[066] :400:GETTABLE       v5 = v6[v7]
[069] :400:CALL           v0:BindAction(v2, v3, v4, v5)
[071] :401:GETIMPORT      v0 = print
[072] :401:LOADK          v1 = "BINDING 1"
[073] :401:CALL           v0(v1)
[074] :401:RETURN         return
end
end
end
[076] :402:GETGLOBAL      v1 = DPAD
[078] :402:GETTABLEKS     v0 = v1.Value
[079] :402:LOADN          v1 = 7
[081] :402:JUMPIFNOTLE    if v1 <= v0 then -- goto #145
[083] :402:GETGLOBAL      v1 = DPAD
[085] :402:GETTABLEKS     v0 = v1.Value
[086] :402:LOADN          v1 = 12
[088] :402:JUMPIFNOTLE    if v0 <= v1 then -- goto #145
[089] :402:GETUPVAL       v1 = u_v9
[091] :402:GETTABLEKS     v0 = v1.Value
[093] :402:GETIMPORT      v2 = script
[095] :402:GETTABLEKS     v1 = v2.Name
[097] :402:JUMPIFNOTEQ    if v0 ~= v1 then -- goto #145
[099] :403:GETIMPORT      v0 = game
[100] :403:LOADK          v2 = "ContextActionService"
[103] :403:CALL           v0 = v0:GetService(v2)
[105] :403:GETIMPORT      v5 = script
[107] :403:GETTABLEKS     v3 = v5.Name
[108] :403:LOADK          v4 = "Conser1"
[109] :403:CONCAT         v2 = v3 .. v4
[112] :403:CALL           v0:UnbindAction(v2)
[114] :404:GETIMPORT      v0 = game
[115] :404:LOADK          v2 = "ContextActionService"
[118] :404:CALL           v0 = v0:GetService(v2)
[120] :404:GETIMPORT      v5 = script
[122] :404:GETTABLEKS     v3 = v5.Name
[123] :404:LOADK          v4 = "Cons2"
[124] :404:CONCAT         v2 = v3 .. v4
[126] :404:GETGLOBAL      v3 = Conser
[127] :404:LOADB          v4 = false
[129] :404:GETIMPORT      v6 = Enum.KeyCode
[130] :404:GETUPVAL       v10 = u_v3
[132] :404:GETTABLEKS     v9 = v10.Data
[134] :404:GETTABLEKS     v8 = v9["Basic-DPadFn"]
[136] :404:GETTABLEKS     v7 = v8.Value
[137] :404:GETTABLE       v5 = v6[v7]
[140] :404:CALL           v0:BindAction(v2, v3, v4, v5)
[142] :405:GETIMPORT      v0 = print
[143] :405:LOADK          v1 = "BINDING 2"
[144] :405:CALL           v0(v1)
end
end
end
end
[145] :408:RETURN         return
end
v10 = UpdateDPAD
[671] :652:SETGLOBAL      UpdateDPAD = v10
[673] :665:GETTABLEKS     v10 = v8.Value
[675] :665:GETIMPORT      v12 = script
[677] :665:GETTABLEKS     v11 = v12.Name
[679] :665:JUMPIFEQ       if v10 == v11 then -- goto #688
[681] :665:GETTABLEKS     v10 = v9.Value
[683] :665:GETIMPORT      v12 = script
[685] :665:GETTABLEKS     v11 = v12.Name
[687] :665:JUMPIFNOTEQ    if v10 ~= v11 then -- goto #689
end
[688] :666:LOADB          v5 = true
end
[690] :668:GETGLOBAL      v10 = DPAD
[691] :668:LOADK          v12 = "Value"
[694] :668:CALL           v10 = v10:GetPropertyChangedSignal(v12)
[695] :668:DUPCLOSURE     v12 = function()
-- proto pool id: 42
-- num upvalues: 0
-- num inner protos: 0
-- size instructions: 4
-- size constants: 1
-- lineinfo gap: 24
-- max stack size: 1
-- is typed: false
[002] :412:GETGLOBAL      v0 = UpdateDPAD
[003] :412:CALL           v0()
[004] :412:RETURN         return
end
[698] :668:CALL           v10:Connect(v12)
[700] :669:GETGLOBAL      v10 = UpdateDPAD
[701] :669:CALL           v10()
[703] :669:RETURN         return
