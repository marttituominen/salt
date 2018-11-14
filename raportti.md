# Harjoitus 3

Tehtävät löytyvät osoitteesta: http://terokarvinen.com/2018/aikataulu-%e2%80%93-palvelinten-h$

Tietokoneena toimii Asus X556UJ, jossa sisällä Intel i7-6500U, NVIDIA GeForce 920M ja 8gb ram$

#### c)

Asensin salt minionin ja masterin, sekä gitin. Loin Githubiin repositoryn nimellä salt ja kloonasin sen tietokoneelle **/srv** kansioon. **/srv/salt** kansioon loin **apache** kansion ja sinne **init.sls* tiedoston, joka asentaa apachen minioneille:	apache2pkg:
  pkg.installed:
    - name: apache2














