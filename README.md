# Ardutemp
Scripts de coleta e envio de dados de temperatura do arduino para zabbix server  Baseado em stack de arduino uno e shield ethernet, que fazem a função de conversor AD (Arduino), lendo valores de um LM35 e publicando em uma página HTML criada pelo código de divulgada pelo shield ethernet, mostrando apenas o dado convertido em graus C bruto, com duas casas após a vírgula.  

O script coleta_e_envia.sh utiliza a função zabbix-sender para enviar um dado float bruto para o servidor zabbix, indicando com as opções:
"-z" o endereço IP do servidor Zabbix
"-s" o nome do host cadastrado dentro do Zabbix
"-k" o nome do item que receberá o valor informado
"-o" passa o conteúdo da variável $tempdatafloat para que seja registrado no database do zabbix, sob o item e host especificados anteriormente.

Ao cadastrar o item no zabbix, é importante criar o mesmo com o "Type" em "Zabbix Trapper" e o "Type of information" como "Numeric (float)".
