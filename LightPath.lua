tfm.exec.disableMinimalistMode (true) 
tfm.exec.disableDebugCommand (true) 
tfm.exec.disableMortCommand (true) 
tfm.exec.disablePhysicalConsumables () 
tfm.exec.disableWatchCommand (true) 
tfm.exec.disableAfkDeath (true) 
tfm.exec.disableAutoScore (true) 
tfm.exec.disableAutoShaman (true) 
tfm.exec.disableAutoTimeLeft (true) 
tfm.exec.disableAutoNewGame (true) 
p={}
lang={}
data={}
lb_page={}
translations={}
lobis=0
local counter = 0
local objects = {}
tfm.exec.chatMessage=print
keys={space=32,x=88,down=40,s=83,p=80,o=79,u=85,h=72,l=76}
ayar={timer=10,lazimkisi=2,toptime=30000,elbekle=3}
mice=0
lobi="@7498798"
maps={7496910,7496887,7500450,7509265,7509561} 
tfm.exec.newGame(maps[math.random(#maps)]) 
function eventTur(name)
lang[name]={
env="Envanter",
shp="Market",
kapat="Kapat",
kullan="Kullan",
kllaniyo="Kullanılıyor",
bekle="Başka Oyuncular Bekleniyor",
oyver="Kişisine Oy Verildi !",
fail="İşlem Başarısız",
oytuttu="Kişisine Verdiğiniz Oy Tuttu !",
satinal="Satın Al",
fiyat="Fiyat",
item="İtem",
alindi="Satın Alındı",
paran="Paran",	
para="Para",
envsahip="Eşyaların",
artik="Artık",
kullandin="İtemini Kullanıyorsun.",
paranyetersiz="Paranız Yetersiz",
satinaldiniz="Satın Aldınız",
yardim="Yardım",
proflid="Lider Sıralaması ",
profilpuan="Puan Değeri ",
profilkz="Kazanma Sayısı ",
profilky="Kaybetme Sayısı ",
profilsahip="Envanter",
kazanimlar="Kazanımlar",
isim="İsim",
skor="Skor",
comm="Topluluk",
toplam="Toplam",
basarimkazandin="Başarımını Kazandın",
bilgi="Bilgilendirme"
}
p[name].lang="TR"
translations[name]={
help={
"<p align='center'><font size='15'><b><rose>#Lightpath'a <j>Hoşgeldiniz <vp> ^_^</b><font size='12'><br><br><p align=''> <bv>Eğer Kazanmak istiyorsan burdaki amaç Bir itemin üstünde durmaktır<br><br> Zeminler 10 saniyede bir yok olup 10 saniye sonra ise geri gelir<br><br> Eğer Yere eşyanızı bıraktıysanız 30 saniye sonra yok olacaktır ve ardından yeniden eşya koyabileceksiniz<br><br><br>İyi Şanslar ^",
"<j><p align='center'><font size='15'>Komutlar<font size='11'><p align=''><br><br><g>!p , !profil , !perfil veya !profile <j>-> <vp>Eğer bir isim kullanırsanız Kişinin profili açılır eğer kullanmazsanız Kendi profiliniz açılır<g><br>!help  <j>-> <vp> Open Help<g><br>!shop  <j>-> <vp> Market Açılır<g><br>!inv  <j>-> <vp> Envanter Açılır<g><br>!lang  <j>-> <vp> TR , EN veya PL Örnek: !lang tr<g><br>!vote İsim  <j>-> <vp> Eğer Ölmüşseniz Canlı bir kişiye oy verebilirsiniz Örnek : !vote Tigrounette#0001<br><br><j>Eğer Meep Sayacınız Dolu ise <bv> Space<j> ile <r>Meep <j>Kullanabilirsiniz<br><br><j>Eğer Boost'unuz Dolu ise <bv>X <v>ile <r>Süper Boost <j>Kullanabilirsiniz<br><br>Her 30 Saniyede bir <r>Eğilme Yada S Tuşu <v>ile <bv>Eşya Bırakırsınız",
"<p align='center'><j><font size='15'><b>Credits</b><font size='11'><p align=''><br><br><br><br><v>•<j> Kodlayıcı Ve Geliştirici <g>:<br><r> aaaaaa<j> ve <vp>aaaaa<br><br><v>•<j> Mapcrew ve Geliştirici <g>:<br> <v>Nkjnkjnj<br><br><v>•<j> Fikir Bulanlar<g> :<br><v> aaaaaaa"
}
}
end

function eventEng(name)
lang[name]={
env="Inventory",
shp="Shop",
kapat="Close",
kullan="Use",
kllaniyo="Used",
bekle="Wait for Other Players",
oyver=" Voted player",
fail="Process Failure",
oytuttu="The person you voted earned",
satinal="Buy",
fiyat="Price",
item="Item",
alindi="Purchased",
paran="Coins",
para="Coin",
envsahip="Items",
artik="Now",
kullandin="Used this item",
paranyetersiz="Paranız yeterli değil :(",
satinaldiniz="Purchased",
yardim="Help",
proflid="Leaderboard Ranking ",
profilpuan="Points ",
profilkz="Win Count ",
profilky="Lose Count ",
profilsahip="Inventory",
kazanimlar="Achievement",
isim="Name",
skor="Score",
comm="Community",
toplam="Total",
basarimkazandin="Won This achievement",
bilgi="Information"
}
p[name].lang="EN"
translations[name]={
help={
"<p align='center'><font size='15'><b><j>Welcome to <rose>#Lightpath<vp> ^_^</b><font size='12'><br><br><p align=''> <bv>If you want to win this purpose under a item<br><br> If you want to win the game, surive on a ball!<br><br> The grounds will be removed every 10 seconds and they'll come back in every 10 seconds.<br><br> If you drop your item 30 second remove but you can again drop item<br><br><br>Good luck ^",
"<j><p align='center'><font size='15'>Commands<font size='11'><p align=''><br><br><g>!p or !profil or !perfil or !profile <j>-> <vp>If you use a name open a other profile but only use command open your profile<g><br>!help  <j>-> <vp> Open Help<g><br>!shop  <j>-> <vp> Open Shop<g><br>!inv  <j>-> <vp> Open Your Inventory<g><br>!lang  <j>-> <vp> Only TR , EN or PL Example: !lang tr<g><br>!vote Name  <j>-> <vp> If dead you can use this command Example : !vote Tigrounette#0001<br><br><j>If your meep full you can use <bv> Meep<j> With <r>Space<br><br><j>If your boost full you can use <bv>Super Boost <v>With <r>X <br><br>Every 30 Second you can drop a <r>item <v>With <bv>Press Down Or S button",
"<p align='center'><j><font size='15'><b>Credits</b><font size='11'><p align=''><br><br><br><br><v>•<j>  Kodlayıcı Ve Geliştirici <g>:<br><r> aaaaaa<j> ve <vp>aaaaa<br><br><v>•<j> Mapcrew ve Geliştirici <g>:<br> <v>Nkjnkjnj<br><br><v>•<j> Fikir Bulanlar<g> :<br><v> aaaaaaa"
}
}
end

function eventPols(name)
lang[name]={
env="Inventário",
shp="Fazer compras",
kapat="Fechar",
kullan="Usar",
kllaniyo="Usava",
bekle="Espere por outros jogadores",
oyver="Jogador votado",
fail="Falha no processo",
oytuttu="A pessoa que você votou ganhou",
satinal="Comprar",
fiyat="Preço",
item="Item",
alindi="Comprado",
paran="Dinheiros",
para="Dinheiro",
envsahip="Items",
artik="Agora",
kullandin="Usou este item",
paranyetersiz="não é suficiente o seu dinheiro :(",
satinaldiniz="Comprado",
yardim="Socorro",
proflid="Classificação",
profilpuan="Pontos",
profilkz="Contagem de vitórias",
profilky="Perder a contagem",
profilsahip="Inventário",
kazanimlar="Captar",
isim="Nome",
skor="Ponto",
comm="Comunidade",
toplam="Total",
basarimkazandin="Başarımını Kazandın",
bilgi="Em formação"
}
p[name].lang="PL"
translations[name]={
help={
"<p align = 'center'> <font size='15'><b><j> Bem-vindo ao <rose> #Lightpath <vp> ^_^ </b> <font size='12'><br><br><br><p align = ''><br><bv> Se você quer ganhar o jogo, receba uma bola! <br><br>O terreno será removido a cada 10 segundos e eles voltarão em a cada 10 segundos. <br><br>Se você deixar cair o item 30 segundo remover, mas você pode cair novamente item <br><br><br> Boa sorte ^",
"<j> <p align = 'center'> <font size='15'> Comandos <font size='11'> <p align = ''> <br> <br> <g> p ou !profil ou !perfil ou !profile <j> -> <vp> Se você usar um nome, abra um outro perfil, mas use somente o comando abra seu perfil <g> <br>!help <j> -> <vp> Abra a Ajuda <g> <br>!shop <j> -> <vp> Open Shop <g> <br>!inv <j> -> <vp> Abra seu inventário <g> <br>!lang <j> -> <vp > Apenas TR, EN ou PL Exemplo:!lang tr <g> <br>!vote Nome <j> -> <vp> Se estiver morto, você pode usar este comando Exemplo:!vote Tigrounette#0001 <br> <br> <j> Se o seu meep cheio você pode usar <bv> Meep <j> Com o Espaço <r> <br> <br> <j> Se o seu impulso completo você pode usar <bv> Super Boost <v> Com <r> X <br> <br> A cada 30 segundos, você pode soltar um <r> item <v> Com <bv> Pressione o botão Para baixo ou S",
"<p align = 'center'><j><font size='15'><b>Créditos </b> <font size='11'> <p align=''> <br> <br> <br> <br> <v> • 5 <br> <br> <v> Kodlayıcı Ve Geliştirici <g>:<br><r> aaaaaa<j> ve <vp>aaaaa<br><br><v>•<j> Mapcrew ve Geliştirici <g>:<br> <v>Nkjnkjnj<br><br><v>•<j> Fikir Bulanlar<g> :<br><v> aaaaaaa"
}
}
end
function eventNewPlayer(name)
mice=mice+1
if not p[name] then
p[name]={
ob="",
hak=1,
ostime=os.time(),ostimes=os.time(),topkoy=ayar.toptime,a=0,oyverkisi="",oyverdi=0,
onlisim="",onlack=0,kazan=0,kaybet=0,puan=0,helpid=1,rank=0,penc=0,lang="xx",community="xx",kazanimsayfa=1,kazanimmax=0,

money = 100000,
		inventory = {{item="LightBall"}},
		using = {item="LightBall"},
		shop = {
			{item="LightBall",price=0,buyed=true},
			{item="Pumpkin",price=250,buyed=false},
			{item="Pufferfish",price=300,buyed=false},
			{item="Beach",price=350,buyed=false},
			
		},
		
		kazandk = {},
		kazans = {
			{item="First Join :3",win=0,score=0,death=0,alindi=false,info={TR="<p align='center'><br><br>Merhaba Oyuncu İlk Defa Giriş Yaptınız :3<br><br>Hoşgeldiniz !",EN="<p align='center'><br><br>Hello bro you join this game :3<br><br>Welcome !",PL="<p align='center'><br><br>Olá bro você participar deste jogo: 3 <br> <br> Bem-vindo!"}},
			{item="Test Item",win=1,score=0,death=0,alindi=false,info={TR="Deneme Başarım",EN="Test Achievement",PL="Conquista de Teste"}},
		}

}
end
data[name]={0,0,0,tfm.get.room.playerList[name].community}
lb_page[name] = 1
p[name].community=tfm.get.room.playerList[name].community
if tfm.get.room.playerList[name].community=="tr" or tfm.get.room.playerList[name].community=="en" or tfm.get.room.playerList[name].community=="pl" then
if tfm.get.room.playerList[name].community=="tr" then
eventTur(name)
tfm.exec.chatMessage("<br><rose>#LightPath'a <v>Hoşgeldin<br><CS>O<bv> Tuşuna Basarsanız Market Açılır<br><CS>U <bv>Tuşuna Basarsanız Envanter Açılır<br><CS>H <bv>Tuşuna Basarsanız Yardım Açılır<br><CS>L <bv>Tuşuna Basarsanız Lider Tablosu Açılır<br><CS>P <bv>Tuşuna Basarsanız Profiliniz Açılır",name)
end
if tfm.get.room.playerList[name].community=="en" then
eventEng(name)
tfm.exec.chatMessage("<br><v>Welcome To <rose>#LightPath<br><bv>If press to<CS> O<bv> Open Shop<br><bv>If press to<CS> U <bv> Open Inventory<br><bv>If press to<CS> H <bv> Open Help<br><bv>If press to<CS> L <bv> Open Leaderboard<br><bv>If press to<CS> P <bv> Open Your Profile",name)
end
if tfm.get.room.playerList[name].community=="pl" then
eventPols(name)
tfm.exec.chatMessage("<br> <v> Bem-vindo a <rose> #LightPath <br> <bv> Se pressionar <CS> O <bv> Abrir Loja <br> <bv> Se pressionar <CS> U <bv> Abrir Inventário <br> <bv> Se pressionar para <CS> H <bv> Abrir Ajuda <br> <bv> Se pressionar para <CS> L <bv> Abrir o placar da classificação <bv> Se pressionar para <CS> P <bv> Abra seu perfil",name)
end
else
eventEng(name)
tfm.exec.chatMessage("<r>Not Maked Your Language Your Community : "..tfm.get.room.playerList[name].community.." but Available Language TR - EN - PL",name)
end
tfm.exec.bindKeyboard(name,keys.down,true)
tfm.exec.bindKeyboard(name,keys.space,true)
tfm.exec.bindKeyboard(name,keys.s,true)
tfm.exec.bindKeyboard(name,keys.p,true)
tfm.exec.bindKeyboard(name,keys.o,true)
tfm.exec.bindKeyboard(name,keys.l,true)
tfm.exec.bindKeyboard(name,keys.h,true)
tfm.exec.bindKeyboard(name,keys.u,true)
tfm.exec.bindKeyboard(name,keys.x,true)
end
for name in pairs(tfm.get.room.playerList) do
eventNewPlayer(name)
end

kazanimSayfa = function(page)
	local text = {}
	for name in pairs(p) do
	for i, playerName in next, {table.unpack(p[p[name].onlisim].kazandk, (page-1)*14+1, page*14)} do
		table.insert(text, string.format("<r>#</r><j>%d</j> <vp>%s</vp>", (page-1)*14+i, playerName))
		p[name].kazanimmax=0
		p[name].kazanimmax=(p[name].kazanimmax-1)*14+i
	end
	return table.concat(text, "\n")
end
end

function eventLoop(t,r)
ui.addTextArea(-2,"<p align='center'><a href='event:help'><b>?</b></a></p>",name,780,374,16,16,nil,0x324650,nil,true)
for name in pairs(p) do
for i,v in pairs(p[name].kazans) do
if v.alindi==false and p[name].kazan >= v.win and p[name].puan >= v.score and p[name].kaybet >= v.death then
tfm.exec.chatMessage("<j>"..v.item.." <g>"..lang[name].basarimkazandin.."",name)
table.insert(p[name].kazandk,"<a href='event:inf2"..v.item.."'>"..v.item.."</a>")
v.alindi = true
end
end
eventRankUpdate(name)
if p[name].onlack>=1 then
eventProfil(name)
end
if p[name].using.item=="Pumpkin" then
p[name].ob="89"
end
if p[name].using.item=="LightBall" then
p[name].ob="97"
end
if p[name].using.item=="Beach" then
p[name].ob="6"
end
if p[name].using.item=="Pufferfish" then
p[name].ob="65"
end
if p[name].using.item=="" then
p[name].ob="0"
end
end
if ayar.elbekle>=0.1 then
ayar.elbekle=ayar.elbekle-0.5
end
for i,object in ipairs(objects) do
if os.time() > object.timeStamp + ayar.toptime then
tfm.exec.removeObject (object.id)
p[object.name].a = p[object.name].a - 1
table.remove (objects, i)
end
end
for name in pairs(p) do
if p[name].hak<=0 then
p[name].topkoy=p[name].topkoy-500
end
if p[name].topkoy<=0 then
p[name].hak=1
p[name].topkoy=ayar.toptime
end
end
ayar.timer=ayar.timer+0.5 
if ayar.timer==10 
then 
eventSil() 
end 
if ayar.timer==20 then 
eventGetir() 
ayar.timer=0 
end 
if r<=0 and mice>=ayar.lazimkisi then 
tfm.exec.newGame(maps[math.random(#maps)])
end 
if mice>=ayar.lazimkisi and lobis==0 then
lobis=1
end
if mice>=ayar.lazimkisi and tfm.get.room.currentMap==lobi then
tfm.exec.newGame(maps[math.random(#maps)])
end
if mice <= ayar.lazimkisi and lobis==0 then
tfm.exec.newGame(lobi)
end
if tfm.get.room.currentMap==lobi then
lobis=1
for name in pairs(p) do
ui.addTextArea(147, "<font size='30'>"..lang[name].bekle.." "..string.rep('.', (counter % 3 + 1)).." <br> "..mice.."/"..ayar.lazimkisi.."<font size='15'>", name, 200, 150, 600, nil, 0x393939,0xE368DA,0,0,1,true)
counter = counter + 1
end
else
lobis=0
end
end
textarea=ui.addTextArea
function ui.addTextArea(id,text,targetPlayer,x,y,width,height,backgroundColor,borderColor,backgroundAlpha,emboss)
--if not backgroundColor then backgroundColor=0x324650 end
--if not borderColor then borderColor=0x000001 end
if emboss then
textarea(6969+id,"",targetPlayer,x,y+1,width,height,0x000001,0x000001,backgroundAlpha,true)
textarea(7979+id,"",targetPlayer,x,y-1,width,height,0x6A8FA2,0x6A8FA2,backgroundAlpha,true)
end
textarea(id,text,targetPlayer,x,y,width,height,backgroundColor,borderColor,backgroundAlpha,true)
end
function split(t,s)
    local a={}
    for i,v in string.gmatch(t,string.format("[^%s]+",s or "%s")) do
        table.insert(a,i)
    end
    return a
end
function eventChatCommand(name, cmd)
    local arg = split(cmd, " ")
 
    if arg[1] == "shop" then
        eventShop(name)
    end

	
	 if arg[1] == "rank" then
        --eventRanking(name)
		eventTextAreaCallback(id,name,"leaderboard")
    end
	
if cmd=="help" then
ui.addTextArea(20, "", name, 200, 44, 387, 329, 0x151718, 0x0, 0.8, true)
ui.addTextArea(15, translations[name].help[p[name].helpid], name, 208, 86, 373, 247, 0x151718, 0x0, 0.8, true)
ui.addTextArea(16, "<p align='center'><a href='event:previous'><b>‹</b></a></p>", name, 472, 351, 27, 17, 0x151718, 0x0, 0.8, true)
ui.addTextArea(17, "<p align='center'><a href='event:next'><b>›</b></a></p>", name, 553, 351, 27, 17, 0x151718, 0x0, 0.8, true)
ui.addTextArea(18, "<p align='center'><b><a href='event:klose'>"..lang[name].kapat.."", name, 207, 351, 250, 17, 0x151718, 0x0, 0.8, true)
ui.addTextArea(19, "<p align='center'>"..p[name].helpid.."/"..#translations[name].help.."</p>", name, 513, 351, 27, 17, 0x151718, 0x0, 0.8, true)
ui.addTextArea(21, "<p align='center'><b>"..lang[name].yardim.."", name, 208, 49, 373, 22, 0x151718, 0x0, 0.8, true)
p[name].penc=1
end

	if arg[1]=="lang" then
	if arg[2]=="tr" or arg[2]=="TR" then
	eventTur(name)
	end
	if arg[2]=="en" or arg[2]=="EN" then
	eventEng(name)
	end
	if arg[2]=="pl" or arg[2]=="PL" then
	eventPols(name)
	end
	if not arg[2] then
     tfm.exec.chatMessage("<br><v>Choose Only List<g>:<br><j>TR<br>EN<br>PL",name)
	end
	end
	if arg[1]=="vote" then
	if tfm.get.room.playerList[arg[2]] and tfm.get.room.playerList[arg[2]].isDead==false and tfm.get.room.playerList[name].isDead==true and p[name].oyverdi<=0 then
	tfm.exec.chatMessage("<vp>"..arg[2].." <j>"..lang[name].oyver.."",name)
	p[name].oyverkisi=arg[2]
	p[name].oyverdi=1
	else
		tfm.exec.chatMessage("<r>"..lan[name].fail.."",name)
	end
	end
    if arg[1] == "inv" then
        eventInv(name)
    end
	
if arg[1] == "p" or arg[1] == "profile" or arg[1] == "profil" or arg[1] == "perfil" then
	if p[arg[2]] then
		p[name].onlisim=arg[2]	
		p[name].onlack=1
	end
	if not arg[2] then
		p[name].onlisim=name
		p[name].onlack=1
	end
	end
end


function eventPlayerDied(name)
p[name].kaybet=p[name].kaybet+1
local i=0
local n
for pname,player in pairs(tfm.get.room.playerList) do
if not player.isDead then
i=i+1
n=pname
end
end
if i==1 then
tfm.exec.giveCheese(n)
tfm.exec.playerVictory(n)
tfm.exec.newGame(maps[math.random(#maps)]) 
end
end

function eventPlayerWon(name)
p[name].kazan=p[name].kazan+1
p[name].puan=p[name].puan+10
p[name].money=p[name].money+10
for pname in pairs(tfm.get.room.playerList) do
if p[pname].oyverkisi==name then
tfm.exec.chatMessage("<j>"..p[pname].oyverkisi.." <r>"..lang[name].oytuttu.."",pname)
p[pname].puan=p[pname].puan+5
end
end
end

function eventNewGame() 
ui.removeTextArea(147,nil)
ayar.timer=0 
ayar.elbekle=3
mapxml=tfm.get.room.xmlMapInfo.xml
for name in pairs(tfm.get.room.playerList) do
p[name].hak=1
p[name].toptime=ayar.toptime
	p[name].oyverkisi=""
	p[name].oyverdi=0
p[name].ostimes = os.time();
p[name].ostime = os.time();

tfm.exec.giveMeep(name)

end

end

function eventKeyboard(name,key,down,x,y) 
if key==keys.h then
if p[name].penc==1 then
eventTextAreaCallback(id,name,"klose")
else

eventChatCommand(name,"help")
end
end

if key==keys.l then
if p[name].penc==1 then
eventTextAreaCallback(id,name,"klose")
else
eventChatCommand(name,"rank")
end
end

if key==keys.p then
if p[name].onlack<=0 then
eventChatCommand(name,"p")
else
eventTextAreaCallback(id,name,"pkpt")
end
end


if key==keys.u then
if p[name].penc==2 then
eventTextAreaCallback(id,name,"close")
else
eventInv(name)
end
end

if key==keys.o then
if p[name].penc==2 then
eventTextAreaCallback(id,name,"close")
else
eventShop(name)
end
end

if  ayar.elbekle<=0 then
if key==keys.s or key==keys.down then
if p[name].hak>=1 and tfm.get.room.playerList[name].isDead==false and mice>=ayar.lazimkisi then
p[name].hak=p[name].hak-1
local object = {
timeStamp = os.time(),
id = tfm.exec.addShamanObject(p[name].ob,x,y+20),
name = name
}
table.insert (objects, object)
tfm.exec.displayParticle(12,x,y+20,0,0,0,0,nil)
end
end

if key==keys.space and p[name].ostime < os.time()-10000 and tfm.get.room.playerList[name].isDead==false and mice>=ayar.lazimkisi then 
tfm.exec.explosion(x,y,-500,100,true) 
p[name].ostime = os.time();
end

if key==keys.x and p[name].ostimes < os.time()-10000 and  tfm.get.room.playerList[name].isDead==false and mice>=ayar.lazimkisi then 
tfm.exec.movePlayer(name,0,0,true,0,-50,false) 
tfm.exec.displayParticle(3,x,y+20,0,0,0,0,nil) 
tfm.exec.displayParticle(3,x,y+30,0,0,0,0,nil) 
tfm.exec.displayParticle(3,x,y+40,0,0,0,0,nil) 
tfm.exec.displayParticle(3,x,y+50,0,0,0,0,nil) 
tfm.exec.displayParticle(3,x,y+60,0,0,0,0,nil) 
p[name].ostimes = os.time();
end
end


end

function eventSil() 
for i=0,300,1 do 
tfm.exec.removePhysicObject(i)
end 
end

function eventGetir() 
numb1 = 0 
for pipis in mapxml:gmatch('<S(.-)/>') do 
wrt = {} 
jbd = pipis:match('P="(.-)"') for w in (jbd..","):gmatch("([^,]*),") do 
table.insert(wrt , w)
end 
if wrt[1] == "1" then 
opdyn = true 
elseif wrt[1] == "0" then 
opdyn = false 
end 
myx = pipis:match('X="(.-)"') 
myy = pipis:match('Y="(.-)"') 
myh = pipis:match('H="(.-)"') 
myl = pipis:match('L="(.-)"') 
myt = pipis:match('T="(.-)"') 
myo = pipis:match('o="(.-)"') 
myc = pipis:match('c="(.-)"')  
if mice>=ayar.lazimkisi then  
if myt=="13" or myt=="12" then 
type3 = {type = myt,friction = wrt[3],restitution = wrt[4],dynamic = opdyn,color = "0x"..myo,mass = wrt[2],angle = wrt[5],width = myl,height = myh} 

type4 = {type = myt,friction = wrt[3],restitution = wrt[4],dynamic = opdyn,color = "0x"..myo,mass = wrt[2],angle = wrt[5],width = myl,height = myh,miceCollision=false} 
else 
type3 = {type = myt,friction = wrt[3],restitution = wrt[4],dynamic = opdyn,mass = wrt[2],angle = wrt[5],width = myl,height = myh} 
type4 = {type = myt,friction = wrt[3],restitution = wrt[4],dynamic = opdyn,mass = wrt[2],angle = wrt[5],width = myl,height = myh,miceCollision=false} 
end  
if myc=="2" then
 tfm.exec.addPhysicObject(numb1,myx,myy,type4) 
end 
if myc==nil then 
tfm.exec.addPhysicObject(numb1,myx,myy,type3)
 end 
numb1 = numb1 + 1 
 end 
end 
end

function isTribeHouse()
 return tfm.get.room.name:sub(1,2) == string.char(42, 0x03) 
end

function nameTagFormat(name, size, color1, color2)
	if not size then
		size = 14
	end
	size = tonumber(size)
	if not color1 then
		color1 = "r"
	end
	if not color2 then
		color2 = "j"
	end
	local colorN, colorH
	if color1:find("#") then
		colorN = "<font color='"..color1.."' size='"..size.."'>%s</font>"
	else
		colorN = "<font size='"..size.."'><"..color1..">%s</"..color1.."></font>"
	end
	if color2:find("#") then
		colorH = "<font color='"..color2.."' size='".. math.floor(size*2/3) .."'>%s</font>"
	else
		colorH = "<font size='".. math.floor(size*2/3) .."'><"..color2..">%s</"..color2.."></font>"
	end
	local find, Name, Hash = name:find("#")
	if find then
		Name = name:sub(1, find-1)
		Hash = name:sub(find)
	else
		Name = name
		Hash = ""
	end
	return string.format(colorN, Name)..string.format(colorH, Hash)
end



function eventShop(name)
p[name].penc=2
	str="<B><font size='12'><J>"..lang[name].item.."</J>   <g>|   <VP>"..lang[name].fiyat.."</VP>   <g>|<v>   "..lang[name].paran.." <g>:<vp> "..p[name].money.."<br>"
	for i,loja in pairs(p[name].shop) do
		if loja.buyed then
			str = str.."<br><B><font size='12'><J>"..loja.item.."</J>   |   <VP>"..loja.price.."</VP>   |   <J>"..lang[name].alindi.."</J>"
		else
			str = str.."<br><B><font size='12'><J>"..loja.item.."</J>   |   <VP>"..loja.price.."</VP>   |   <ROSE><a href='event:buy-"..loja.item.."'>"..lang[name].satinal.."</a></ROSE>"
		end
	end
ui.addTextArea(0, "", name, 153, 54, 483, 298, 0x1, 0x1, 0.8, true)
ui.addTextArea(1, "<p align='center'><b><font size='15'>Market", name, 134, 54, 515, 27, 0x1e2124, 0x1, 1, true)
ui.addTextArea(2, "<p align='center'><b><font size='15'>"..str, name, 158, 100, 474, 227, 0x36393b, 0x1, 1, true)
ui.addTextArea(-1, "<p align='center'><b><font size='15'><R><a href='event:close'>"..lang[name].kapat.."", name, 132, 346, 515, 27, 0x1e2124, 0x1, 1, true)

		 
    
end

function eventInv(name)
p[name].penc=2
	str="<B><font size='12'><J>"..lang[name].envsahip.."</J><br>"
	for i,v in pairs(p[name].inventory) do
		if p[name].using.item == v.item then
			str = str.."<br><B><font size='12'><J>"..v.item.."</J>   |   <VP>"..lang[name].kllaniyo.."</VP>"
		else
			str = str.."<br><B><font size='12'><J>"..v.item.."</J>   |   <ROSE><a href='event:usar-"..v.item.."'>"..lang[name].kullan.."</a></ROSE>"
		end
	end

ui.addTextArea(0, "", name, 153, 54, 483, 298, 0x1, 0x1, 0.8, true)
ui.addTextArea(1, "<p align='center'><b><font size='15'>"..lang[name].env.."", name, 134, 54, 515, 27, 0x1e2124, 0x1, 1, true)
ui.addTextArea(2, "<p align='center'><b><font size='15'>"..str, name, 158, 100, 474, 227, 0x36393b, 0x1, 1, true)
ui.addTextArea(-1, "<p align='center'><b><font size='15'><R><a href='event:close'>"..lang[name].kapat.."", name, 132, 346, 515, 27, 0x1e2124, 0x1, 1, true)

end	



function eventRankUpdate(name)
local scc = {}
    for name, player in pairs(tfm.get.room.playerList) do
        scc[#scc+1] = {n=name,s=p[name].puan}
		data[name][1]=p[name].puan
   end
   
    table.sort(scc,function(a,b) return a.s>b.s end)
 
    str = ''
    for k,v in pairs(scc) do
			p[v.n].rank=k	
    end
end



function Leaderboard()
players={}
for n in pairs(data) do table.insert(players,n) end
nMax={}
while (#players ~= 0) do
    ms=-1
    mp=nil
    idre=1
    for i,n in pairs (players) do
        if ms < data[n][1] then
              ms = data[n][1]
              mp = n
              idre = i
        end
    end
    table.insert(nMax,{mp,ms})
    table.remove(players,idre)
end
return nMax
end

function open_LB(name,page)
    local pageB = page * 17
    local pageA = pageB - 16
    local data_lb = Leaderboard()
    if #data_lb < pageB then
        pageB = #data_lb
    end
	
    local names=""
    local Wins=""
    local ids=""
    local Country=""
    for a=pageA,pageB do
      names=names.."<a href='event:sec22"..tostring(data_lb[a][1]).."'>"..nameTagFormat(tostring(data_lb[a][1]), 10, "vp", "g").."</a>\n"
      Wins=Wins..tostring(data_lb[a][2]).."\n"
      ids=ids.."#"..a.."\n"
      Country = Country..data[data_lb[a][1]][4]:upper().."<br>"
    end

	
	
	 p[name].penc=1

ui.addTextArea(15, "", name, 202, 52, 412, 325, 0xb0b0b, 0x0, 0.8, true)

if math.ceil(#data_lb/10) == 0 then
      npage = 1
    else
      npage = math.ceil(#data_lb/10)
    end
ui.addTextArea(16, "<p align='center'><b>"..(page == 1 and "«" or "<a href='event:prv_lb'><j>«</j></a>").."</b></a></p>", name, 487, 351, 27, 17, 0x151718, 0x0, 0.8, true)
ui.addTextArea(17, "<p align='center'><b>"..(npage == page and "»" or "<a href='event:next_lb'><j>»</j></a>").."</b></a></p>", name, 578, 351, 27, 17, 0x151718, 0x0, 0.8, true)
ui.addTextArea(19, "<p align='center'><font size='9'>"..page.."/"..npage.."</p>", name, 525, 351, 42, 17, 0x151718, 0x0, 0.8, true)


ui.addTextArea(18, "<p align='center'><b><a href='event:klose'>"..lang[name].kapat.."", name, 206, 351, 269, 17, 0x151718, 0x0, 0.8, true)
ui.addTextArea(21, "<B><font size='12'><p align='center'><CS><font size='10'>"..ids, name, 213, 116, 40, 211, 0x151718, 0x0, 0.8, true)
ui.addTextArea(22, "<B><font size='12'><p align='center'><v><font size='10'>"..names, name, 264, 116, 185, 211, 0x151718, 0x0, 0.8, true)
ui.addTextArea(23, "<B><font size='12'><p align='center'><j><font size='10'>"..Wins, name, 469, 116, 55, 211, 0x151718, 0x0, 0.8, true)
ui.addTextArea(24, "<B><font size='12'><p align='center'><r><font size='10'>"..Country, name, 545, 117, 42, 211, 0x151718, 0x0, 0.8, true)
ui.addTextArea(25, "", name, 209, 62, 396, 29, 0x151718, 0x0, 0.8, true)
ui.addTextArea(26, "#No", name, 214, 65, 33, 22, 0x151718, 0x0, 0.8, true)
ui.addTextArea(27, "<p align='center'>"..lang[name].isim.."", name, 269, 65, 177, 22, 0x151718, 0x0, 0.8, true)
ui.addTextArea(28, "<p align='center'>"..lang[name].skor.."", name, 467, 65, 47, 22, 0x151718, 0x0, 0.8, true)
ui.addTextArea(29, "<p align='center'>"..lang[name].comm.."", name, 527, 65, 73, 22, 0x151718, 0x0, 0.8, true)
end



function eventPlayerLeft(name)
mice=mice-1
end


function eventProfil(name)

str=""
for i,v in pairs(p[p[name].onlisim].inventory) do
str = str.."<br><B><font size='12'><J>"..v.item.."</J>"
end

ui.addTextArea(12, "", name, 244, 107, 300, 183, 0x100, 0x0, 0.8, true)
ui.addTextArea(13, "", name, 60, 63, 668, 31, 0x100, 0x0, 0.8, true)
ui.addTextArea(14, "<p align='center'><b>"..nameTagFormat(""..p[name].onlisim.."", 13, "vp", "g"), name, 249, 67, 291, 23, 0x2f2f2e, 0x0, 0.8, true)
ui.addTextArea(3, "   <br><br>   <vp>"..lang[name].proflid.." : <j>#<CS>"..p[p[name].onlisim].rank.."<n><br>   <vp>"..lang[name].profilpuan.." :<j> "..p[p[name].onlisim].puan.."<br>   <vp>"..lang[name].profilkz.." : <j>"..p[p[name].onlisim].kazan.."<br>   <vp>"..lang[name].profilky.." : <j>"..p[p[name].onlisim].kaybet, name, 248, 113, 291, 170, 0x2f2f2e, 0x0, 0.8, true)
ui.addTextArea(4, "", name, 243, 302, 300, 31, 0x100, 0x0, 0.8, true)
ui.addTextArea(5, "<p align='center'><b><font size='14'><a href='event:pkpt'>"..lang[name].kapat.."", name, 248, 307, 291, 23, 0x2f2f2e, 0x0, 0.8, true)
ui.addTextArea(6, "", name, 557, 108, 168, 227, 0x100, 0x0, 0.8, true)
ui.addTextArea(7, ""..str, name, 564, 115, 155, 210, 0x2f2f2e, 0x0, 0.8, true)
ui.addTextArea(8, "<vp><p align='center'><font size='13'><b>"..lang[name].profilsahip.."", name, 559, 67, 163, 23, 0x2f2f2e, 0x0, 0.8, true)
ui.addTextArea(9, "<vp><p align='center'><font size='13'><b>"..lang[name].kazanimlar.."", name, 68, 67, 163, 24, 0x2f2f2e, 0x0, 0.8, true)
ui.addTextArea(10, "", name, 61, 109, 168, 226, 0x100, 0x0, 0.8, true)
for i,v in pairs(p[p[name].onlisim].kazandk) do
s=i
end
ui.addTextArea(11, "<vp>"..lang[name].toplam.."</vp> <g>:</g> <CS>"..s.."</CS><br>"..kazanimSayfa(p[name].kazanimsayfa).."<br>"..(p[name].kazanimsayfa <= 1 and "«" or "<a href='event:backkazanim'><j>«</j></a>").." "..p[name].kazanimsayfa.."/"..p[name].kazanimmax.." "..(p[name].kazanimsayfa == p[name].kazanimmax and "»" or "<a href='event:nextkazanim'><j>»</j></a>").."", name, 68, 115, 155, 213, 0x2f2f2e, 0x0, 0.8, true)
end


function eventTextAreaCallback(id,name,cb)
if cb=="backkazanim" and p[name].kazanimsayfa>=1 then
p[name].kazanimsayfa=p[name].kazanimsayfa-1
end

if cb=="nextkazanim" then
p[name].kazanimsayfa=p[name].kazanimsayfa+1
end

  if cb == "leaderboard" then
    open_LB(name,1)
  elseif cb == "next_lb" then
    lb_page[name] = lb_page[name] + 1
    open_LB(name,lb_page[name])
  elseif cb == "prv_lb" then
    lb_page[name] = lb_page[name] - 1
    open_LB(name,lb_page[name])
  end


if cb:sub(0,5)=="sec22" then
p[name].onlack=1
p[name].onlisim=cb:sub(6)
end


if cb=="pkpt" then
p[name].onlack=0
p[name].kazanimsayfa=1
for id=3,14 do
ui.removeTextArea(id,name)
ui.removeTextArea(6969+id,name)
ui.removeTextArea(7979+id,name)
end
end
	if cb == "close" then
   		 for id=-1,2 do
		 p[name].penc=0
      			  ui.removeTextArea(id,name)
     		 	  ui.removeTextArea(6969+id,name)
      			  ui.removeTextArea(7979+id,name)
    		end
	end

	for i,v in pairs(p[name].shop) do
		if cb == "buy-"..v.item then
			if p[name].money >= v.price then
				tfm.exec.chatMessage("<B><R>"..lang[name].satinaldiniz.." "..v.item.." "..lang[name].fiyat.." "..v.price.." Coin.</R></B>",name)
				p[name].money = p[name].money-v.price
				table.insert(p[name].inventory,{item=v.item})
				v.buyed = true
			else
				faltando = p[name].money-v.price	
				tfm.exec.chatMessage("<B><R>"..lang[name].paranyetersiz.." "..faltando.." Coin "..v.item..".</R></B>",name)
			end
			eventShop(name)
		end
	end
	
	
for i,v in pairs(p[name].kazans) do
if cb == "inf2"..v.item then
ui.addTextArea(30, "", name, 221, 132, 361, 169, 0x1, 0x1, 0.8, true)
ui.addTextArea(31, ""..v.info[p[name].lang].."", name, 229, 139, 346, 153, 0x313335, 0x1, 0.8, true)
ui.addTextArea(32, "", name, 220, 89, 361, 28, 0x1, 0x1, 0.8, true)
ui.addTextArea(33, "<p align='center'><b>"..lang[name].bilgi.."", name, 226, 93, 284, 20, 0x313335, 0x1, 0.8, true)
ui.addTextArea(34, "<p align='center'><b><a href='event:infkpt'>"..lang[name].kapat.."", name, 522, 92, 56, 20, 0x313335, 0x1, 0.8, true)
end
end

if cb=="infkpt" then
for id=30,34 do
ui.removeTextArea(id,name)
ui.removeTextArea(6969+id,name)
ui.removeTextArea(7979+id,name)
end
end

if cb=="help" then
eventChatCommand(name,cb)	

elseif cb=="klose" then
p[name].penc=0
lb_page[name] = 1
p[name].helpid=1
for id=15,29 do
ui.removeTextArea(id,name)
ui.removeTextArea(6969+id,name)
ui.removeTextArea(7979+id,name)
end
elseif cb=="next" and p[name].helpid<#translations[name].help then
p[name].helpid=(p[name].helpid)+1
ui.updateTextArea(15,translations[name].help[p[name].helpid],name)
ui.updateTextArea(19,"<p align='center'>"..p[name].helpid.."/"..#translations[name].help.."</p>",name)
elseif cb=="previous" and p[name].helpid>1 then
p[name].helpid=p[name].helpid-1
ui.updateTextArea(15,translations[name].help[p[name].helpid],name)
ui.updateTextArea(19,"<p align='center'>"..p[name].helpid.."/"..#translations[name].help.."</p>",name)
end
	
	for i,v in pairs(p[name].inventory) do
		if cb=="usar-"..v.item then
			p[name].using = {item=v.item}
			eventInv(name)
			tfm.exec.chatMessage("<B><J>"..lang[name].artik.." "..v.item.." "..lang[name].kullandin.." .</J></B>",name)
			
		end
	end
end

