part of 'app_share_pref.dart';

enum AppSharePrefKey {
  tokenUser(key: 'token_user'),
  idUser(key: 'id_user'),
  nameUser(key: 'name_user'),
  phoneUser(key: 'phone_user'),
  departmentUser(key: 'department_user'),
  imageUser(key: 'image_user'),
  fieldUser(key: 'field_user'),
  userId(key: 'user_id'),
  offTime(key: 'off_time'),
  localeManager(key: 'locale_manager');

  final String key;

  const AppSharePrefKey({required this.key});
}
