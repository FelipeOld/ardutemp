# Ardutemp
Scripts de coleta e envio de dados de temperatura do arduino para zabbix server  Baseado em stack de arduino uno e shield ethernet, que fazem a função de conversor AD (Arduino), lendo valores de um LM35 e publicando em uma página HTML criada pelo código de divulgada pelo shield ethernet, mostrando apenas o dado convertido em graus C bruto, com duas casas após a vírgula.  

O script coleta_e_envia.sh utiliza a função zabbix-sender para enviar um dado float bruto para o servidor zabbix, indicando com as opções:</br>
"-z" o endereço IP do servidor Zabbix </br>
"-s" o nome do host cadastrado dentro do Zabbix</br>
"-k" o nome do item que receberá o valor informado</br>
"-o" passa o conteúdo da variável $tempdatafloat para que seja registrado no database do zabbix, sob o item e host especificados anteriormente.</br>

Ao cadastrar o item no zabbix, é importante criar o mesmo com o "Type" em "Zabbix Trapper" e o "Type of information" como "Numeric (float)".
