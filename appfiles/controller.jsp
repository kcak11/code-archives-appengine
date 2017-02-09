<%@page import="java.util.HashMap"%>
<%!
private static HashMap navMapping=null;

static{
loadMapping();
}

private synchronized static void loadMapping(){
if(navMapping==null || navMapping.size()==0){
navMapping=new HashMap();

navMapping.put("history","/appfiles/navfiles/historyCheck.jsp");
navMapping.put("urlhash","/appfiles/navfiles/urlhash.jsp");
navMapping.put("oldbrowser","/appfiles/navfiles/oldBrowser.jsp");

navMapping.put("loadarchive","/appfiles/navfiles/archiveMain.jsp");
navMapping.put("home","/appfiles/navfiles/home.jsp");
navMapping.put("struts","/appfiles/navfiles/struts.jsp");
navMapping.put("jsf","/appfiles/navfiles/jsf.jsp");
navMapping.put("spring","/appfiles/navfiles/spring.jsp");
navMapping.put("hibernate","/appfiles/navfiles/hibernate.jsp");
navMapping.put("sql","/appfiles/navfiles/sql.jsp");
navMapping.put("javascript","/appfiles/navfiles/javascript.jsp");
navMapping.put("css","/appfiles/navfiles/css.jsp");

navMapping.put("abstractfactorypattern","/appfiles/navfiles/dp/abstractFactory.jsp");
navMapping.put("builderpattern","/appfiles/navfiles/dp/builder.jsp");
navMapping.put("factorymethodpattern","/appfiles/navfiles/dp/factoryMethod.jsp");
navMapping.put("prototypepattern","/appfiles/navfiles/dp/prototype.jsp");
navMapping.put("singletonpattern","/appfiles/navfiles/dp/singleton.jsp");
navMapping.put("adapterpattern","/appfiles/navfiles/dp/adapter.jsp");
navMapping.put("bridgepattern","/appfiles/navfiles/dp/bridge.jsp");
navMapping.put("compositepattern","/appfiles/navfiles/dp/composite.jsp");
navMapping.put("decoratorpattern","/appfiles/navfiles/dp/decorator.jsp");
navMapping.put("facadepattern","/appfiles/navfiles/dp/facade.jsp");
navMapping.put("flyweightpattern","/appfiles/navfiles/dp/flyweight.jsp");
navMapping.put("proxypattern","/appfiles/navfiles/dp/proxy.jsp");
navMapping.put("chainofresponsibilitypattern","/appfiles/navfiles/dp/chainOfResponsibility.jsp");
navMapping.put("commandpattern","/appfiles/navfiles/dp/command.jsp");
navMapping.put("interpreterpattern","/appfiles/navfiles/dp/interpreter.jsp");
navMapping.put("iteratorpattern","/appfiles/navfiles/dp/iterator.jsp");
navMapping.put("mediatorpattern","/appfiles/navfiles/dp/mediator.jsp");
navMapping.put("mementopattern","/appfiles/navfiles/dp/memento.jsp");
navMapping.put("observerpattern","/appfiles/navfiles/dp/observer.jsp");
navMapping.put("statepattern","/appfiles/navfiles/dp/state.jsp");
navMapping.put("strategypattern","/appfiles/navfiles/dp/strategy.jsp");
navMapping.put("templatemethodpattern","/appfiles/navfiles/dp/templateMethod.jsp");
navMapping.put("visitorpattern","/appfiles/navfiles/dp/visitor.jsp");
navMapping.put("mvcpattern","/appfiles/navfiles/dp/mvc.jsp");
navMapping.put("businessdelegatepattern","/appfiles/navfiles/dp/businessDelegate.jsp");
navMapping.put("compositeentitypattern","/appfiles/navfiles/dp/compositeEntity.jsp");
navMapping.put("dataaccessobjectpattern","/appfiles/navfiles/dp/dataAccessObject.jsp");
navMapping.put("frontcontrollerpattern","/appfiles/navfiles/dp/frontController.jsp");
navMapping.put("interceptingfilterpattern","/appfiles/navfiles/dp/interceptingFilter.jsp");
navMapping.put("servicelocatorpattern","/appfiles/navfiles/dp/serviceLocator.jsp");
navMapping.put("transferobjectpattern","/appfiles/navfiles/dp/transferObject.jsp");
navMapping.put("typesafeenumpattern","/appfiles/navfiles/dp/typesafeenum.jsp");
navMapping.put("restfulwspattern","/appfiles/navfiles/dp/restfulws.jsp");

navMapping.put("dlgeneral","/appfiles/navfiles/dloads/general.jsp");
navMapping.put("dlapi","/appfiles/navfiles/dloads/api.jsp");
navMapping.put("dlframework","/appfiles/navfiles/dloads/framework.jsp");
navMapping.put("dldatabase","/appfiles/navfiles/dloads/database.jsp");
navMapping.put("dlide","/appfiles/navfiles/dloads/ide.jsp");
navMapping.put("dltool","/appfiles/navfiles/dloads/tool.jsp");

navMapping.put("kbase","/appfiles/navfiles/knowledgeBase.jsp");
navMapping.put("tutorials","/appfiles/navfiles/tutorials.jsp");
navMapping.put("viewtutorial","/appfiles/navfiles/viewTutorial.jsp");
navMapping.put("catos","/appfiles/navfiles/catos.jsp");

navMapping.put("userfeedback","/appfiles/navfiles/feedback.jsp");
}
}

private static String findMapping(String mappingKey){
if(navMapping==null || navMapping.size()==0){
loadMapping();
}
String mappingAction="";
if(mappingKey!=null){
	if(navMapping.get(mappingKey.toLowerCase())!=null){
		mappingAction=(String)navMapping.get(mappingKey.toLowerCase());
	}else{
		mappingAction="/appfiles/navfiles/notFound.jsp";
	}
}else{
mappingAction="/appfiles/navfiles/notFound.jsp";
}
return mappingAction;
}

%>

<%
/*String reqMapping=request.getParameter("trigger");*/
StringBuffer requestURL=request.getRequestURL();
String fullURL=requestURL.toString();
if(fullURL.indexOf("http://code-archives.appspot.com")!=-1){
session.setAttribute("staticBaseURL","http://code-archives.appspot.com/");
}else if(fullURL.indexOf("http://www.code-archives.appspot.com")!=-1){
session.setAttribute("staticBaseURL","http://www.code-archives.appspot.com/");
}else if(fullURL.indexOf("http://localhost:8080")!=-1){
session.setAttribute("staticBaseURL","http://localhost:8080/ca/");
}

String requestURI=request.getRequestURI();
String servletIdentifier="/archive/Action/";
String result=requestURI.substring(requestURI.indexOf(servletIdentifier)+servletIdentifier.length());
String reqMapping=result.split("/")[0];
String mappingPage=findMapping(reqMapping);
%>

<jsp:forward page="<%=mappingPage%>"/>