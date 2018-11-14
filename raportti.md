# Harjoitus 3

Tehtävät löytyvät osoitteesta: http://terokarvinen.com/2018/aikataulu-%e2%80%93-palvelinten-h$

Tietokoneena toimii Asus X556UJ, jossa sisällä Intel i7-6500U, NVIDIA GeForce 920M ja 8gb ram$

#### c)

Asensin salt minionin ja masterin, sekä gitin. Loin Githubiin repositoryn nimellä salt ja kloonasin sen tietokoneelle **/srv** kansioon. **/srv/salt** kansioon loin **apache** kansion ja sinne **init.sls** tiedoston, joka asentaa apachen minioneille:

 	apache2pkg:
  	  pkg.installed:
    	    - name: apache2

Suoritin **sudo salt '*' state.highstate**, vastauksena sain, että minioni oli onnistuneesti asentanut apachen. Seuraavaksi poistin **/srv/salt** kansion komennolla **sudo rm -r salt/** ja kloonasin sen takaisin gitillä.


#### d)

Komennolla **git log** sian vastaukseksi:

 	commit 110fef03119b3bdeb36de5b08f25bdceffa9fd79 (HEAD -> master, origin/master, origin/HEAD)
 	Author: Martti Tuominen <marttistuominen@gmail.com>
 	Date:   Wed Nov 14 11:31:45 2018 +0000
 	
 	    Add text to raport
 	
 	commit d93d199dd3557b00bb05799736dc9b5a801c3c4c
 	Author: Martti Tuominen <marttistuominen@gmail.com>
 	Date:   Wed Nov 14 11:13:20 2018 +0000
 	
 	    Correct text in raport
 	
 	commit 969f2c8ac429fd630167a03b328cd9ccdd29daaf
 	Author: Martti Tuominen <marttistuominen@gmail.com>
 	Date:   Wed Nov 14 11:11:05 2018 +0000
 	
 	    Add text to raport
  	
  	commit a0f19b9599656e9e25b2376f0dad2d90bf73643c
 	Author: Martti Tuominen <marttistuominen@gmail.com>
 	Date:   Wed Nov 14 11:08:06 2018 +0000
 	
 	    Add text to raport, add apache init.sls and top.sls
 	
 	commit a6f6241774e361e06c3b4af67142900fbc29974c
 	Author: Martti Tuominen <marttistuominen@gmail.com>
 	Date:   Wed Nov 14 10:57:27 2018 +0000
 	
 	    Added raport and text
 	
 	commit 43119764e8e038118c6a3a4de352d86c314d4ea7
 	Author: marttituominen <43230095+marttituominen@users.noreply.github.com>
 	Date:   Wed Nov 14 10:55:03 2018 +0000
 	
 	    Initial commit

Kronologisesti logi alkaa alhaalta ja jatkuu ylöspäin. Siinä näkyy commitin päivämäärä, id ja tekijä, selitys mitä on tehty, sekä tekijän yhteystiedot. Komento **git diff** ei tulostanut mitään, varmaan koska olin jo kerennyt committaamaan. 
