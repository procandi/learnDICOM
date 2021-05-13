# encoding: UTF-8


require 'rubygems'
require "date"
require 'pg'


class PACSHandle 
    def initialize(host,port,name,id,pw)
        #設定寫入的db
        $conn = PGconn.open(host,port,'','',name,id,pw)

        #初始化搜尋用的data set
        $query_elements=Hash.new
        #初始化回傳用的data set
        $send_elements=Hash.new
    end

    #清除要搜尋的條件
    def cls_query_elements()
        $query_elements=Hash.new
    end
    #清除要回傳的條件
    def cls_send_elements()
        $send_elements=Hash.new
    end

    #存入要搜尋的條件
    def set_query_elements(tag, value)
        $query_elements[tag]=value

        p 'set query elements'
        p $query_elements

        #目前資料庫支援的tag
        #$query_elements['0008,0050']=value
        #$query_elements['0010,0010']=value
        #$query_elements['0010,0020']=value
        #$query_elements['0010,0030']=value
        #$query_elements['0010,0040']=value
        #$query_elements['0008,1030']=value
        #$query_elements['0008,0020']=value
        #$query_elements['0008,0030']=value
        #$query_elements['0008,0060']=value
    end

    #存入要回傳的條件
    def set_send_elements(tag)
        $send_elements[tag]='true'

        p 'set send elements'
        p $query_elements

        #目前資料庫支援的tag
        #$send_elements['0008,0050']='true'
        #$send_elements['0010,0010']='true'
        #$send_elements['0010,0020']='true'
        #$send_elements['0010,0030']='true'
        #$send_elements['0010,0040']='true'
        #$send_elements['0008,1030']='true'
        #$send_elements['0008,0020']='true'
        #$send_elements['0008,0030']='true'
        #$send_elements['0008,0060']='true'
    end


    #拉取worklist，使用預存的參數
    def pull_worklists()
        rule="1=1"

        p 'pull_worklists'
        p $query_elements
        p $send_elements

        #單號
        rule+=" and accno='#{$query_elements['0008,0050']}'" if $query_elements['0008,0050']!=nil and $query_elements['0008,0050']!=''

        #病歷號
        rule+=" and pid='#{$query_elements['0010,0020']}'" if $query_elements['0010,0020']!=nil and $query_elements['0010,0020']!=''

        #姓名
        rule+=" and pname='#{$query_elements['0010,0010']}'" if $query_elements['0010,0010']!=nil and $query_elements['0010,0010']!=''

        #掛號起訖日期
        rule+=" and edate>='#{$query_elements['0008,0020']}'" if $query_elements['0008,0020']!=nil and $query_elements['0008,0020']!=''
        rule+=" and edate<='#{$query_elements['0008,0020']}'" if $query_elements['0008,0020']!=nil and $query_elements['0008,0020']!=''

        #儀器種類
        rule+=" and modality='#{$query_elements['0008,0060']}'" if $query_elements['0008,0060']!=nil and $query_elements['0008,0060']!=''

        #身份證字號
        rule+=" and cid='#{$query_elements['0008,1030']}'" if $query_elements['0008,1030']!=nil and $query_elements['0008,1030']!=''

        sql="select * from worklists where #{rule} limit 100;"
        p sql
        res=$conn.exec(sql)
        if res.count>0
            data_elements=[]

            res.each_with_index(){|rec,index|
                accno=rec['accno']
                pid=rec['pid']
                pname=rec['pname']
                birthday=rec['birthday']
                sex=rec['sex']
                cid=rec['cid']
                edate=rec['edate']
                etime=rec['etime']
                modality=rec['modality']


                #merge data element
                data_element=[]
                data_element.push(['0008,0050',accno]) if $send_elements['0008,0050']=='true'
                data_element.push(['0010,0010',pname]) if $send_elements['0010,0010']=='true'
                data_element.push(['0010,0020',pid]) if $send_elements['0010,0020']=='true'
                data_element.push(['0010,0030',birthday]) if $send_elements['0010,0030']=='true'
                data_element.push(['0010,0040',sex]) if $send_elements['0010,0040']=='true'
                data_element.push(['0008,1030',cid]) if $send_elements['0008,1030']=='true'    #study desc to cid
                data_element.push(['0008,0020',edate]) if $send_elements['0008,0020']=='true'
                data_element.push(['0008,0030',etime]) if $send_elements['0008,0030']=='true'
                data_element.push(['0008,0060',modality]) if $send_elements['0008,0060']=='true'


                #push to elements
                data_elements.push(data_element)
            }

            data_elements
        else
            [[]]
        end
    end


    #拉取worklist，一次丟入所有參數
    def pull_worklists_direct(qry_accno, qry_pid, qry_pname, qry_edate, qry_modality, qry_cid, send_elements)
        rule="1=1"

        #單號
        rule+=" and accno='#{qry_accno}'" if qry_accno!=nil and qry_accno!=''

        #病歷號
        rule+=" and pid='#{qry_pid}'" if qry_pid!=nil and qry_pid!=''

        #姓名
        rule+=" and pname='#{qry_pname}'" if qry_pname!=nil and qry_pname!=''

        #掛號起訖日期
        rule+=" and edate>='#{qry_edate}'" if qry_edate!=nil and qry_edate!=''
        rule+=" and edate<='#{qry_edate}'" if qry_edate!=nil and qry_edate!=''

        #儀器種類
        rule+=" and modality='#{qry_modality}'" if qry_modality!=nil and qry_modality!=''

        #身份證字號
        rule+=" and cid='#{qry_cid}'" if qry_cid!=nil and qry_cid!=''


        res=$conn.exec("select * from worklists where #{rule};")
        if res.count>0
            data_elements=[]

            res.each_with_index(){|rec,index|
                accno=rec['accno']
                pid=rec['pid']
                pname=rec['pname']
                birthday=rec['birthday']
                sex=rec['sex']
                cid=rec['cid']
                edate=rec['edate']
                etime=rec['etime']
                modality=rec['modality']


                #merge data element
                data_element=[]
                data_element.push(['0008,0050',accno]) if send_elements['0008,0050']=='true'
                data_element.push(['0010,0010',pname]) if send_elements['0010,0010']=='true'
                data_element.push(['0010,0020',pid]) if send_elements['0010,0020']=='true'
                data_element.push(['0010,0030',birthday]) if send_elements['0010,0030']=='true'
                data_element.push(['0010,0040',sex]) if send_elements['0010,0040']=='true'
                data_element.push(['0008,1030',cid]) if send_elements['0008,1030']=='true'    #study desc to cid
                data_element.push(['0008,0020',edate]) if send_elements['0008,0020']=='true'
                data_element.push(['0008,0030',etime]) if send_elements['0008,0030']=='true'
                data_element.push(['0008,0060',modality]) if send_elements['0008,0060']=='true'


                #push to elements
                data_elements.push(data_element)
            }

            data_elements
        else
            [[]]
        end
    end
end