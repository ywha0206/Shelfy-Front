import 'package:dio/dio.dart';
import '../../_core/utils/m_http.dart';

/*
  2025/02/05 박연화
  독서기록 api 요청 레포지토리
 */
class RecordRepository {
  const RecordRepository();

  // 250205 박연화 독서기록 생성 api 요청
  Future<Map<String, dynamic>> save(Map<String, dynamic> reqData) async {
    Response response = await dio.post('/api/record', data: reqData);
    Map<String, dynamic> responseBody = response.data;
    return responseBody;
  }

  // 250212 박연화 독서기록 리스트 조회 요청
  // @param 타입, 페이지번호
  Future<Map<String, dynamic>> findAllByType(
      {required int type, int page = 0}) async {
    Response response = await dio.get('/api/records/${type}/${page}');
    Map<String, dynamic> responseBody = response.data;
    return responseBody;
  }

  // 250213 박연화 독서기록 리스트 전부 다 가져오기
  Future<Map<String, dynamic>> findAll() async {
    Response response = await dio.get('/api/records');
    Map<String, dynamic> responseBody = response.data;
    return responseBody;
  }

  Future<Map<String, dynamic>> delete({required int stateId}) async {
    Response response = await dio.delete('/api/record/${stateId}');
    Map<String, dynamic> responseBody = response.data;
    return responseBody;
  }

  Future<Map<String, dynamic>> updateAttribute(
      {required int recordType,
      required int recordId,
      required int type,
      required Map<String, dynamic> data}) async {
    //
    Response response = await dio.put(
      '/api/record/${recordType}/${recordId}',
      queryParameters: {'type': type},
      data: data,
    );
    Map<String, dynamic> responseBody = response.data;
    return responseBody;
  }
}
