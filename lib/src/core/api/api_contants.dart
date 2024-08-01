

enum ResponseStatus{
  succes, fsilture, networkError,
  
  
}

final class ApiConstants{
  
  // baseUrl
  static const BASEURL = "https://api.api-ninjas.com/v1/";
  //version

//static const version = '/api/v1';

//apisi
static const apiGetAllImages = '/cars/';

//headers

static Map<String, String> headers = {

  'Content - Type': 'application/json',
};

///prams
   static Map<String,String> paramEmpity()=> const <String, String>{};
   static Map<String, String> paramsGetAllCars({
    required int limit,
})=> <String, String>{
     "client_id":"kpJRzfq7YUUvtbzq5CfpHA==ObAnDMQOjsVfQWQP",
     "limit": limit.toString(),
     "per_page": "1",
     "model": "bmw",
   };
   ///body

static Map<String, dynamic> bodyEmpty() =>  const <String, dynamic>{};

}