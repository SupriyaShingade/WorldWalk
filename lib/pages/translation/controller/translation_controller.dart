import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:get/get.dart';
import 'package:html_unescape/html_unescape.dart';
import 'package:http/http.dart' as http;
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speech_to_text/speech_recognition_error.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:translator/translator.dart';

class TranslationController extends GetxController {

  final FlutterTts tts = FlutterTts();

  @override
  void onInit() {
    // TODO: implement onInit

    // 언어 설정
    tts.setLanguage("ko-KR");
    tts.setSpeechRate(0.5);

    super.onInit();
  }

  bool isKorean = false;
  bool isEnglish = false;
  bool isVietnam = false;


  allFalse(){
    isKorean = false;
    isEnglish = false;
    isVietnam = false;
  }

  setTTS(){
    if(isKorean){
      tts.setLanguage("ko-KR");
    }else if(isEnglish){
      tts.setLanguage("en-US");
    }else if(isVietnam){
      tts.setLanguage("vi-VN");
    }
  }



  ///젤 윗 텍스틜드
  TextEditingController inputTextEditingController = TextEditingController();

  ///중간 텍스트 필드
  TextEditingController firstOutputTextEditingController =
      TextEditingController();

  ///마지막 텍스트필드
  TextEditingController secondOutputTextEditingController =
      TextEditingController();

  RxString engToKor = ''.obs;
  RxString vetToKor = ''.obs;
  RxString engToVet = ''.obs;
  RxString korToVet = ''.obs;

  ///번역할 언어 한국어시작
  RxBool isKor = true.obs;

  ///타이핑이 되있는지 여부
  RxBool isTyping = false.obs;
  RxBool isTyping2 = false.obs;

  ///타이핑이 되있는지 여부확인
  getTyping() {
    inputTextEditingController.text.isNotEmpty
        ? isTyping.value = true
        : isTyping.value = false;

  }

  ///언어 변경 누를때 로직
  changeLanguage() async {
    isKor.value = !isKor.value;
    inputTextEditingController.clear();
    firstOutputTextEditingController.clear();
    secondOutputTextEditingController.clear();
    engToKor.value = '';
    vetToKor.value = '';
    engToVet.value = '';
    korToVet.value = '';
  }

  ///언어 변경 누를때 로직
  clearAll() async {
    inputTextEditingController.clear();
    firstOutputTextEditingController.clear();
    secondOutputTextEditingController.clear();
    engToKor.value = '';
    vetToKor.value = '';
    engToVet.value = '';
    korToVet.value = '';
  }

  /// 영어로 번역하는 로직
  engTranslation() {
    firstOutputTextEditingController.text = result_cloud_google;
  }

  /// 베트남어 또는 한국어로 번역하는 로직
  vetTranslation() async {
    isKor.value
    //     ? isPriemium.value
    // ? await getTranslation_google_cloud_translation2()
    // :
  ?  await freeTransViKo()
   //      :   isPriemium.value
   //  ? await getTranslation_papago2()
   // :
  :  await freeTransViKo();

    isKor.value
        ? secondOutputTextEditingController.text = result_cloud_google2
        : secondOutputTextEditingController.text = result_cloud_google3;
    print(secondOutputTextEditingController.text);
  }

  ///복사버튼 로직
  copyText() {
    Clipboard.setData(ClipboardData(
      text: secondOutputTextEditingController.text,
    ));

    Get.snackbar(
      '복사',
      '클립보드에 복사가 완료되었습니다',
      snackPosition: SnackPosition.BOTTOM,
      colorText: Colors.white,
      backgroundColor: Color(0xff083591).withOpacity(0.8),
    );
  }


  ///영어 복사버튼 로직
  copyEngText() {
    Clipboard.setData(ClipboardData(
      text: firstOutputTextEditingController.text,
    ));

    Get.snackbar(
      '복사',
      '클립보드에 복사가 완료되었습니다',
      snackPosition: SnackPosition.BOTTOM,
      colorText: Colors.white,
      backgroundColor: Color(0xff083591).withOpacity(0.8),
    );
  }


  ///번역된 값(한국어 > 영어로)
  String result_cloud_google = '';

