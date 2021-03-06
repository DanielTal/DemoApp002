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
import 'material_fab.dart';
import 'package:angular2/src/core/reflection/reflection.dart' as _ngRef;
import '../material_ripple/material_ripple.dart';
import 'package:angular2/angular2.dart';
import 'material_button_base.dart';
import '../material_ripple/material_ripple.template.dart' as i0;
import 'package:angular2/angular2.template.dart' as i1;
import 'material_button_base.template.dart' as i2;
export 'material_fab.dart';
import 'material_fab.scss.css.shim.dart' as import0;
import 'package:angular2/src/debug/debug_context.dart';
import '../../utils/browser/dom_service/dom_service.dart' as import2;
import '../material_ripple/material_ripple.dart' as import3;
import 'package:angular2/src/core/render/api.dart';
import 'package:angular2/src/debug/debug_app_view.dart';
import 'material_fab.dart' as import6;
import 'dart:html';
import 'package:angular2/src/core/linker/view_container.dart';
import 'package:angular2/src/core/change_detection/change_detection.dart';
import 'package:angular2/src/core/di/injector.dart' as import10;
import 'package:angular2/src/core/linker/view_type.dart' as import11;
import '../material_ripple/material_ripple.template.dart' as import12;
import '../../utils/browser/dom_service/angular_2.dart' as import13;
import '../../utils/disposer/disposer.dart' as import14;
import '../../utils/angular/managed_zone/src/managed_zone.dart' as import15;
import 'package:angular2/src/core/linker/element_ref.dart';
import 'package:angular2/src/core/linker/app_view_utils.dart' as import17;
import 'package:angular2/src/core/linker/app_view.dart';
import 'package:angular2/src/core/metadata/view.dart' as import19;
import 'package:angular2/src/core/linker/component_factory.dart' as import20;
const List<dynamic> styles_MaterialFabComponent = const [import0.styles];
const List<StaticNodeDebugInfo> nodeDebugInfos_MaterialFabComponent0 = const [
  null,const StaticNodeDebugInfo(const [
    import2.DomService,import3.MaterialRippleComponent
  ]
  ,import3.MaterialRippleComponent,const <String, dynamic>{})
]
;
RenderComponentType renderType_MaterialFabComponent;
class ViewMaterialFabComponent0 extends DebugAppView<import6.MaterialFabComponent> {
  Element _el_0;
  Element _el_1;
  ViewContainer _appEl_1;
  dynamic _DomService_1_3;
  import3.MaterialRippleComponent _MaterialRippleComponent_1_4;
  var _expr_3 = uninitialized;
  ViewMaterialFabComponent0(import10.Injector parentInjector,ViewContainer declarationEl): super(ViewMaterialFabComponent0,renderType_MaterialFabComponent,import11.ViewType.COMPONENT,{},parentInjector,declarationEl,ChangeDetectionStrategy.CheckOnce,nodeDebugInfos_MaterialFabComponent0);
  ViewContainer createInternal(dynamic rootSelector) {
    final Node parentRenderNode = initViewRoot(this.declarationViewContainer.nativeElement);
    var doc = document;
    _el_0 = doc.createElement('div');
    _el_0.setAttribute(shimCAttr,'');
    parentRenderNode.append(_el_0);
    dbgElm(_el_0,0,6,0);
    _el_0.className = 'content';
    dbg(null,7,2);
    project(_el_0,0);
    _el_1 = doc.createElement('material-ripple');
    _el_1.setAttribute(shimCAttr,'');
    parentRenderNode.append(_el_1);
    dbgElm(_el_1,1,10,0);
    _appEl_1 = new ViewContainer(1,null,this,_el_1);
    var compView_1 = import12.viewFactory_MaterialRippleComponent0(this.injector(1),_appEl_1);
    _DomService_1_3 = import13.createDomService(this.parentInjector.get(import2.DomService,null),this.parentInjector.get(import14.Disposer,null),this.parentInjector.get(import15.ManagedZone),this.parentInjector.get(Window));
    _MaterialRippleComponent_1_4 = new import3.MaterialRippleComponent(null,null,new ElementRef(_el_1),_DomService_1_3);
    _appEl_1.initComponent(_MaterialRippleComponent_1_4,compView_1);
    compView_1.createComp([],null);
    listen(_el_1,'mousedown',evt(_handle_mousedown_1_0));
    listen(_el_1,'mouseup',evt(_handle_mouseup_1_1));
    init([],[
      _el_0,_el_1
    ]
    ,[]);
    return null;
  }
  dynamic injectorGetInternal(dynamic token,int requestNodeIndex,dynamic notFoundResult) {
    if ((identical(token, import2.DomService) && (1 == requestNodeIndex))) { return _DomService_1_3; }
    if ((identical(token, import3.MaterialRippleComponent) && (1 == requestNodeIndex))) { return _MaterialRippleComponent_1_4; }
    return notFoundResult;
  }
  void detectChangesInternal() {
    bool changed = true;
    dbg(1,10,0);
    changed = false;
    dbg(1,12,17);
    final currVal_3 = ctx.visualFocus;
    if (import17.checkBinding(_expr_3,currVal_3)) {
      _MaterialRippleComponent_1_4.focused = currVal_3;
      changed = true;
      _expr_3 = currVal_3;
    }
    if (changed) { _appEl_1.componentView.markAsCheckOnce(); }
    this.detectContentChildrenChanges();
    this.detectViewChildrenChanges();
  }
  void destroyInternal() {
    dbg(1,10,0);
    _MaterialRippleComponent_1_4.ngOnDestroy();
  }
  bool _handle_mousedown_1_0($event) {
    _appEl_1.componentView.markPathToRootAsCheckOnce();
    dbg(1,10,17);
    final dynamic pd_0 = !identical((ctx.onMouseDown($event) as dynamic), false);
    dbg(1,10,0);
    final dynamic pd_1 = !identical((_MaterialRippleComponent_1_4.downAction($event) as dynamic), false);
    return ((true && pd_0) && pd_1);
  }
  bool _handle_mouseup_1_1($event) {
    this.markPathToRootAsCheckOnce();
    dbg(1,11,17);
    final dynamic pd_0 = !identical((ctx.onMouseUp($event) as dynamic), false);
    return (true && pd_0);
  }
}
AppView viewFactory_MaterialFabComponent0(import10.Injector parentInjector,ViewContainer declarationEl) {
  if (identical(renderType_MaterialFabComponent, null)) { (renderType_MaterialFabComponent = import17.appViewUtils.createRenderComponentType('asset:angular2_components/lib/src/components/material_button/material_button.html',1,import19.ViewEncapsulation.Emulated,styles_MaterialFabComponent)); }
  return new ViewMaterialFabComponent0(parentInjector,declarationEl);
}
const List<dynamic> styles_MaterialFabComponentHost = const [];
const List<StaticNodeDebugInfo> nodeDebugInfos_MaterialFabComponentHost0 = const [const StaticNodeDebugInfo(const [import6.MaterialFabComponent],import6.MaterialFabComponent,const <String, dynamic>{})];
RenderComponentType renderType_MaterialFabComponentHost;
class ViewMaterialFabComponentHost0 extends DebugAppView<dynamic> {
  Element _el_0;
  ViewContainer _appEl_0;
  import6.MaterialFabComponent _MaterialFabComponent_0_3;
  var _expr_6 = uninitialized;
  var _expr_7 = uninitialized;
  var _expr_8 = uninitialized;
  var _expr_9 = uninitialized;
  var _expr_10 = uninitialized;
  ViewMaterialFabComponentHost0(import10.Injector parentInjector,ViewContainer declarationEl): super(ViewMaterialFabComponentHost0,renderType_MaterialFabComponentHost,import11.ViewType.HOST,{},parentInjector,declarationEl,ChangeDetectionStrategy.CheckAlways,nodeDebugInfos_MaterialFabComponentHost0);
  ViewContainer createInternal(dynamic rootSelector) {
    _el_0 = selectOrCreateHostElement('material-fab',rootSelector,dbg(0,0,0));
    createAttr(_el_0,'animated','true');
    createAttr(_el_0,'role','button');
    _appEl_0 = new ViewContainer(0,null,this,_el_0);
    var compView_0 = viewFactory_MaterialFabComponent0(this.injector(0),_appEl_0);
    _MaterialFabComponent_0_3 = new import6.MaterialFabComponent(new ElementRef(_el_0),compView_0.ref);
    _appEl_0.initComponent(_MaterialFabComponent_0_3,compView_0);
    compView_0.createComp(projectableNodes,null);
    listen(_el_0,'click',evt(_handle_click_0_0));
    listen(_el_0,'blur',evt(_handle_blur_0_1));
    listen(_el_0,'mouseup',evt(_handle_mouseup_0_2));
    listen(_el_0,'keypress',evt(_handle_keypress_0_3));
    listen(_el_0,'focus',evt(_handle_focus_0_4));
    listen(_el_0,'mousedown',evt(_handle_mousedown_0_5));
    init([_el_0],[_el_0],[]);
    return _appEl_0;
  }
  dynamic injectorGetInternal(dynamic token,int requestNodeIndex,dynamic notFoundResult) {
    if ((identical(token, import6.MaterialFabComponent) && (0 == requestNodeIndex))) { return _MaterialFabComponent_0_3; }
    return notFoundResult;
  }
  void detectChangesInternal() {
    this.detectContentChildrenChanges();
    dbg(0,0,0);
    final currVal_6 = _MaterialFabComponent_0_3.raised;
    if (import17.checkBinding(_expr_6,currVal_6)) {
      updateElemClass(_el_0,'is-raised',currVal_6);
      _expr_6 = currVal_6;
    }
    dbg(0,0,0);
    final currVal_7 = _MaterialFabComponent_0_3.disabledStr;
    if (import17.checkBinding(_expr_7,currVal_7)) {
      setAttr(_el_0,'aria-disabled',((currVal_7 == null)? null: currVal_7.toString()));
      _expr_7 = currVal_7;
    }
    dbg(0,0,0);
    final currVal_8 = _MaterialFabComponent_0_3.tabIndex;
    if (import17.checkBinding(_expr_8,currVal_8)) {
      setAttr(_el_0,'tabindex',((currVal_8 == null)? null: currVal_8.toString()));
      _expr_8 = currVal_8;
    }
    dbg(0,0,0);
    final currVal_9 = _MaterialFabComponent_0_3.disabled;
    if (import17.checkBinding(_expr_9,currVal_9)) {
      updateElemClass(_el_0,'is-disabled',currVal_9);
      _expr_9 = currVal_9;
    }
    dbg(0,0,0);
    final currVal_10 = _MaterialFabComponent_0_3.zElevation;
    if (import17.checkBinding(_expr_10,currVal_10)) {
      setAttr(_el_0,'elevation',((currVal_10 == null)? null: currVal_10.toString()));
      _expr_10 = currVal_10;
    }
    this.detectViewChildrenChanges();
  }
  bool _handle_click_0_0($event) {
    _appEl_0.componentView.markPathToRootAsCheckOnce();
    dbg(0,0,0);
    final dynamic pd_0 = !identical((_MaterialFabComponent_0_3.handleClick($event) as dynamic), false);
    return (true && pd_0);
  }
  bool _handle_blur_0_1($event) {
    _appEl_0.componentView.markPathToRootAsCheckOnce();
    dbg(0,0,0);
    final dynamic pd_0 = !identical((_MaterialFabComponent_0_3.onBlur($event) as dynamic), false);
    return (true && pd_0);
  }
  bool _handle_mouseup_0_2($event) {
    _appEl_0.componentView.markPathToRootAsCheckOnce();
    dbg(0,0,0);
    final dynamic pd_0 = !identical((_MaterialFabComponent_0_3.onMouseUp($event) as dynamic), false);
    return (true && pd_0);
  }
  bool _handle_keypress_0_3($event) {
    _appEl_0.componentView.markPathToRootAsCheckOnce();
    dbg(0,0,0);
    final dynamic pd_0 = !identical((_MaterialFabComponent_0_3.handleKeyPress($event) as dynamic), false);
    return (true && pd_0);
  }
  bool _handle_focus_0_4($event) {
    _appEl_0.componentView.markPathToRootAsCheckOnce();
    dbg(0,0,0);
    final dynamic pd_0 = !identical((_MaterialFabComponent_0_3.onFocus($event) as dynamic), false);
    return (true && pd_0);
  }
  bool _handle_mousedown_0_5($event) {
    _appEl_0.componentView.markPathToRootAsCheckOnce();
    dbg(0,0,0);
    final dynamic pd_0 = !identical((_MaterialFabComponent_0_3.onMouseDown($event) as dynamic), false);
    return (true && pd_0);
  }
}
AppView viewFactory_MaterialFabComponentHost0(import10.Injector parentInjector,ViewContainer declarationEl) {
  if (identical(renderType_MaterialFabComponentHost, null)) { (renderType_MaterialFabComponentHost = import17.appViewUtils.createRenderComponentType('',0,import19.ViewEncapsulation.Emulated,styles_MaterialFabComponentHost)); }
  return new ViewMaterialFabComponentHost0(parentInjector,declarationEl);
}
const import20.ComponentFactory MaterialFabComponentNgFactory = const import20.ComponentFactory('material-fab',viewFactory_MaterialFabComponentHost0,import6.MaterialFabComponent,_METADATA);
const _METADATA = const <dynamic>[MaterialFabComponent, const <dynamic>[]];
var _visited = false;
void initReflector() {
if (_visited) return; _visited = true;
_ngRef.reflector
..registerType(MaterialFabComponent, new _ngRef.ReflectionInfo(
const <dynamic>[MaterialFabComponentNgFactory],
const [const <dynamic>[ElementRef], const <dynamic>[ChangeDetectorRef]],
(ElementRef element, ChangeDetectorRef _changeDetector) => new MaterialFabComponent(element, _changeDetector))
)
;
i0.initReflector();
i1.initReflector();
i2.initReflector();
}
