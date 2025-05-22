import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'novo_produto_widget.dart' show NovoProdutoWidget;
import 'package:flutter/material.dart';

class NovoProdutoModel extends FlutterFlowModel<NovoProdutoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for nomeProduto widget.
  FocusNode? nomeProdutoFocusNode;
  TextEditingController? nomeProdutoTextController;
  String? Function(BuildContext, String?)? nomeProdutoTextControllerValidator;
  // State field(s) for preco widget.
  FocusNode? precoFocusNode;
  TextEditingController? precoTextController;
  String? Function(BuildContext, String?)? precoTextControllerValidator;
  // State field(s) for descricao widget.
  FocusNode? descricaoFocusNode;
  TextEditingController? descricaoTextController;
  String? Function(BuildContext, String?)? descricaoTextControllerValidator;
  // State field(s) for especificacoes widget.
  FocusNode? especificacoesFocusNode;
  TextEditingController? especificacoesTextController;
  String? Function(BuildContext, String?)?
      especificacoesTextControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in ButtonConcluir widget.
  LojaRastreadoresRow? inserirProduto;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomeProdutoFocusNode?.dispose();
    nomeProdutoTextController?.dispose();

    precoFocusNode?.dispose();
    precoTextController?.dispose();

    descricaoFocusNode?.dispose();
    descricaoTextController?.dispose();

    especificacoesFocusNode?.dispose();
    especificacoesTextController?.dispose();
  }
}