  ///한국어를 영어로
  // Future<void> getTranslation_google_cloud_translation() async {
  //   var _baseUrl = 'https://translation.googleapis.com/language/translate/v2';
  //   var key = 'AIzaSyBQY2z6XEQRM8Wz_0cA7Y78ZQ2fVUWTjQo';
  //   var to = "en"; //(ex: en, ko, etc..)
  //   var response = await http.post(
  //     Uri.parse('$_baseUrl?target=$to&key=$key&q=${inputTextEditingController.text}'),
  //   );
  //   if (response.statusCode == 200) {
  //     Map dataJson =
  //         jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
  //     var text = HtmlUnescape()
  //         .convert(dataJson['data']['translations'][0]['translatedText']);
  //     result_cloud_google = text;
  //
  //     print(result_cloud_google);
  //   } else {
  //     print(response.statusCode);
  //   }
  // }

  ///번역된 값(영어 > 베트남어로)
  var result_cloud_google2 = '';

  ///영어를 베트남어로
 // getTranslation_google_cloud_translation2() async {
 //    var _baseUrl = 'https://translation.googleapis.com/language/translate/v2';
 //    var key = 'AIzaSyBQY2z6XEQRM8Wz_0cA7Y78ZQ2fVUWTjQo';
 //    var to = "vi"; //(ex: en, ko, etc..)
 //    var response = await http.post(
 //      Uri.parse('$_baseUrl?target=$to&key=$key&q=${firstOutputTextEditingController.text}'),
 //    );
 //
 //    if (response.statusCode == 200) {
 //      Map dataJson =
 //      jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
 //      var text = HtmlUnescape()
 //          .convert(dataJson['data']['translations'][0]['translatedText']);
 //      result_cloud_google2 = text;
 //
 //      print("result_cloud_google2: ${result_cloud_google2}");
 //    } else {
 //      print(response.statusCode);
 //    }
 //  }

  ///번역된 값(영어 > 한국어로)
  var result_cloud_google3 = '';

  ///영어를 한국어로
  // Future<void> getTranslation_google_cloud_translation3() async {
  //   var _baseUrl = 'https://translation.googleapis.com/language/translate/v2';
  //   var key = 'AIzaSyBQY2z6XEQRM8Wz_0cA7Y78ZQ2fVUWTjQo';
  //   var to = "ko"; //(ex: en, ko, etc..)
  //   var response = await http.post(
  //     Uri.parse(
  //         '$_baseUrl?target=$to&key=$key&q=${firstOutputTextEditingController.text}'),
  //   );
  //
  //   if (response.statusCode == 200) {
  //     Map dataJson =
  //     jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
  //     var text = HtmlUnescape()
  //         .convert(dataJson['data']['translations'][0]['translatedText']);
  //     result_cloud_google3 = text;
  //
  //     print(result_cloud_google3);
  //   } else {
  //     print('엘스?');
  //     print(response.statusCode);
  //   }
  // }

  ///번역된 값(베트남어 > 한국어로)
  var result_cloud_google4 = '';

  // ///베트남어를 한국어로
  // Future<void> getTranslation_google_cloud_translation4() async {
  //   var _baseUrl = 'https://translation.googleapis.com/language/translate/v2';
  //   var key = 'AIzaSyBQY2z6XEQRM8Wz_0cA7Y78ZQ2fVUWTjQo';
  //   var to = "ko"; //(ex: en, ko, etc..)
  //   var response = await http.post(
  //     Uri.parse(
  //         '$_baseUrl?target=$to&key=$key&q=${secondOutputTextEditingController.text}'),
  //   );
  //
  //   if (response.statusCode == 200) {
  //     Map dataJson =
  //     jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
  //     var text = HtmlUnescape()
  //         .convert(dataJson['data']['translations'][0]['translatedText']);
  //     result_cloud_google4 = text;
  //
  //     print(result_cloud_google4);
  //   } else {
  //     print('엘스?');
  //     print(response.statusCode);
  //   }
  // }
  //
  // ///한국어를 베트남어로
  // Future<void> getTranslation_google_cloud_translation5() async {
  //   var _baseUrl = 'https://translation.googleapis.com/language/translate/v2';
  //   var key = 'AIzaSyBQY2z6XEQRM8Wz_0cA7Y78ZQ2fVUWTjQo';
  //   var to = "vi"; //(ex: en, ko, etc..)
  //   var response = await http.post(
  //     Uri.parse(
  //         '$_baseUrl?target=$to&key=$key&q=${secondOutputTextEditingController.text}'),
  //   );
  //
  //   if (response.statusCode == 200) {
  //     Map dataJson =
  //     jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;
  //      korToVet.value = HtmlUnescape().convert(dataJson['data']['translations'][0]['translatedText']);
  //   } else {}
  // }


