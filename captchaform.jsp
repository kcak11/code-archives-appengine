    <%@ page import="net.tanesha.recaptcha.ReCaptcha" %>
    <%@ page import="net.tanesha.recaptcha.ReCaptchaFactory" %>

    <html>
      <body>
        <form name="myform" action="checkcaptcha.jsp" method="post">
        <%
          ReCaptcha c = ReCaptchaFactory.newReCaptcha("6LdsRsESAAAAAJnBfH5fbJZnluW5374TTtzUzFBJ", "6LdsRsESAAAAAJj3X6pUAPR-Gsj1TNMA8dNOrstd", false);
          out.print(c.createRecaptchaHtml(null, null));
        %>
        <input type="submit" value="submit" />
        </form>
<script type="text/javascript">
var tk=(Math.pow(2,11)*Math.random()).toString(36)+(Math.pow(2,11)*Math.random()).toString(36);
tk=tk.split(".").join("");
tka=tk.split("");
for(t=0;t<tka.length;t+=2){
try{
tka[t]=tka[t].toUpperCase();
}catch(err){/**/}
}
document.myform.action="checkcaptcha.jsp?rt="+tka.join("");
</script>
      </body>
    </html>