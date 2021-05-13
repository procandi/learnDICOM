# encoding: UTF-8


require 'rubygems'
require_relative 'PACSHandle'


data_elements = [
["0010,0010", "test123"], # SOP Instance UID
["0010,0020", "mfr0813"]
]

p data_elements


a=Array.new
a=[]
a.push(["0010,0010", "test123"])
a.push(["0010,0020", "mfr0813"])
p a



send_elements=Hash.new
send_elements['0008,0050']='true'
send_elements['0010,0010']='true'
send_elements['0010,0020']='true'
send_elements['0010,0030']='true'
send_elements['0010,0040']='true'
send_elements['0008,1030']='true'
send_elements['0008,0020']='true'
send_elements['0008,0030']='true'
send_elements['0008,0060']='true'
p send_elements


require_relative 'PACSHandle'


pacs=PACSHandle.new('localhost','5432','mfrpacs','postgres','miffyer168')

#qry_accno, qry_pid, qry_pname, qry_edate, qry_modality, qry_cid, send_elements
#worklists=pacs.pull_worklists('','0000043','','','','',send_elements)
worklists=pacs.pull_worklists('','','','20210504','','',send_elements)

p worklists