  //-----------------------------------------------------------------------------
///파파고 로직


  // Future<void> getTranslation_papago() async {
  //   String _client_id = "w1YIesdeplTWTjPObOE7";
  //   String _client_secret = "uuRxuoCX7a";
  //   String _content_type = "application/x-www-form-urlencoded; charset=UTF-8";
  //   String _url = "https://openapi.naver.com/v1/papago/n2mt";
  //   // await getLanguage_papago();
  //
  //   http.Response trans = await http.post(
  //     Uri.parse(_url),
  //     headers: {
  //       'Content-Type': _content_type,
  //       'X-Naver-Client-Id': _client_id,
  //       'X-Naver-Client-Secret': _client_secret
  //     },
  //     body: {
  //       'source': "ko",//위에서 언어 판별 함수에서 사용한 language 변수
  //       'target': "en",//원하는 언어를 선택할 수 있다.
  //       'text': inputTextEditingController.text,
  //     },
  //   );
  //
  //   if (trans.statusCode == 200) {
  //     var dataJson = jsonDecode(trans.body);
  //     var result_papago = dataJson['message']['result']['translatedText'];
  //     print(result_papago);
  //     result_cloud_google = result_papago;
  //   } else {
  //     print(trans.statusCode);
  //   }
  // }

  // Future<void> getTranslation_papago2() async {
  //   String _client_id = "w1YIesdeplTWTjPObOE7";
  //   String _client_secret = "uuRxuoCX7a";
  //   String _content_type = "application/x-www-form-urlencoded; charset=UTF-8";
  //   String _url = "https://openapi.naver.com/v1/papago/n2mt";
  //   // await getLanguage_papago();
  //
  //   http.Response trans = await http.post(
  //     Uri.parse(_url),
  //     headers: {
  //       'Content-Type': _content_type,
  //       'X-Naver-Client-Id': _client_id,
  //       'X-Naver-Client-Secret': _client_secret
  //     },
  //     body: {
  //       'source': "en",//위에서 언어 판별 함수에서 사용한 language 변수
  //       'target': "ko",//원하는 언어를 선택할 수 있다.
  //       'text': firstOutputTextEditingController.text,
  //     },
  //   );
  //
  //   if (trans.statusCode == 200) {
  //     var dataJson = jsonDecode(trans.body);
  //
  //     var result_papago = dataJson['message']['result']['translatedText'];
  //
  //     result_cloud_google3 = result_papago;
  //
  //   } else {
  //     print(trans.statusCode);
  //   }
  // }

  ///==================말하기========================
  ///

  RxBool isTalking = false.obs;
  RxBool hasSpeechs = false.obs;
  RxBool _logEvents = false.obs;
  Rx<double> level = 0.0.obs;
  double minSoundLevel = 50000 ;
  double maxSoundLevel = -50000 ;
  Rx<String> lastWords = ''.obs;
  Rx<String>  lastError = ''.obs;
  Rx<String>  lastStatus = ''.obs;
  Rx<String>  _currentLocaleId = ''.obs;
  List<LocaleName> _localeNames = [];

  final SpeechToText speech = SpeechToText();


  Future<void> initSpeechState() async {
    _logEvent('Initialize');
    var hasSpeech = await speech.initialize(
        onError: errorListener,
        onStatus: statusListener,
        debugLogging: true,
        finalTimeout: Duration(milliseconds: 0));
    if (hasSpeech) {
      _localeNames = await speech.locales();

      if (isKor.value) {
        _currentLocaleId.value = 'ko_KR';
      } else {
        _currentLocaleId.value = 'vi_VN';
      }
    }
    hasSpeechs.value = hasSpeech;

  }


  Future<void> startListening() async {
    _logEvent('start listening');
    lastWords.value = '';
    lastError.value = '';
   await speech.listen(
        onResult: resultListener,
        listenFor: Duration(seconds: 30),
        pauseFor: Duration(seconds: 5),
        partialResults: true,
        localeId: _currentLocaleId.value,
        onSoundLevelChange: soundLevelListener,
        cancelOnError: true,
        listenMode: ListenMode.confirmation);
  }

