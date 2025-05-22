import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'produto_edit_confirmacao_model.dart';
export 'produto_edit_confirmacao_model.dart';

class ProdutoEditConfirmacaoWidget extends StatefulWidget {
  const ProdutoEditConfirmacaoWidget({super.key});

  @override
  State<ProdutoEditConfirmacaoWidget> createState() =>
      _ProdutoEditConfirmacaoWidgetState();
}

class _ProdutoEditConfirmacaoWidgetState
    extends State<ProdutoEditConfirmacaoWidget> {
  late ProdutoEditConfirmacaoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProdutoEditConfirmacaoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: FFButtonWidget(
        onPressed: () {
          print('Button pressed ...');
        },
        text: 'As alterações foram salvas com sucesso',
        icon: Icon(
          Icons.close,
          size: 15.0,
        ),
        options: FFButtonOptions(
          height: 40.0,
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
          iconAlignment: IconAlignment.end,
          iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          color: Color(0xFFA9FCBD),
          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                font: GoogleFonts.rubik(
                  fontWeight: FontWeight.normal,
                  fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                ),
                color: Color(0xFF014D13),
                fontSize: 12.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.normal,
                fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
              ),
          elevation: 0.0,
          borderSide: BorderSide(
            color: Color(0xFF19DA46),
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
