// @ignoreProblemForFile annotate_overrides
// @ignoreProblemForFile cancel_subscriptions
// @ignoreProblemForFile constant_identifier_names
// @ignoreProblemForFile non_constant_identifier_names
// @ignoreProblemForFile implementation_imports
// @ignoreProblemForFile library_prefixes
// @ignoreProblemForFile type_annotate_public_apis
// @ignoreProblemForFile STRONG_MODE_DOWN_CAST_COMPOSITE
// @ignoreProblemForFile UNUSED_IMPORT
// @ignoreProblemForFile UNUSED_SHOWN_NAME
// @ignoreProblemForFile UNUSED_LOCAL_VARIABLE
library angular2_components.laminate.ruler.module.template.dart;

import 'module.dart';
import 'package:angular2/angular2.dart';
import './dom_ruler.dart';
import './ng_ruler.dart';
import '../../utils/angular/managed_zone/angular_2.dart';
import '../../utils/browser/dom_service/angular_2.dart';
import '../../utils/browser/window/module.dart';
import 'package:angular2/angular2.template.dart' as i0;
import './dom_ruler.template.dart' as i1;
import './ng_ruler.template.dart' as i2;
import '../../utils/angular/managed_zone/angular_2.template.dart' as i3;
import '../../utils/browser/dom_service/angular_2.template.dart' as i4;
import '../../utils/browser/window/module.template.dart' as i5;
export 'module.dart';

var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
i0.initReflector();
i1.initReflector();
i2.initReflector();
i3.initReflector();
i4.initReflector();
i5.initReflector();
}
