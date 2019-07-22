import 'package:http/http.dart' as http;
class HttpController{

  /**
   * 第一个catch子句处理异常。如果catch子句没有指定类型，该子句可以处理任何类型的抛出对象:
   */
  static void get(String url,Function callBack,{Map<String,String> params,Function errorCallBack}) async{
    if(params!=null&&params.isNotEmpty){
      StringBuffer sb = new StringBuffer("?");
      params.forEach((key,value){
        sb.write("$key"+"="+"$value"+"&");
      });
      String paramStr = sb.toString();
      paramStr = paramStr.substring(0,paramStr.length -1);
      url +=paramStr;
    }
    try{
      http.Response res = await http.get(url);
      if(callBack!=null){
        callBack(res.body);
      }
    }on Exception catch(e){
      if(errorCallBack!=null){
        errorCallBack(e);
      }
    }catch(exception){
      if(errorCallBack!=null){
        errorCallBack(exception);
      }
    }
  }

  /**
   * {Map<String,String> params,Function errorCallback}表示为选择型参数
   */
  static void post(String url,Function callback,{Map<String,String> params,Function errorCallback}) async{
    try{
      http.Response res = await http.post(url,body: params);
      if(callback!=null){
        callback(res.body);
      }
    }catch(e){
      if(errorCallback!=null){
        errorCallback(e);
      }
    }
  }
}