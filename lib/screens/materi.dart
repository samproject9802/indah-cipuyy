import 'package:flutter/material.dart';
import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';

class MateriSubject extends StatefulWidget {
  const MateriSubject({Key key}) : super(key: key);

  @override
  _MateriSubjectState createState() => _MateriSubjectState();
}

class _MateriSubjectState extends State<MateriSubject> {
  String pdfasset = "assets/docs/materi.pdf";
  PDFDocument _doc;
  bool _loading;

  @override
  void initState() {
    super.initState();
    _initPDF();
  }

  _initPDF() async {
    setState(() {
      _loading = true;
    });
    final doc = await PDFDocument.fromAsset(pdfasset);
    setState(() {
      _doc = doc;
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Materi Pembelajaran"),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(241, 208, 107, 1),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: _loading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : PDFViewer(
                document: _doc,
                zoomSteps: 1,
                lazyLoad: false,
                pickerButtonColor: Color.fromRGBO(241, 208, 107, 1),
              ),
      ),
    );
  }
}
