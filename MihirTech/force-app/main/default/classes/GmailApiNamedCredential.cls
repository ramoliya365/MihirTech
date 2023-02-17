public class GmailApiNamedCredential {

    @future(Callout = true)
    public static void sendEmail(){
    
        list<ContentVersion> conVer = [SELECT id,PathOnClient,FileType,Title,ContentSize,VersionData FROM ContentVersion WHERE FileType='PNG'];


        String body  = '<h1>test Body</h1>';

        body +=    '<style>';
        body +=     'html {width:100%}';
        body +=     '::-moz-selection {background:#fd4326;color:#fff;text-shadow:1px 1px 0 #f22b0e}';
        body +=     '::selection {background:#fd4326;color:#fff;text-shadow:1px 1px 0 #f22b0e}';
        body +=     'body {background-color:#fff;margin:0;padding:0}';
        body +=     '.ReadMsgBody {width:100%;background-color:#fff}';
        body +=     '.ExternalClass {width:100%;background-color:#fff}';
        body +=    ' a {color:#fd4326;text-decoration:none;font-weight:400;font-style:normal}';
        body +=     'a:hover {color:#262626;text-decoration:none;font-weight:400;font-style:normal}';
        body +=     'p, div {margin:0!important}';
        body +=     'table {border-collapse:collapse}';
        body +=     '@media only screen and (max-width:640px) {';
        body +=     'body {width:auto!important}';
        body +=     'table table {width:100%!important}';
        body +=     'td[class=full_width] {width:100%!important}';
        body +=     'td[class=spacer] {width:30px!important}';
        body +=     'td[class=spacer_spec] {display:none!important}';
        body +=     'div[class=div_scale] {width:440px!important;margin:0 auto!important}';
        body +=     'table[class=table_scale] {width:440px!important;margin:0 auto!important}';
        body +=     'td[class=td_scale] {width:440px!important;margin:0 auto!important}';
        body +=     'img[class=img_scale] {width:100%!important;height:auto!important}';
        body +=     'img[class=divider] {width:100%!important;height:2px!important}';
        body +=    ' td[class=divider] {width:100%!important;display:block!important;float:left;text-align:inherit!important}}';
        body +=     '@media only screen and (max-width:479px) {';
        body +=     'body {width:auto!important}';
        body +=     'table table {width:100%!important}';
        body +=    'td[class=full_width] {width:100%!important}';
        body +=     'div[class=div_scale] {width:280px!important;margin:0 auto!important}';
        body +=    'table[class=table_scale] {width:280px!important;margin:0 auto!important}';
        body +=    'td[class=td_scale] {width:280px!important;margin:0 auto!important}';
        body +=   ' img[class=img_scale] {width:100%!important;height:auto!important}';
        body +=    'img[class=divider] {width:100%!important;height:2px!important}';
        body +=    'td[class=spacer] {display:none!important}';
        body +=    'td[class=spacer_spec] {display:none!important}';
        body +=    'td[class=divider] {width:100%!important;display:block!important;float:left;text-align:inherit!important}';
        body +=    'td[class=center] {text-align:center!important}';
        body +=     'td[class=subject_line] {float:left;width:240px;display:block!important;text-align:left!important;padding:15px 20px!important}';
        body +=   ' td[class=contact] {float:left;width:240px;display:block!important;text-align:left!important;padding:0 20px 15px!important;padding-bottom:20px!important}';
        body +=   ' td[class=social_left] {float:left;width:240px;display:block!important;text-align:center!important;padding:20px 20px 0!important}';
        body +=    'td[class=social_right] {float:left;width:240px;display:block!important;text-align:center!important;padding:0 20px!important}';
        body +=    'td[class=one_one] {width:240px!important;display:block!important;float:left;padding-left:20px!important;padding-right:20px!important;text-align:inherit!important}';
        body +=    'td[class=one_half] {width:240px!important;padding-bottom:0!important;display:block!important;float:left;padding-left:20px!important;text-align:inherit!important}';
        body +=    'td[class=one_half_last] {width:240px!important;margin-top:40px!important;display:block!important;float:left;padding-left:20px!important;text-align:inherit!important;padding-top:0!important}';
        body +=    'td[class=one_third_fed] {width:240px!important;display:block!important;float:left;padding-left:20px!important;text-align:inherit!important}';
        body +=    'td[class=one_third_fed_sec] {width:240px!important;margin-top:20px!important;display:block!important;float:left;padding-left:20px!important;text-align:inherit!important}';
        body +=    'td[class=one_third_fed_last] {width:240px!important;margin-top:20px!important;display:block!important;float:left;padding-left:20px!important;text-align:inherit!important}';
        body +=    'td[class=one_third] {width:240px!important;display:block!important;float:left;padding-left:20px!important;text-align:inherit!important}';
        body +=    'td[class=one_third_sec] {width:240px!important;margin-top:40px!important;display:block!important;float:left;padding-left:20px!important;text-align:inherit!important}';
        body +=    'td[class=two_third_last] {width:240px!important;margin-top:40px!important;display:block!important;float:left;padding-left:20px!important;text-align:inherit!important}';
        body +=    'td[class=two_third] {width:240px!important;display:block!important;float:left;margin-left:20px!important;text-align:inherit!important}';
        body +=     'td[class=one_third_last] {width:240px!important;margin-top:40px!important;display:block!important;float:left;margin-left:20px!important;text-align:inherit!important}';
        body +=     'td[class=one_fourth] {width:110px!important;display:block!important;float:left;margin-left:20px!important;text-align:inherit!important}';
        body +=     'td[class=one_fourth_last] {width:110px!important;margin-top:20px!important;display:block!important;float:left;margin-left:20px!important;text-align:inherit!important}}';
        body +=     '</style>';


        body +=     '<body>';
        body +=     '<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#d0d0d0" style="padding: 0; margin: 0;"><tr>';
        body +=     '<td class="full_width" align="center" width="100%" bgcolor="#d0d0d0" style=""><div class="div_scale" style="width:600px;">';
        body +=     '<table class="table_scale" width="600" HEIGHT="42" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#494949" style="padding:0; margin: 0;"><tr>';
        body +=     '<td class="spacer" width="20" align="left" valign="top" bgcolor="#494949" style="margin: 0 !important; padding: 0 !important; line-height: 0 !important;">&nbsp;</td>';
        body +=     '<td class="subject_line" align="left" valign="middle" width="270" bgcolor="#494949" style="padding-top: 10px; padding-bottom: 10px;"><table width="100%"><tr>';
        body +=     '<td class="center" align="" valign="" style="font-family:Arial, sans-serif; font-style: italic; color:#d8d8d8; font-size:11px; line-height:18px;"> AuroraStore Models</td></tr></table></td>';
        body +=     '<td class="spacer" width="20" align="left" valign="top" bgcolor="#494949" style="margin: 0 !important; padding: 0 !important; line-height: 0 !important;">&nbsp;</td>';
        body +=     '<td class="contact" align="right" valign="middle" width="270" bgcolor="#494949" style="padding: 0px;"><table width="100%"><tr>';
        body +=     '<td class="center" align="" valign="" style="text-align: right; font-family:Arial, sans-serif; font-style: italic; color:#d8d8d8; font-size:11px; line-height:100%;"><img src="https://i.imgur.com/RxR11qU.png?1" alt="email" width="20" height="11" style="display: inline; vertical-align: middle;" />wallace.gleen@gmail.com </td></tr></table></td>';
        body +=     '<td class="spacer" width="20" align="left" valign="top" bgcolor="#494949" style="margin: 0 !important; padding: 0 !important; line-height: 0 !important;">&nbsp;</td></tr></table></div></td></tr><tr>';
        body +=     '<td class="full_width" align="center" width="100%" bgcolor="#d0d0d0" style=""><div class="div_scale" style="width:600px;">';
        body +=     '<table class="table_scale" width="600" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#d0d0d0" style="padding:0; margin: 0;"><tr>';
        body +=     '<td class="td_scale" width="600" height="40" bgcolor="#d0d0d0" align="center" valign="middle" style="height: 40px; padding: 0px; font-size:0 ; color:#686868; font-family: Arial,sans-serif; line-height: 0; ">&nbsp;</td></tr></table></div></td></tr><tr>';
        body +=     '<td class="full_width" align="center" width="100%" bgcolor="#d0d0d0" style=""><div class="div_scale" style="width:600px;">';
        body +=     '<table class="table_scale" width="600" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#f0f0f0" style="padding:0; margin: 0;"><tr>';
        body +=     '<td class="td_scale" width="600" bgcolor="#fd4326" align="center" valign="top" style="padding: 0px; font-size:14px ; color:#959595; font-family: Arial,sans-serif; line-height: 24px; "><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#fd4326" style="margin: 0;"><tr>';
        body +=     '<td class="center" align="center" valign="top" bgcolor="#fd4326" style="padding:0; font-size: 16px; line-height: 24px; font-family:Lucida Sans Unicode; color:#262626; margin: 0 !important;"><a href="#" style="font-style: normal;"> <img class="img_scale" src="https://i.imgur.com/XoXUafe.png?1" width="600" height="240" alt="featured banner" border="0" style="display: block;" /> </a></td></tr> <tr>';
        body +=     '<td height="20" bgcolor="#f0f0f0" style="padding:0; line-height: 0;">&nbsp;</td></tr><tr>';
        body +=     '<td class="center" align="center" valign="top" bgcolor="#f0f0f0" style="padding: 0px 20px;  text-shadow: 1px 1px 0px #ffffff;font-size:24px ; color:#444444; font-family: Lucida Sans Unicode; line-height: 34px; ">Parabéns pela sua compra na AuroraStore </td></tr><tr>';
        body +=     '<td height="10" bgcolor="#f0f0f0" style="padding:0; line-height: 0;">&nbsp;</td></tr><tr>';
        body +=     '<td class="center" align="center" valign="top" bgcolor="#f0f0f0" style="padding: 0px 20px;  text-shadow: 1px 1px 0px #ffffff;font-size:13px ; color:#727272; font-family: Arial,sans-serif; line-height: 23px; "> Você acabe de efetuar um pedido de um de nossos produtos, para concretizar a sua compra, por favor siga as instruções abaixo. <a href="#" style="color:#fd4326; font-weight: bold; text-decoration: none; font-style: normal;"></a></td></tr><tr>';
        body +=     '<td height="20" bgcolor="#f0f0f0" style="padding:0; line-height: 0;">&nbsp;</td></tr></table></td>';         
        body +=     '<div class="div_scale" style="width:600px; display: block; border-bottom: 1px solid #d0d0d0;">';
        body +=     '<table class="table_scale" width="600" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#f9f9f9" style="padding:0; margin: 0;"><tr>';
        body +=     '<td class="td_scale" width="600" height="20" bgcolor="#f9f9f9" align="center" valign="middle" style="height: 20px; padding: 0px; font-size:0 ; color:#686868; font-family: Arial,sans-serif; line-height: 0; ">&nbsp;</td></tr></table></div>';
        body +=     '<div class="div_scale" style="width:600px; display: block; ">';
        body +=     '<table class="table_scale" width="600" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#f0f0f0" style="padding:0; margin: 0;"><tr>';
        body +=     '<td class="td_scale" width="600" height="40" bgcolor="#f0f0f0" align="center" valign="middle" style="height: 40px; padding: 0px; font-size:0 ; color:#686868; font-family: Arial,sans-serif; line-height: 0; ">&nbsp;</td></tr></table></div></td></tr>';
        body +=     '</table>';
        body +=    ' </body>';

        String body2 = '';

        body2 += '<style>';
        body2 += 'body {margin: 0; padding: 0; min-width: 100%!important;}';
        body2 += 'img {height: auto;}';
        body2 += '.content {width: 100%; max-width: 600px;}';
        body2 += '.header {padding: 40px 30px 20px 30px;border-radius: 10px;}';
        body2 += '.innerpadding {padding: 30px 30px 30px 30px;}';
        body2 += '.borderbottom {border-bottom: 1px solid #f2eeed;}';
        body2 += '.subhead {font-size: 15px; color: #ffffff; font-family: sans-serif; letter-spacing: 10px;}';
        body2 += '.h1, .h2, .bodycopy {color: #153643; font-family: sans-serif;}';
        body2 += '.h1 {font-size: 33px; line-height: 38px; font-weight: bold;}';
        body2 += '.h2 {padding: 0 0 15px 0; font-size: 24px; line-height: 28px; font-weight: bold;}';
        body2 += '.bodycopy {font-size: 16px; line-height: 22px;}';
        body2 += '.button {text-align: center; font-size: 18px; font-family: sans-serif; font-weight: bold; padding: 0 30px 0 30px;}';
        body2 += '.button a {color: #ffffff; text-decoration: none;}';
        body2 += '.footer {padding: 20px 30px 15px 30px;}';
        body2 += '.footercopy {font-family: sans-serif; font-size: 14px; color: #ffffff;}';
        body2 += '.footercopy a {color: #ffffff; text-decoration: underline;}';
        body2 += '.fix{border-radius: 10px;}';
        body2 += '@media only screen and (max-width: 550px), screen and (max-device-width: 550px) {';
        body2 += 'body[yahoo] .hide {display: none!important;}';
        body2 += 'body[yahoo] .buttonwrapper {background-color: transparent!important;}';
        body2 += 'body[yahoo] .button {padding: 0px!important;}';
        body2 += 'body[yahoo] .button a {background-color: #effb41; padding: 15px 15px 13px!important;}';
        body2 += 'body[yahoo] .unsubscribe {display: block; margin-top: 20px; padding: 10px 50px; background: #2f3942; border-radius: 5px; text-decoration: none!important; font-weight: bold;}}';
        body2 += '</style>';
        body2 += '</head>';
        body2 += '<body yahoo bgcolor="#ffffff">';
        body2 += '<table width="100%" bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0">';
        body2 += '<tr>';
        body2 += '<td>';
        body2 += '<table bgcolor="#ffffff" class="content" align="center" cellpadding="0" cellspacing="0" border="0">';
        body2 += '<tr>';
        body2 += '<td bgcolor="#00bcd4" class="header">';
        body2 += '<table width="70" align="left" border="0" cellpadding="0" cellspacing="0">';
        body2 += '<tr><td height="70" style="padding: 0 20px 20px 0;"><img class="fix" src="https://www.psagtechnologies.com/wp-content/uploads/2022/04/Salesforce-emblem-1170x780.jpg" width="70" height="70" border="0" alt=""/></td></tr>';
        body2 += '</table>';
        body2 += '<table class="col425" align="left" border="0" cellpadding="0" cellspacing="0" style="width: 100%; max-width: 425px;">';
        body2 += '<tr>';
        body2 += '<td height="70">';
        body2 += '<table width="100%" border="0" cellspacing="0" cellpadding="0">';
        body2 += '<tr><td class="subhead" style="padding: 0 0 0 3px;">SOME</td></tr>';
        body2 += '<tr><td class="h1" style="padding: 5px 0 0 0;">RESPONSIVE MAIL</td></tr>';
        body2 += '</table>';
        body2 += '</td>';
        body2 += '</tr>';
        body2 += '</table>';
        body2 += '</td>';
        body2 += '</tr>';
        body2 += '<tr>';
        body2 += '<td class="innerpadding borderbottom">';
        body2 += '<table width="100%" border="0" cellspacing="0" cellpadding="0">';
        body2 += '<tr><td class="h2">LOREM IPSUM</td></tr><tr><td class="bodycopy">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tempus adipiscing felis, sit amet blandit ipsum volutpat sed. Morbi porttitor, eget accumsan dictum, nisi libero ultricies ipsum, in posuere mauris neque at erat.</td></tr>';
        body2 += '</table>';
        body2 += '</td>';
        body2 += '</tr>';
        body2 += '<tr>';
        body2 += '<td class="innerpadding borderbottom">';
        body2 += '<table width="115" align="left" border="0" cellpadding="0" cellspacing="0">';
        body2 += '<tr><td height="115" style="padding: 0 20px 20px 0;"><img class="fix" src="https://www.psagtechnologies.com/wp-content/uploads/2022/04/Salesforce-emblem-1170x780.jpg" width="115" height="115" border="0" alt=""/></td></tr>';
        body2 += '</table>';
        body2 += '<table class="col380" align="left" border="0" cellpadding="0" cellspacing="0" style="width: 100%; max-width: 380px;">';
        body2 += '<tr>';
        body2 += '<td>';
        body2 += '<table width="100%" border="0" cellspacing="0" cellpadding="0">';
        body2 += '<tr><td class="bodycopy">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tempus adipiscing felis, sit amet blandit ipsum volutpat sed. Morbi porttitor, eget accumsan dictum, nisi libero ultricies ipsum, in posuere mauris neque at erat.</td></tr>';
        body2 += '<tr><td style="padding: 20px 0 0 0;"><table class="buttonwrapper" bgcolor="#effb41" border="0" cellspacing="0" cellpadding="0"><tr><td class="button" height="45"><a href="#">CTA</a></td></tr></table></td></tr>';
        body2 += '</table>';
        body2 += '</td>';
        body2 += '</tr>';
        body2 += '</table>';
        body2 += '</td>';
        body2 += '</tr>';
        body2 += '<tr><td class="innerpadding borderbottom"><img class="fix" src="https://www.psagtechnologies.com/wp-content/uploads/2022/04/Salesforce-emblem-1170x780.jpg" width="100%" border="0" alt=""/></td></tr>';
        body2 += '<tr><td class="innerpadding bodycopy">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In tempus adipiscing felis, sit amet blandit ipsum volutpat sed. Morbi porttitor, eget accumsan dictum, nisi libero ultricies ipsum, in posuere mauris neque at erat.</td></tr>';
        body2 += '<tr>';
        body2 += '<td class="footer" bgcolor="#44525f">';
        body2 += '<table width="100%" border="0" cellspacing="0" cellpadding="0">';
        body2 += '<tr>';
        body2 += '<td align="center" class="footercopy">&reg; Someone, somewhere 2013<br/>';
        body2 += '<a href="#" class="unsubscribe"><font color="#ffffff">Unsubscribe</font></a>';
        body2 += '<span class="hide">from this newsletter instantly</span>';
        body2 += '</td>';
        body2 += '</tr>';
        body2 += '<tr>';
        body2 += '<td align="center" style="padding: 20px 0 0 0;">';
        body2 += '<table border="0" cellspacing="0" cellpadding="0">';
        body2 += '<tr>';
        body2 += '<td width="37" style="text-align: center; padding: 0 10px 0 10px;"><a href="https://www.facebook.com/"><img src="http://placehold.it/37x37" width="37" height="37" alt="Facebook" border="0"/></a></td>';
        body2 += '<td width="37" style="text-align: center; padding: 0 10px 0 10px;"><a href="https://www.twitter.com/"><img src="http://placehold.it/37x37" width="37" height="37" alt="Twitter" border="0"/></a></td>';
        body2 += '</tr>';
        body2 += '</table>';
        body2 += '</td>';
        body2 += '</tr>';
        body2 += '</table>';
        body2 += '</td>';
        body2 += '</tr>';
        body2 += '</table>';
        body2 += '</td>';
        body2 += '</tr>';
        body2 += '</table>';
        body2 += '</body>';

        String body3 = '';

        body3 += '<style>@import url(';
        body3 += 'https://fonts.googleapis.com/css2?family=Work+Sans:ital,wght@1,800&display=swap';
        body3 += ')';
        body3 += '* {margin: 0;padding: 0;box-sizing: border-box;}';
        body3 += ':root {--color-1: transparent;--color-2: springgreen;}';
        body3 += 'body {font-family: work sans, sans-serif;font-weight: bold;font-size: 20vw;background-color: black;;}';
        body3 += '.stripes {display: block;position: fixed;top: 20px;left: -5vw;bottom: 0;right: 0;display: grid;place-items: center;color: red}';
        body3 += '.stripes:before {content: "HACKED";display: block;position: fixed;top: 0;right: 0;bottom: 0;left: 0;background: repeating-linear-gradient(var(--color-1) 0px,var(--color-1) 4px,var(--color-2) 5px,var(--color-2) 6px,var(--color-1) 6px);background-clip: text;-webkit-background-clip: text;color: transparent;animation: flush 0.25s infinite linear;display: grid;place-items: center;z-index: 10;}';
        body3 += '@keyframes flush {to {background-position: 0 6px;}}';
        body3 += '.stripes:after {content: "";display: block;position: fixed;margin: auto;top: 0;left: 0;right: 0;bottom: 0;width: 10vw;height: 10vw;border: 50px solid rgb(0, 42, 255);border-right-color: transparent;border-left-color: transparent;z-index: -10;border-radius: 50%;animation: border 1s infinite steps(8);}';
        body3 += '@keyframes border {';
        body3 += '    0% {transform: rotate(0) scale(0);}';
        body3 += '    100% { transform: rotate(720deg) scale(10);border: 50px solid rgb(0, 42, 255);border-right-color: transparent;border-left-color: transparent;}}';
        body3 += '</style>';
        body3 += '<body><div class="stripes">HACKED</div></body>';

        String mimeBody = '';
        String boundary = '__ctrlq_dot_org__';   

        mimeBody += 'MIME-Version: 1.0\n';
        mimeBody += 'To: mihir.r@mvclouds.com\n';
        // mimeBody += 'cc: mihirramoliya365@gmail.com\n';
        // mimeBody += 'bcc: mihirramoliya365@gmail.com\n';
        mimeBody += 'Subject: Email_Testing Google Reast Api\n';
        
        mimeBody += 'Hello Testing\n';
    
        mimeBody += 'Content-Type: multipart/mixed; boundary='+boundary+'\n';
    
        mimeBody += 'Content-Type: text/plain; charset=UTF-8\n';
    
        mimeBody += 'Content-Transfer-Encoding: base64\n';
    
        mimeBody += EncodingUtil.base64Encode(blob.valueOf('Testinggg'))+'\n\n';
    
        mimeBody += '--'+boundary+'\n';
    
        mimeBody += 'Content-Type: text/html; charset=UTF-8\n';
    
        mimeBody += 'Content-Transfer-Encoding: base64\n\n';
    
        mimeBody += EncodingUtil.base64Encode(blob.valueOf(body2))+'\n\n';
    
        mimeBody += '--'+boundary+'\n';
    
        for(ContentVersion cv:conVer){
            mimeBody += 'Content-Type:'+cv.Title+'/'+cv.FileType+''+';name=' + cv.Title + '\n';
            mimeBody += 'Content-Disposition: attachment; filename="' + cv.PathOnClient + '"\n';
            mimeBody += 'Content-Transfer-Encoding: base64\n\n';
            mimeBody += Encodingutil.base64Encode(cv.VersionData) + '\n\n';
        }

        mimeBody += '–'+boundary+'–';

        // Sending Main using Name Credential
        Http http = new Http(); 
        HttpRequest req = new HttpRequest();  
        req.setEndpoint('callout:GmailAPI/upload/gmail/v1/users/me/messages/send?uploadType=media');
        req.setHeader('Authorization', 'Bearer');
        req.setHeader('Content-Type', 'message/rfc822');
        req.setBody('{“raw”:”' + mimeBody +'”}');
        req.setMethod('POST');
        req.setTimeout(60 * 1000);

        HttpResponse response = http.send(req);

        if (response.getStatusCode() != 201) {
            System.debug('The status code returned was not expected: ' + response.getStatusCode() + ' ' + response.getStatus());  
        } else {
            System.debug(response.getBody());
        }  
    }    
}