  Future<void> resultListener(SpeechRecognitionResult result) async {
    _logEvent(
        'Result listener final: ${result.finalResult}, words: ${result.recognizedWords}');
    // setState(() {
    lastWords.value = result.recognizedWords;
    // });

    print(lastWords.value);
    inputTextEditingController.text = lastWords.value;

    if(inputTextEditingController.text.isNotEmpty){
      isTyping.value = false;

      await freeTransEnKo();

      // if (isKor.value) {
      //   await             getTranslation_papago();
      //   await engTranslation();
      //   await            getTranslation_papago2();
      // }else{
      //   await getTranslation_google_cloud_translation();
      //   await engTranslation();
      //
      //   await getTranslation_google_cloud_translation2();
      // }

      engToVet.value =
          result_cloud_google2;
      engToKor.value =
          result_cloud_google3;

      await getTyping();

    }
  }

  void soundLevelListener(double level) {
    minSoundLevel = min(minSoundLevel, level);
    maxSoundLevel = max(maxSoundLevel, level);
    // _logEvent('sound level $level: $minSoundLevel - $maxSoundLevel ');
    // setState(() {
    this.level.value = level;
    // });
  }

  void errorListener(SpeechRecognitionError error) {
    _logEvent(
        'Received error status: $error, listening: ${speech.isListening}');
    // setState(() {
    lastError.value = '${error.errorMsg} - ${error.permanent}';
    // });
  }

  void statusListener(String status) {
    _logEvent(
        'Received listener status: $status, listening: ${speech.isListening}');
    lastStatus.value = '$status';

    if(status == 'done'){
      isTalking.value = false;
    }
  }

  void _logEvent(String eventDescription) {
    if (_logEvents.value) {
      var eventTime = DateTime.now().toIso8601String();
      print('$eventTime $eventDescription');
    }
  }


  RxBool isAnimation = false.obs;
  animation() async {
    for(int i = 0; i < 100; i++){
      // print('아이야아이야아이양$i');

      if(isTalking.value){
        isAnimation.value = !isAnimation.value;
   await  Future.delayed(Duration(milliseconds: 700));
    }else{
        isAnimation.value = false;
        break;
      }
    }

  }


  RxBool isPriemium = false.obs;
   freeTransViKo() async {
    print('베트남 무료 번역기 실행');

    print(firstOutputTextEditingController.text);
    var translator = GoogleTranslator();
    var input = firstOutputTextEditingController.text;

    /// Using the Future API
  await  translator.translate(input, to: isKor.value ? 'vi' : 'ko').then((result) =>   isKor.value ? result_cloud_google2 = result.text : result_cloud_google3 = result.text);

    print(result_cloud_google2);


    // isKor.value
    //     ? secondOutputTextEditingController.text = result_cloud_google2
    //     : firstOutputTextEditingController.text = result_cloud_google3;


    /// Passing the translation to a variable
    var translation =
        isKor.value
            ? await translator.translate(result_cloud_google2, from: 'en', to: 'ko')
            : await translator.translate(result_cloud_google3, from: 'ko', to: 'vi');


    print(translation.text);

    isKor.value
        ? vetToKor.value = result_cloud_google3
        : korToVet.value = result_cloud_google2;

  }

  freeTransEnKo() async {
    print('영어 무료 번역기 실행');

    print(inputTextEditingController.text);
    var translator = GoogleTranslator();
    var input = inputTextEditingController.text;

    /// Using the Future API
    await  translator.translate(input, to: isKor.value ? 'en' : 'en').then((result) =>   isKor.value ? result_cloud_google = result.text : result_cloud_google3 = result.text);


    isKor.value
        ? firstOutputTextEditingController.text = result_cloud_google
   :  firstOutputTextEditingController.text = result_cloud_google3;




    /// Passing the translation to a variable

    print( isKor.value);

    var translation =
    isKor.value
        ? await translator.translate(result_cloud_google, from: 'en', to: 'ko')
        : await translator.translate(result_cloud_google3, from: 'en', to: 'vi');


    isKor.value
    ?  result_cloud_google3 = translation.text
    : result_cloud_google = translation.text;





  }


}


