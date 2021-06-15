import 'package:injectable/injectable.dart';

import 'package:query_wizard/domain.dart';

@test
@LazySingleton(as: QueryWizardClient)
class FakeQueryWizardApiClient extends QueryWizardClient {
  @override
  Future<List<QueryElement>> getSources() async {
    return Future.delayed(const Duration(milliseconds: 1000), () {
      throw Exception();
    });
  }

  @override
  Future<QuerySchema> parseQuery(String query) {
    // TODO: implement parseQuery
    throw UnimplementedError();
  }
}
