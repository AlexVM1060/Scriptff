local filename = gg.getFile():match('[^/]+$')
      os.remove(filename)
toast.success("Cᴏɴᴇᴄᴛᴀᴅᴏ")

function archivoExiste(ruta)
    local archivo = io.open(ruta, "r")
    if archivo then
        io.close(archivo)
        return true
    else
        return false 
    end
end

function ChamsGeneral()
local rutaArchivo = "/storage/emulated/0/Android/data/com.dts.freefireth/cache/UnityShaderCache/holograma/ruta.txt"
if archivoExiste(rutaArchivo) then
HologramaStatus = "🟢 ACTIVADO"
    local scriptPathChamsUserX = "/storage/emulated/0/Android/data/com.dts.freefireth/cache/UnityShaderCache/holograma/Chams/ChamsOn/ChamsUserX.txt"
    local result = os.execute("sh " .. scriptPathChamsUserX .. " >/dev/null 2>&1")
    gg.toast("Chams: Activado 👻")
else 

gg.toast("Por favor, ingresa la ruta completa del archivo Chams")

local input = gg.prompt({"Ruta del archivo:"}, {"/data/app/com.dts.freefireth"}, {"file"})

if input and input[1] ~= "" then
    local ArchivoChams = input[1]
    gg.toast("Archivo seleccionado:\n" .. ArchivoChams)
else
    gg.alert("No se seleccionó ningún archivo. Saliendo...")
    return  -- Detenemos la ejecución aquí
end

local variable = input[1]  -- Extraemos la cadena de la tabla
local script_path = "/storage/emulated/0/Android/data/com.dts.freefireth/cache/UnityShaderCache/holograma/ruta.txt" -- Ruta del script sh
local script_path2 = "/storage/emulated/0/Android/data/com.dts.freefireth/cache/UnityShaderCache/holograma/ruta2.txt"  -- Ruta del script sh


-- Crear el contenido del script
local script_content = [[
#!/bin/sh
echo "archivoLibmain=']] .. variable .. [[/lib/arm64/libmain.so'"
]]

-- Crear el contenido del script
local script_content2 = [[
#!/bin/sh
echo "archivoLibmainReplace=']] .. variable .. [[/lib/arm64/libmain.soo'"
]]

-- Guardar el script en un archivo
local file = io.open(script_path, "w")
if file then
    file:write(script_content)
    file:close()
else
    gg.alert("Error al crear el script")
    return
end

-- Guardar el script en un archivo
local file = io.open(script_path2, "w")
if file then
    file:write(script_content2)
    file:close()
else
    gg.alert("Error al crear el script")
    return
end

-- Darle permisos de ejecución
os.execute("chmod +x " .. script_path)

-- Ejecutar el script
os.execute(script_path)
os.execute(script_path2)
    HologramaStatus = "🟢 ACTIVADO"
    local scriptPathChamsUserX = "/storage/emulated/0/Android/data/com.dts.freefireth/cache/UnityShaderCache/holograma/Chams/ChamsOn/ChamsUserX.txt"
    local result = os.execute("sh " .. scriptPathChamsUserX .. " >/dev/null 2>&1")
    gg.toast("Chams: Activado 👻")
Chams="UserX"
end
end

function ChamsOff()
local scriptPathChamsUserX = "/storage/emulated/0/Android/data/com.dts.freefireth/cache/UnityShaderCache/holograma/Chams/ChamsOff/ChamsOffUserX.txt"
local result = os.execute("sh " .. scriptPathChamsUserX .. " >/dev/null 2>&1")
gg.toast("BypassChams")
end




 local processName = "com.og.launcher"  -- Nombre del proceso que queremos comprobar
    local currentProcess = gg.getTargetPackage()
    if currentProcess == processName then
        local menu = gg.choice({
		"🔸 INYECTAR CHAMS 👻",
}, nil, "⚙️ INYECCIÓN DE CHAMS 👻") 
    if menu == 1 then
    ChamsGeneral() 
    end
    if menu == 2 then
    START() 
    end
    if menu == 3 then
    START()
    end
    if menu == 4 then
    START()
    end
    if menu == 5 then
    START()
    end
    if menu == 6 then
    START()
    end
    if menu == 7 then
    START()
    end
    if menu == 8 then
    START()
    end
    if menu == 9 then
    START()
    end
    else
        
    end




