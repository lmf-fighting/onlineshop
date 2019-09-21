var addressInit = function(_cmbProvince, _cmbCity, _cmbArea, _cmbStreet, defaultProvince, defaultCity, defaultArea,defaultStreet)  
{  
    var cmbProvince = document.getElementById(_cmbProvince);  
    var cmbCity = document.getElementById(_cmbCity);  
    var cmbArea = document.getElementById(_cmbArea); 
	var cmbStreet = document.getElementById(_cmbStreet);
      
    function cmbSelect(cmb, str)  
    {  
        for(var i=0; i<cmb.options.length; i++)  
        {  
            if(cmb.options[i].value == str)  
            {  
                cmb.selectedIndex = i;  
                return;  
            }  
        }  
    }  
    function cmbAddOption(cmb, str, obj)  
    {  
        var option = document.createElement("OPTION");  
        cmb.options.add(option);  
        option.innerText = str;  
        option.value = str;  
        option.obj = obj;  
    }  
      
    function changeCity()  
    {  
        cmbArea.options.length = 0;  
        if(cmbCity.selectedIndex == -1)return;  
        var item = cmbCity.options[cmbCity.selectedIndex].obj;  
        for(var i=0; i<item.areaList.length; i++)  
        {  
            cmbAddOption(cmbArea, item.areaList[i], null);  
        }  
        cmbSelect(cmbArea, defaultArea);  
    }  
    function changeProvince()  
    {  
        cmbCity.options.length = 0;  
        cmbCity.onchange = null;  
        if(cmbProvince.selectedIndex == -1)return;  
        var item = cmbProvince.options[cmbProvince.selectedIndex].obj;  
        for(var i=0; i<item.cityList.length; i++)  
        {  
            cmbAddOption(cmbCity, item.cityList[i].name, item.cityList[i]);  
        }  
        cmbSelect(cmbCity, defaultCity);  
        changeCity();  
        cmbCity.onchange = changeCity;  
    }  
      
    for(var i=0; i<provinceList.length; i++)  
    {  
        cmbAddOption(cmbProvince, provinceList[i].name, provinceList[i]);  
    }  
    cmbSelect(cmbProvince, defaultProvince);  
    changeProvince();  
    cmbProvince.onchange = changeProvince;  
}  
  
