import "package:cli/basic.dart" as basic;
import "package:cli/flow.dart" as flow;
import "package:cli/func.dart";

void main(List<String> arguments) {
  basic.runBasic();
  basic.runComplex();

  flow.runBranch();
  flow.runLoop();

  runFunc();
}
