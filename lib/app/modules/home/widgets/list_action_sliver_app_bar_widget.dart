import '../../../core/utils/export.dart';

class ListActionSliverAppBarWidget {
  listAction() {
    var listWidget = [
      Padding(
        padding: const EdgeInsets.only(left: 8, right: 10, top: 8, bottom: 8),
        child: Image.network(
          "http://scymark.semarangkota.go.id/daftar-aplikasi/kategori/20190201025730icon_user.png",
        ),
      ),
    ];
    return listWidget;
  }
}