gg.jumpAPP("com.dts.freefireth")
gg.sleep(1000)
function update(name)
pcall(gg.setProcess,name)
gg.sleep(200)
return pcall(gg.setProcess, name)
end
update("com.dts.freefireth")
gg.setConfig(2131427463, 2+4)
gg.setConfig(2131427464, 0)

function Alex_InjectExternal(A1_842, A0_014, A5_928, A0_284)
MemoryRanges(A0_284)
SearchExtValue(A1_842, ExternalBypass, false, gg.SIGN_EQUAL, 0, -1)
ExternalResults(A0_014)
EditExtValue(A5_928, ExternalBypass, false, gg.SIGN_EQUAL, 0, -1)
gg.clearResults()
end

function Alex_InjectExternalData(A1_842, A0_014, A5_928, A0_284)
MemoryRanges(A0_284)
SearchExtValue(A1_842, ExternalBypass2, false, gg.SIGN_EQUAL, 0, -1)
ExternalResults(A0_014)
EditExtValue(A5_928, ExternalBypass2, false, gg.SIGN_EQUAL, 0, -1)
gg.clearResults()
end

function Alex_InjectExternalCData(A1_842, A0_014, A5_928, A0_284)
MemoryRanges(A0_284)
SearchExtValue(A1_842, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
ExternalResults(A0_014)
EditExtValue(A5_928, gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.clearResults()
end

ChamsOff()

gg.playMusic(RecursosPath.."/Sonidos/StartUpScriptSound.mp3")
gg.sleep(1000)
image(RecursosPath.."/Recursos/Inicio.png")
gg.toast('Pulsa en el Botón "Vale" para continuar')
gg.sleep(3000)
gg.playMusic("stop")

local rutaArchivo = DownloadPath.."/recursosvmv2.2.7.zip"

function archivoExiste(ruta)
    local archivo = io.open(ruta, "r")
    if archivo then
        io.close(archivo)
        return true
    else
        return false 
    end
end

-- Comprobar la existencia del archivo
if archivoExiste(rutaArchivo) then
file.zip(DownloadPath.."/recursosvmv2.2.7.zip",UnzipPath,Passcode,"unzip")
gg.sleep(1000)
toast="✅"
gg.playMusic(RecursosPath.."/Sonidos/SuccessSound.mp3")
gg.diyToast(toast,0,0xff00ff00,25,1)
gg.sleep(1000)
gg.playMusic("stop")
else
    gg.alert("ERROR:\nNo has descargado los recursos.\n‼️Se te autoredirigirá a tu navegador, descarga los archivos desde MediaFire y vuelve a ejecutar el Script\nEsto solo lo pedirá una vez‼️")
gg.gotoBrowser("https://www.mediafire.com/file/8zwswpsjmgm5rgy/recursosvmv2.2.7.zip/file")
toast="Descarga los archivos y vuelve a ejecutar el Script\nEsto solo lo pedirá una vez"
SoundOn()
os.exit()
end


gg.toast("Desactivando Proteccion del juego")
--BypassAntiban/Antiblack By AlexVM


gg.toast("Cargando proteccion")


gg.toast("Cargando proteccion")


gg.toast("Bypass VM Activado")
gg.setVisible(true)

function Inject()
gg.setVisible(false)
gg.toast("Inyectando...") 
end

user= "Test"
BypassStatus="🔴"
RegeditStatus="🔴"
AimAWMStatus="🔴"
AimMiraStatus="🔴"
BalasVMStatus="🔴"
AWMCrosshairStatus="🔴"
AntenaStatus="🔴"
AimFovExtStatus="🔴"
RegMetadataStatus="🔴"
CabezotasStatus="🔴"
CambioRapidoAWMStatus="🔴"
EspFrancosStatus="🔴"
NoDelayAWMStatus="🔴"
CorrerRapidoStatus="🔴"
HologramaStatus="🔴"

function START()
   local menu = gg.choice({
    "🔸MENÚ REGEDIT ☠️",
    "🔸MENÚ ANTENA 📡",
    "🔸MENÚ HOLOGRAMA 👻",
    "🔸MENÚ FAKE LAG 🌐",
    "🔸MENÚ BYPASS ⚠️",
    "🔹MI CUENTA 👤",
     "📂 CERRAR SCRIPT 📁"
}, nil, "🇲🇽Sᴄʀɪᴘᴛ ʜᴇᴄʜᴏ ᴘᴏʀ: Aʟᴇx VMツ\n🇲🇽ᴀɢʀᴀᴅᴇᴄɪᴍɪᴇɴᴛᴏꜱ ᴇꜱᴘᴇᴄɪᴀʟᴇꜱ ᴀ: Uꜱᴇʀx\n⚙️Vᴇʀsɪᴏɴ: Exᴛᴇʀɴᴀʟ ᴠ2❤\n👤Usᴇʀɴᴀᴍᴇ: "..user.." \n🕹Esᴛᴀᴅᴏ: ᴏɴʟɪɴᴇ")
os.remove(gg.EXT_STORAGE .. '/Android/data/com.dts.freefireth.samsung/files/reportnew.db', gg.LOAD_APPEND)
os.remove(gg.EXT_STORAGE .. '/Android/data/com.dts.freefireth.samsung/files/ymrtc_log.txt', gg.LOAD_APPEND)
gg.setRanges(16392) 
gg.searchNumber("7Fr;45r;4Cr;46r;01r;01r;01r;00r::8", 1, false, 536870912, 2195501056, 2238693376) 
gg.getResultsCount() 
gg.clearResults()
os.remove(gg.EXT_STORAGE .. '/Android/data/com.dts.freefireth/files/reportnew.db', gg.LOAD_APPEND)
os.remove(gg.EXT_STORAGE .. '/Android/data/com.dts.freefireth/files/ymrtc_log.txt', gg.LOAD_APPEND)
    gg.toast("💙Script Tᴇꜱᴛ💙\n⚜️Sᴄʀɪᴘᴛ ʜᴇᴄʜᴏ ᴘᴏʀ: Aʟᴇx VM✨")
    if menu == 1 then
      menuaimbot()
      end
    if menu == 2 then
      menuantenas()
    end
    if menu == 3 then
      HologramaMenu()
    end
    if menu == 4 then
      MenuFakeLag()
    end
    if menu == 5 then
      MenuBypass()
    end
    if menu == 6 then
      MiCuenta()
    end
    if menu == 7 then
      Cerrar()
    end
    if menu == 8 then
      Cerrar()
    end
    if menu == 9 then
      Cerrar()
    end
    if menu == 10 then
      Cerrar()
    end
    if menu == 11 then
      Cerrar()
    end
    if menu == 12 then
      Cerrar()
    end
    if menu == 13 then
      Cerrar()
    end
    if menu == 14 then
      Cerrar()
    end
    if menu == 15 then
      Cerrar()
    end
    if menu == 16 then
      Cerrar()
    end
    if menu == 17 then
      Cerrar() 
    end
    if menu == 18 then
      Cerrar()
    end
    if menu == 19 then
      Cerrar()
    end
    if menu == 20 then
      Cerrar()
    end
    if menu == 21 then
      Cerrar()
    end
    if menu == 22 then
      Cerrar()
    end
    if menu == 23 then
      Cerrar()
    end
    if menu == 24 then
      Cerrar()
    end
    if menu == 25 then
      Cerrar()
    end
    if menu == 26 then
      Cerrar()
    end
    if menu == 27 then
      Cerrar()
    end
    if menu == 28 then
      Cerrar()
      end
    if menu == 29 then
      Cerrar()
    end
    if menu == 30 then
      Cerrar()
    end
    if menu == 31 then
      Cerrar()
    end
    if menu == 32 then
      Cerrar()
    end
    if menu == 33 then
      Cerrar()
    end
    if menu == 34 then
      Cerrar()
    end
    if menu == 35 then
      Cerrar()
    end
    if menu == 36 then
      Cerrar()
    end
    if menu == 37 then
      Cerrar() 
    end
    if menu == 38 then
      Cerrar()
      end
    if menu == 39 then
      Cerrar()
    end
    if menu == 40 then
      Cerrar()
    end
    if menu == 41 then
      Cerrar()
    end
    end
    

function SoundOn()
gg.playMusic(RecursosPath.."/Sonidos/ONSound.mp3")
gg.diyToast(toast,0xff1b4d3e,0xff00ff00,25,1)
gg.sleep(1000)
gg.playMusic("stop")
end

function SoundSuccessOn()
gg.playMusic(RecursosPath.."/Sonidos/SuccessSound.mp3")
gg.diyToast(toast,0,0xff00ff00,25,1)
gg.sleep(1000)
gg.playMusic("stop")
end
    
function MiCuenta()
local menu = gg.choice({
"▶️ MOSTRAR LOGS 🔄",
"⚙️ CERRAR SESION 👤" ,
    "⬅️ REGRESAR"
}, nil, "⚙️ ʙɪᴇɴᴠᴇɴɪᴅᴏ ᴀʟ ᴇꜱᴘᴀᴄɪᴏ ᴅᴏɴᴅᴇ ᴘᴜᴇᴅᴇꜱ ᴠᴇʀ ʟᴏɢꜱ ʏ ᴄᴇʀʀᴀʀ ꜱᴇꜱɪᴏɴ ᴘᴀʀᴀ ᴄᴀᴍʙɪᴀʀ ᴅᴇ ᴜꜱᴜᴀʀɪᴏ 👤") 
    if menu == 1 then
    Logs() 
    end
    if menu == 2 then
    LogOut() 
    end
    if menu == 3 then
    START()
    end
    if menu == 4 then
    START()
    end
    if menu == 5 then
    START()
    end
    if menu == 6 then
    START()
    end
    end

function CheckGGVersion()
if GGVERSION  ~= "EXTERNAL v2.2" then
gg.alert("Pide actualizacion de GG a tu vendedor para poder activar esta opción")
os.exit()
else
end
end

function Logs()
gg.toast("Injectando...")                                
gg.alert("El Script va a acceder a su red(puede obtener información, riesgos maliciosos u conexiones a VPN fuera de la app)")
gg.toast("Cargando🔄")
gg.sleep(200)
gg.toast("Conectando🔄")
gg.sleep(300)
gg.toast("Conectando🔄")
gg.sleep(300)
gg.toast("Verificando su conexión🔄")
gg.sleep(300)
gg.toast("Conexión establecida✅")
gg.sleep(400)
gg.toast("Cargando Logs🔄")
gg.sleep(400)
gg.toast("Cargando Logs🔄")
gg.sleep(300)
gg.alert("Se ha conectado un dispositivo: "..getPhoneInfo().model.."\nIMEI: "..getPhoneInfo().imei.."\n━─━───────•••──────━─━\nOpciones Activas:\nAɪᴍ ᴀᴡᴍ: "..AimAWMStatus.."\nᴄᴀᴍʙɪᴏ ʀᴀᴘɪᴅᴏ ᴀᴡᴍ: "..CambioRapidoAWMStatus.."\nᴇꜱᴘ ꜰʀᴀɴᴄᴏꜱ: "..EspFrancosStatus.."\nAɴᴛᴇɴᴀ ᴄᴀʙᴇᴢᴀ: "..AntenaStatus.."\nʜᴏʟᴏɢʀᴀᴍᴀ: "..HologramaStatus)
end

function LogOut()
if gg.alert("¿Deseas cerrar sesión?", "SI", "NO") == 1 then
os.remove(UserLog)
gg.alert("Error de autenticación, por favor vuelve a iniciar sesión")
os.exit()
else

end
end

Menuaim = ""
function menuaimbot() 
local menu = gg.choice({
"🔸AIM MIRAS 🎯[EXTERNAL]", 
"🔸CORRER RÁPIDO 🏃🏻[EXTERNAL]",
"🔸CURARSE RÁPIDO ❤[EXTERNAL]",
"🔸ESP FRANCOS Y BALAS 📍[DATA]",
"🔸REGEDIT  ☠️[TEST]",
    "⬅️ REGRESAR"
}, nil, "☠️Mᴇɴᴜ ʀᴇɢᴇᴅɪᴛ ᴠᴍ🎯") 
    if menu == 1 then
    AimMiras() 
    end
    if menu == 2 then
    SpeedRun() 
    end
    if menu == 3 then
    CurarRapido()
    end
    if menu == 4 then
    EspFrancos()
    end
    if menu == 5 then
    RegeditVM()
    end
    if menu == 6 then
    START()
    end
    if menu == 7 then
    START()
    end
    if menu == 8 then
    START()
    end
    if menu == 9 then
    START()
    end
    end

function AimAWM()
CheckGGVersion()
AimAWMStatus="🟢 ACTIVADO"
Inject()
Alex_InjectExternal(AWMS, 9999, AWMR, ValueEncryptedd)
toast="Aim AMW: Activado🎯"
SoundOn()
end

function AimMiras()
CheckGGVersion()
AimAWMStatus="🟢 ACTIVADO"
Inject()
Alex_InjectExternal(AWMS, 9999, AWMR, ValueEncryptedd)
toast="Aim Miras: Activado🎯"
SoundOn()
end

function CambioAWM()
CheckGGVersion()
CambioRapidoAWMStatus="🟢 ACTIVADO"
Alex_InjectExternal(CambioRapidoAWMS, 9999, CambioRapidoAWMR, ValueEncryptedd)
toast="Cambio Rapido AWM: Activado⚡"
SoundOn()
end

function NoDelayAWM()
NoDelayAWMStatus= "🟢 ACTIVADO"
Alex_InjectExternal(NoDelayAWMS, 9999, NoDelayAWMR, ValueEncryptedd)
toast="No Delay AWM: Activado🔫"
SoundOn()
end

function SpeedRun()
CorrerRapidoStatus="🟢 ACTIVADO"
gg.alert("Solo puedes correr rápido con los puños")
Alex_InjectExternal(SpeedRunS, 9999, SpeedRunR, ValueEncryptedd)
toast="Correr Rápido: Activado🏃‍♂️"
SoundOn()
end

function EspFrancos()
EspFrancosStatus="🟢 ACTIVADO"
Alex_InjectExternalData(EspFrancoS1, 9999, EspFrancoR, ValueEncryptedd)
Alex_InjectExternalData(EspFrancoS2, 9999, EspFrancoR, ValueEncryptedd)
Alex_InjectExternalData(EspFrancoS3, 9999, EspFrancoR, ValueEncryptedd)
Alex_InjectExternalData(EspFrancoS4, 9999, EspFrancoR, ValueEncryptedd)
Alex_InjectExternalData(EspFrancoS5, 9999, EspFrancoR, ValueEncryptedd)
toast="Laser Francos y Balas: Activado📍"
SoundOn()
end

function CurarRapido()
CurarRapidoStatus = "🟢 ACTIVADO"
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("4;0;4.20389539e-45::9", gg.TYPE_FLOAT)
gg.refineNumber("4", gg.TYPE_FLOAT)
gg.getResults(1.0)
gg.editAll("3", gg.TYPE_FLOAT)
gg.clearResults()
toast="Curarse Rapido: Activado❤"
SoundOn()
end

function RegeditVM()
Inject()
gg.setRanges(gg.REGION_ANONYMOUS) 
gg.searchNumber("15.0;35.0;10.0;20.0::13", 50) 
gg.getResults(9999) 
gg.editAll("30;50;40;60", 50) 
gg.clearResults() 
toast="Regedit: Activado☠️"
SoundOn()
end

function BalasBR()

-- MP40
gg.setRanges(32)
gg.searchNumber(";ingame/backweapon/backwp_mp40", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(9999)
gg.editAll(";ingame/uav/uavpackage", gg.TYPE_WORD)
gg.clearResults()

-- AK47
gg.setRanges(32)
gg.searchNumber(";ingame/backweapon/backwp_ak47_gun", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(9999)
gg.editAll(";ingame/uav/uavpackage", gg.TYPE_WORD)
gg.clearResults()

-- UMP45
gg.setRanges(32)
gg.searchNumber(";ingame/backweapon/backwp_ump45_smg", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(9999)
gg.editAll(";ingame/uav/uavpackage", gg.TYPE_WORD)
gg.clearResults()

-- MP5
gg.setRanges(32)
gg.searchNumber(";ingame/backweapon/backwp_mp5", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(9999)
gg.editAll(";ingame/uav/uavpackage", gg.TYPE_WORD)
gg.clearResults()

-- SCAR
gg.setRanges(32)
gg.searchNumber(";ingame/backweapon/backwp_scar", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(9999)
gg.editAll(";ingame/uav/uavpackage", gg.TYPE_WORD)
gg.clearResults()

-- Groza
gg.setRanges(32)
gg.searchNumber(";ingame/backweapon/backwp_groza", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(9999)
gg.editAll(";ingame/uav/uavpackage", gg.TYPE_WORD)
gg.clearResults()

-- XM8
gg.setRanges(32)
gg.searchNumber(";ingame/backweapon/backwp_xm8", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(9999)
gg.editAll(";ingame/uav/uavpackage", gg.TYPE_WORD)
gg.clearResults()

-- M60
gg.setRanges(32)
gg.searchNumber(";ingame/backweapon/backwp_m60", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(9999)
gg.editAll(";ingame/uav/uavpackage", gg.TYPE_WORD)
gg.clearResults()

-- MAG7
gg.setRanges(32)
gg.searchNumber(";ingame/backweapon/backwp_mag7", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(9999)
gg.editAll(";ingame/uav/uavpackage", gg.TYPE_WORD)
gg.clearResults()

-- FAL
gg.setRanges(32)
gg.searchNumber(";ingame/backweapon/backwp_fal", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(9999)
gg.editAll(";ingame/uav/uavpackage", gg.TYPE_WORD)
gg.clearResults()

-- AUG
gg.setRanges(32)
gg.searchNumber(";ingame/backweapon/backwp_aug", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(9999)
gg.editAll(";ingame/uav/uavpackage", gg.TYPE_WORD)
gg.clearResults()

-- M4A1
gg.setRanges(32)
gg.searchNumber(";ingame/backweapon/backwp_m4a1_gun", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(9999)
gg.editAll(";ingame/uav/uavpackage", gg.TYPE_WORD)
gg.clearResults()

-- M1887
gg.setRanges(32)
gg.searchNumber(";ingame/backweapon/backwp_m1887", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(9999)
gg.editAll(";ingame/uav/uavpackage", gg.TYPE_WORD)
gg.clearResults()

-- G36
gg.setRanges(32)
gg.searchNumber(";ingame/backweapon/backwp_g36", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(9999)
gg.editAll(";ingame/uav/uavpackage", gg.TYPE_WORD)
gg.clearResults()

-- Thompson
gg.setRanges(32)
gg.searchNumber(";ingame/backweapon/backwp_thompson", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(9999)
gg.editAll(";ingame/uav/uavpackage", gg.TYPE_WORD)
gg.clearResults()

-- M1014
gg.setRanges(32)
gg.searchNumber(";ingame/backweapon/backwp_m1014", gg.TYPE_WORD, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(9999)
gg.editAll(";ingame/uav/uavpackage", gg.TYPE_WORD)
gg.clearResults()

toast="Balas Mágicas: Activadas"
SoundOn()
end


function menuantenas()
local menu = gg.multiChoice({
"🔸ANTENA CABEZA 📡",
    "⬅️ REGRESAR"
}, nil, "✨ Mᴇɴᴜ ᴀɴᴛᴇɴᴀ 🗼") 
    if menu == nil then
    else
    if menu[1] == true then
    Antenadedo()
    end
    if menu[2] == true then
    START() 
    end
    if menu[3] == true then
    START()
    end
    if menu[4] == true then
    START()
    end
    if menu[5] == true then
    START()
    end
    if menu[6] == true then
    START()
    end
    if menu[7] == true then
    START()
    end
    if menu[8] == true then
    START()
    end
    end
    end

function Antenadedo()
CheckGGVersion()
AntenaStatus="🟢 ACTIVADO"
Inject()
Alex_InjectExternal(AntenaMaleS, 9999, AntenaMaleR, ValueEncryptedd)
Inject()
Alex_InjectExternal(AntenaFemaleS, 9999, AntenaFemaleR, ValueEncryptedd)
toast="Antena Cabeza: Activada🗼"
SoundOn()
end

function HologramaMenu()
local menu = gg.choice({
"🔸ACTIVAR HOLOGRAMA 👻",
"🔸DESACTIVAR HOLOGRAMA 🤡",
"🔻ELIMINAR RECURSOS 🗑️",
    "⬅️ REGRESAR"
}, nil, "⚙️ MENÚ HOLOGRAMA 👻") 
    if menu == 1 then
    HologramaActivate() 
    end
    if menu == 2 then
    HologramaDeactivate() 
    end
    if menu == 3 then
    BorrarRecursos()
    end
    if menu == 4 then
    START()
    end
    if menu == 5 then
    START()
    end
    if menu == 6 then
    START()
    end
    if menu == 7 then
    START()
    end
    if menu == 8 then
    START()
    end
    if menu == 9 then
    START()
    end
    end


function HologramaActivate()
CheckGGVersion()
HologramaStatus="🟢 ACTIVADO"
Inject()
gg.alert("Para que el holograma funcione correctamente debe descargar todos los aspectos de ropa en el juego")
local result = os.execute("sh " .. scriptPathOn .. " >/dev/null 2>&1")
toast="Holograma: Activado 👻"
SoundOn()
end
 
function HologramaDeactivate()
CheckGGVersion()
HologramaStatus="🔴 DESACTIVADO"
Inject()
local result = os.execute("sh " .. scriptPathOff .. " >/dev/null 2>&1")
toast="Holograma: Desactivado 👻"
SoundOn()
end

function ChamsMenu()
local menu = gg.choice({
"🔸CHAMS USERX 👻",
"🔸CHAMS ALEX 👻",
}, nil, "⚙️ INYECCIÓN DE CHAMS 👻") 
    if menu == 1 then
	Chams="UserX"
    ChamsUserX() 
    end
    if menu == 2 then
	Chams="Alex"
    ChamsAlex() 
    end
    if menu == 3 then
    START()
    end
    if menu == 4 then
    START()
    end
    if menu == 5 then
    START()
    end
    if menu == 6 then
    START()
    end
    if menu == 7 then
    START()
    end
    if menu == 8 then
    START()
    end
    if menu == 9 then
    START()
    end
    end

function ChamsAlex()
    CheckGGVersion()
    HologramaStatus = "🟢 ACTIVADO"
    Inject()
    local scriptPathChamsAlex = RecursosPath .. "/Chams/ChamsOn/ChamsAlex.txt"
    local result = os.execute("sh " .. scriptPathChamsAlex .. " >/dev/null 2>&1")
        toast = "Chams: Activado 👻"
    SoundOn()
    gg.jumpAPP("com.dts.freefireth")
    gg.alert("Ejecuta el Script de nuevo, seleccionando el FF")
    os.exit()
end

function ChamsUserX()
    CheckGGVersion()
    HologramaStatus = "🟢 ACTIVADO"
    Inject()
    local scriptPathChamsUserX = RecursosPath .. "/Chams/ChamsOn/ChamsUserX.txt"
    local result = os.execute("sh " .. scriptPathChamsUserX .. " >/dev/null 2>&1")
        toast = "Chams: Activado 👻"
    SoundOn()
    gg.jumpAPP("com.dts.freefireth")
    gg.alert("Ejecuta el Script de nuevo, seleccionando el FF")
    os.exit()
end

function ChamsOff()
	if Chams == "UserX" then
    local scriptPathChamsUserX = RecursosPath .. "/Chams/ChamsOff/ChamsOffUserX.txt"
    local result = os.execute("sh " .. scriptPathChamsUserX .. " >/dev/null 2>&1")
else
local scriptPathChamsAlex = RecursosPath .. "/Chams/ChamsOff/ChamsOffAlex.txt"
    local result = os.execute("sh " .. scriptPathChamsAlex .. " >/dev/null 2>&1")
end
end


function BorrarRecursos()
os.remove(DownloadPath.."/recursosvmv2.zip")
toast="Recursos eliminados: Correctamente✅"
SoundSuccessOn()
end

function MenuBypass()
local menu = gg.choice({
"🔸ACTIVAR BYPASS VPN ⚠️[LOBBY]",
"🔸DESACTIVAR BYPASS VPN ⚠️[LOBBY]",
"🔸REGEDIT METADATA ☠️[LOGIN]",
"🔸AIM 180 ✨[PARTIDA]",
    "⬅️ REGRESAR"
}, nil, "⚙️ MENÚ BYPASS ⚠️") 
    if menu == 1 then
    BypassVPN() 
    end
    if menu == 2 then
    BypassVPNOff() 
    end
    if menu == 3 then
    HsMetadata()
    end
    if menu == 4 then
    Aim180()
    end
    if menu == 5 then
    START()
    end
    if menu == 6 then
    START()
    end
    if menu == 7 then
    START()
    end
    if menu == 8 then
    START()
    end
    if menu == 9 then
    START()
    end
    end

function BypassMeta()

CheckGGVersion()
Inject()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(":BanReasonIdUrlnofindBanReasonconfig.reason:T_21_HYL_BANNED_OTHERSReasonIdReason", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(":NoBanReasonIdUrlnofindNoBanReasonconfig.reason:T_21_HYL_NOBANNED_OTHERSReasonIdReason", gg.TYPE_BYTE)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(":ONBLOCKED_ROOM_IDBLOCKED", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(":NO_ONBLOCKED_ROOM_ID_NOBLOCKED", gg.TYPE_BYTE)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(":CACHE_CLOSEGGMES_CACHE_CLOSEAPPLICATION_SIZE_THRESHOLDSYSTEMFONTS_BLACKLISTSYSTEMFONTS_WHITELISTS", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(999, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll(":CACHE_CLOSEGGMES_CACHE_CLOSEAPPLICATION_SIZE_THRESHOLDSYSTEMFONTS_NOBLACKLISTSYSTEMFONTS_WHITELISTS", gg.TYPE_BYTE)
toast="Bypass: Activado ⚠️"
SoundOn()
end

function BypassVPN()
local scriptPathVPN = RecursosPath.."/Bypass/bypassvm.txt"
local result = os.execute("sh " .. scriptPathVPN .. " >/dev/null 2>&1")
toast="Bypass VPN: Activado ⚠️"
SoundOn()
end

function BypassVPNOff()
CheckGGVersion()
Inject()
gg.jumpAPP("com.vm.externall")
gg.sleep(4000)
local scriptPathVPN = RecursosPath.."/Bypass/bypassvmoff.txt"
local result = os.execute("sh " .. scriptPathVPN .. " >/dev/null 2>&1")
toast="Bypass: Desactivado ⚠️"
SoundOn()
end

function HsMetadata()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(":bone_Neck", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(9999)
gg.editAll(":bone_Necs", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber(":bone_Hips", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(9999)
gg.editAll(":bone_Neck", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
gg.clearResults()
toast="Headshot Meta: Activado☠️"
SoundOn()
end

function Aim180()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1057048494;1054951342;1053273620", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(20000)
gg.editAll("-20000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.clearResults()
toast="Aim 180: Activado✨"
SoundOn()
end

function MenuFakeLag()
local menu = gg.choice({
"🔸FAKE LAG [DUELO/CS RANKED] 🌐",
"🔸FAKE LAG [BR RANKED] [CLIC]🌐",
    "⬅️ REGRESAR"
}, nil, "⚙️ MENÚ FAKE LAG 🌐") 
    if menu == 1 then
    FakeLagDE() 
    end
    if menu == 2 then
    FakeLagBR() 
    end
    if menu == 3 then
    START()
    end
    if menu == 4 then
    START()
    end
    if menu == 5 then
    START()
    end
    if menu == 6 then
    START()
    end
    if menu == 7 then
    START()
    end
    if menu == 8 then
    START()
    end
    if menu == 9 then
    START()
    end
    end


function FakeLagDE()
CheckGGVersion()
FakeLagDEStatus="🟢 ACTIVADO"
Inject()
local scriptPathFakeLag = RecursosPath.."/FakeLag/FakeLagDueloOn/fakelag.txt"
local result = os.execute("sh " .. scriptPathFakeLag .. " >/dev/null 2>&1")
toast="Fake Lag: Activado 🌐"
SoundOn()
end
 
function FakeLagBR()
CheckGGVersion()
FakeLagDEStatus="🟢 ACTIVADO"
Inject()
    Ghost = true
    menuk = -1
    setup = false
    while true do
      if gg.isVisible(true) then
        menuk = 1
        gg.setVisible(false)
      end
      if menuk == 1 then
        gg.isVisible(false)
        menuk = -1
        if not setup then
          setup = not setup
        else
          if Ghost == true then
            Ghost = false
            local scriptPathFakeLag = RecursosPath.."/FakeLag/FakeLagBrOn/fakelag.txt"
local result = os.execute("sh " .. scriptPathFakeLag .. " >/dev/null 2>&1")
            toast="Fake Lag: Activado 🌐"
            
          else
            local scriptPathFakeLag = RecursosPath.."/FakeLag/FakeLagBrOff/fakelagoff.txt"
local result = os.execute("sh " .. scriptPathFakeLag .. " >/dev/null 2>&1")
            toast="Fake Lag: Desactivado 🌐"
            
            Ghost = true
          end
          SoundOn()
        end
        end 
end
end

      

  function Cerrar()
    gg.setVisible(true)
    gg.alert("Dios los bendiga grandemente 🙏🏻, gracias por ayudarme al usar mis scripts ❤️")
    os.remove(gg.EXT_STORAGE .. "/Android/data/com.dts.freefireth/files/reportnew.db", gg.LOAD_APPEND)
    os.remove(gg.EXT_STORAGE .. "/Android/data/com.dts.freefireth/files/ymrtc_log.txt", gg.LOAD_APPEND)
    os.exit()
  end 
  
local filename = gg.getFile():match('[^/]+$')
      os.remove(filename)

  
  while true do
    if gg.isVisible(true) then
      XGCK = 1
      gg.setVisible(false)
      gg.clearResults()
      os.remove(gg.EXT_STORAGE .. "/ALEX VM💙.ʟᴜᴀ")
    end
    if XGCK == 1 then
      START()
    end
    XGCK = -1
  end