var provinceList = [
{name:"请选择省份", cityList:[           
{name:"请选择城市", areaList:['请选择区县']}              
]},     
{name:'北京', cityList:[           
{name:'市辖区', areaList:['东城区','西城区','崇文区','宣武区','朝阳区','丰台区','石景山区','海淀区','门头沟区','房山区','通州区','顺义区','昌平区','大兴区','怀柔区','平谷区']},          
{name:'县', areaList:['密云县','延庆县']}  
]},  
{name:'上海', cityList:[           
{name:'市辖区', areaList:['黄浦区','卢湾区','徐汇区','长宁区','静安区','普陀区','闸北区','虹口区','杨浦区','闵行区','宝山区','嘉定区','浦东新区','金山区','松江区','青浦区','南汇区','奉贤区']},           
{name:'县', areaList:['崇明县']}  
]},  
{name:'天津', cityList:[           
{name:'市辖区', areaList:['和平区','河东区','河西区','南开区','河北区','红桥区','塘沽区','汉沽区','大港区','东丽区','西青区','津南区','北辰区','武清区','宝坻区']},          
{name:'县', areaList:['宁河县','静海县','蓟　县']}  
]},  
{name:'重庆', cityList:[           
{name:'市辖区', areaList:['万州区','涪陵区','渝中区','大渡口区','江北区','沙坪坝区','九龙坡区','南岸区','北碚区','万盛区','双桥区','渝北区','巴南区','黔江区','长寿区']},           
{name:'县', areaList:['綦江县','潼南县','铜梁县','大足县','荣昌县','璧山县','梁平县','城口县','丰都县','垫江县','武隆县','忠　县','开　县','云阳县','奉节县','巫山县','巫溪县','石柱土家族自治县','秀山土家族苗族自治县','酉阳土家族苗族自治县','彭水苗族土家族自治县']},          
{name:'市', areaList:['江津市','合川市','永川市','南川市']}  
]},  

{name:'湖南', cityList:[           
{name:'长沙市', areaList:['市辖区','芙蓉区','天心区','岳麓区','开福区','雨花区','长沙县','望城县','宁乡县','浏阳市']},            
{name:'株洲市', areaList:['市辖区','荷塘区','芦淞区','石峰区','天元区','株洲县','攸　县','茶陵县','炎陵县','醴陵市']},            
{name:'湘潭市', areaList:['市辖区','雨湖区','岳塘区','湘潭县','湘乡市','韶山市']},            
{name:'衡阳市', areaList:['市辖区','珠晖区','雁峰区','石鼓区','蒸湘区','南岳区','衡阳县','衡南县','衡山县','衡东县','祁东县','耒阳市','常宁市']},          
{name:'邵阳市', areaList:['市辖区','双清区','大祥区','北塔区','邵东县','新邵县','邵阳县','隆回县','洞口县','绥宁县','新宁县','城步苗族自治县','武冈市']},          
{name:'岳阳市', areaList:['市辖区','岳阳楼区','云溪区','君山区','岳阳县','华容县','湘阴县','平江县','汨罗市','临湘市']},           
{name:'常德市', areaList:['市辖区','武陵区','鼎城区','安乡县','汉寿县','澧　县','临澧县','桃源县','石门县','津市市']},            
{name:'张家界市', areaList:['市辖区','永定区','武陵源区','慈利县','桑植县']},            
{name:'益阳市', areaList:['市辖区','资阳区','赫山区','南　县','桃江县','安化县','沅江市']},          
{name:'郴州市', areaList:['市辖区','北湖区','苏仙区','桂阳县','宜章县','永兴县','嘉禾县','临武县','汝城县','桂东县','安仁县','资兴市']},            
{name:'永州市', areaList:['市辖区','芝山区','冷水滩区','祁阳县','东安县','双牌县','道　县','江永县','宁远县','蓝山县','新田县','江华瑶族自治县']},           
{name:'怀化市', areaList:['市辖区','鹤城区','中方县','沅陵县','辰溪县','溆浦县','会同县','麻阳苗族自治县','新晃侗族自治县','芷江侗族自治县','靖州苗族侗族自治县','通道侗族自治县','洪江市']},            
{name:'娄底市', areaList:['市辖区','娄星区','双峰县','新化县','冷水江市','涟源市']},           
{name:'湘西土家族苗族自治州', areaList:['吉首市','泸溪县','凤凰县','花垣县','保靖县','古丈县','永顺县','龙山县']}  
]},  
{name:'广东', cityList:[           
{name:'广州市', areaList:['市辖区','东山区','荔湾区','越秀区','海珠区','天河区','芳村区','白云区','黄埔区','番禺区','花都区','增城市','从化市']},          
{name:'韶关市', areaList:['市辖区','武江区','浈江区','曲江区','始兴县','仁化县','翁源县','乳源瑶族自治县','新丰县','乐昌市','南雄市']},          
{name:'深圳市', areaList:['市辖区','罗湖区','福田区','南山区','宝安区','龙岗区','盐田区']},          
{name:'珠海市', areaList:['市辖区','香洲区','斗门区','金湾区']},            
{name:'汕头市', areaList:['市辖区','龙湖区','金平区','濠江区','潮阳区','潮南区','澄海区','南澳县']},            
{name:'佛山市', areaList:['市辖区','禅城区','南海区','顺德区','三水区','高明区']},            
{name:'江门市', areaList:['市辖区','蓬江区','江海区','新会区','台山市','开平市','鹤山市','恩平市']},            
{name:'湛江市', areaList:['市辖区','赤坎区','霞山区','坡头区','麻章区','遂溪县','徐闻县','廉江市','雷州市','吴川市']},            
{name:'茂名市', areaList:['市辖区','茂南区','茂港区','电白县','高州市','化州市','信宜市']},          
{name:'肇庆市', areaList:['市辖区','端州区','鼎湖区','广宁县','怀集县','封开县','德庆县','高要市','四会市']},          
{name:'惠州市', areaList:['市辖区','惠城区','惠阳区','博罗县','惠东县','龙门县']},            
{name:'梅州市', areaList:['市辖区','梅江区','梅　县','大埔县','丰顺县','五华县','平远县','蕉岭县','兴宁市']},          
{name:'汕尾市', areaList:['市辖区','城　区','海丰县','陆河县','陆丰市']},          
{name:'河源市', areaList:['市辖区','源城区','紫金县','龙川县','连平县','和平县','东源县']},          
{name:'阳江市', areaList:['市辖区','江城区','阳西县','阳东县','阳春市']},          
{name:'清远市', areaList:['市辖区','清城区','佛冈县','阳山县','连山壮族瑶族自治县','连南瑶族自治县','清新县','英德市','连州市']},            
{name:'东莞市', areaList:['东莞市']},          
{name:'中山市', areaList:['中山市']},          
{name:'潮州市', areaList:['市辖区','湘桥区','潮安县','饶平县']},            
{name:'揭阳市', areaList:['市辖区','榕城区','揭东县','揭西县','惠来县','普宁市']},            
{name:'云浮市', areaList:['市辖区','云城区','新兴县','郁南县','云安县','罗定市']}  
]},  

{name:'台湾', cityList:[  
]},  
{name:'香港', cityList:[  
]},  
{name:'澳门', cityList:[  
]}  
]; 

