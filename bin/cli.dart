import "package:cli/basic.dart" as basic;
import "package:cli/flow.dart" as flow;

void main(List<String> arguments) {
  basic.runBasic();
  basic.runComplex();

  flow.runBranch();
  flow.runLoop();
}
