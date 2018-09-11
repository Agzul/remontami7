!function(n){"function"==typeof define&&define.amd?define(["jquery"],n):"object"==typeof module&&module.exports?module.exports=function(e,t){return t===undefined&&(t="undefined"!=typeof window?require("jquery"):require("jquery")(e)),n(t)}:n(window.jQuery)}(function(m){m.FE.PLUGINS.lists=function(d){function g(e){return'<span class="fr-open-'+e.toLowerCase()+'"></span>'}function c(e){return'<span class="fr-close-'+e.toLowerCase()+'"></span>'}function a(e,t){!function(e,t){for(var n=[],a=0;a<e.length;a++){var r=e[a].parentNode;"LI"==e[a].tagName&&r.tagName!=t&&n.indexOf(r)<0&&n.push(r)}for(a=n.length-1;0<=a;a--){var i=m(n[a]);i.replaceWith("<"+t.toLowerCase()+" "+d.node.attributes(i.get(0))+">"+i.html()+"</"+t.toLowerCase()+">")}}(e,t);var n,a=d.html.defaultTag(),r=null;e.length&&(n="rtl"==d.opts.direction||"rtl"==m(e[0]).css("direction")?"margin-right":"margin-left");for(var i=0;i<e.length;i++)if("LI"!=e[i].tagName){var o=d.helpers.getPX(m(e[i]).css(n))||0;(e[i].style.marginLeft=null)===r&&(r=o);var l=0<r?"<"+t+' style="'+n+": "+r+'px;">':"<"+t+">",s="</"+t+">";for(o-=r;0<o/d.opts.indentMargin;)l+="<"+t+">",s+=s,o-=d.opts.indentMargin;a&&e[i].tagName.toLowerCase()==a?m(e[i]).replaceWith(l+"<li"+d.node.attributes(e[i])+">"+m(e[i]).html()+"</li>"+s):m(e[i]).wrap(l+"<li></li>"+s)}d.clean.lists()}function r(e){var t,n;for(t=e.length-1;0<=t;t--)for(n=t-1;0<=n;n--)if(m(e[n]).find(e[t]).length||e[n]==e[t]){e.splice(t,1);break}var a=[];for(t=0;t<e.length;t++){var r=m(e[t]),i=e[t].parentNode,o=r.attr("class");if(r.before(c(i.tagName)),"LI"==i.parentNode.tagName)r.before(c("LI")),r.after(g("LI"));else{var l="";o&&(l+=' class="'+o+'"');var s="rtl"==d.opts.direction||"rtl"==r.css("direction")?"margin-right":"margin-left";d.helpers.getPX(m(i).css(s))&&0<=(m(i).attr("style")||"").indexOf(s+":")&&(l+=' style="'+s+":"+d.helpers.getPX(m(i).css(s))+'px;"'),d.html.defaultTag()&&0===r.find(d.html.blockTagsQuery()).length&&r.wrapInner("<"+d.html.defaultTag()+l+"></"+d.html.defaultTag()+">"),d.node.isEmpty(r.get(0),!0)||0!==r.find(d.html.blockTagsQuery()).length||r.append("<br>"),r.append(g("LI")),r.prepend(c("LI"))}r.after(g(i.tagName)),"LI"==i.parentNode.tagName&&(i=i.parentNode.parentNode),a.indexOf(i)<0&&a.push(i)}for(t=0;t<a.length;t++){var f=m(a[t]),p=f.html();p=(p=p.replace(/<span class="fr-close-([a-z]*)"><\/span>/g,"</$1>")).replace(/<span class="fr-open-([a-z]*)"><\/span>/g,"<$1>"),f.replaceWith(d.node.openTagString(f.get(0))+p+d.node.closeTagString(f.get(0)))}d.$el.find("li:empty").remove(),d.$el.find("ul:empty, ol:empty").remove(),d.clean.lists(),d.html.wrap()}function i(e){d.selection.save();for(var t=0;t<e.length;t++){var n=e[t].previousSibling;if(n){var a=m(e[t]).find("> ul, > ol").last().get(0);if(a){for(var r=m("<li>").prependTo(m(a)),i=d.node.contents(e[t])[0];i&&!d.node.isList(i);){var o=i.nextSibling;r.append(i),i=o}m(n).append(m(a)),m(e[t]).remove()}else{var l=m(n).find("> ul, > ol").last().get(0);if(l)m(l).append(m(e[t]));else{var s=m("<"+e[t].parentNode.tagName+">");m(n).append(s),s.append(m(e[t]))}}}}d.clean.lists(),d.selection.restore()}function o(e){d.selection.save(),r(e),d.selection.restore()}function e(e){if("indent"==e||"outdent"==e){for(var t=!1,n=d.selection.blocks(),a=[],r=0;r<n.length;r++)"LI"==n[r].tagName?(t=!0,a.push(n[r])):"LI"==n[r].parentNode.tagName&&(t=!0,a.push(n[r].parentNode));t&&("indent"==e?i(a):o(a))}}return{_init:function(){d.events.on("commands.after",e),d.events.on("keydown",function(e){if(e.which==m.FE.KEYCODE.TAB){for(var t=d.selection.blocks(),n=[],a=0;a<t.length;a++)"LI"==t[a].tagName?n.push(t[a]):"LI"==t[a].parentNode.tagName&&n.push(t[a].parentNode);if(1<n.length||n.length&&(d.selection.info(n[0]).atStart||d.node.isEmpty(n[0])))return e.preventDefault(),e.stopPropagation(),e.shiftKey?o(n):i(n),!1}},!0)},format:function(e){d.selection.save(),d.html.wrap(!0,!0,!0,!0),d.selection.restore();for(var t=d.selection.blocks(),n=0;n<t.length;n++)"LI"!=t[n].tagName&&"LI"==t[n].parentNode.tagName&&(t[n]=t[n].parentNode);d.selection.save(),function(e,t){for(var n=!0,a=0;a<e.length;a++){if("LI"!=e[a].tagName)return!1;e[a].parentNode.tagName!=t&&(n=!1)}return n}(t,e)?r(t):a(t,e),d.html.unwrap(),d.selection.restore()},refresh:function(e,t){var n=m(d.selection.element());if(n.get(0)!=d.el){var a=n.get(0);(a="LI"!=a.tagName&&a.firstElementChild&&"LI"!=a.firstElementChild.tagName?n.parents("li").get(0):"LI"==a.tagName||a.firstElementChild?a.firstElementChild&&"LI"==a.firstElementChild.tagName?n.get(0).firstChild:n.get(0):n.parents("li").get(0))&&a.parentNode.tagName==t&&d.el.contains(a.parentNode)&&e.addClass("fr-active")}}}},m.FE.RegisterCommand("formatUL",{title:"Unordered List",refresh:function(e){this.lists.refresh(e,"UL")},callback:function(){this.lists.format("UL")},plugin:"lists"}),m.FE.RegisterCommand("formatOL",{title:"Ordered List",refresh:function(e){this.lists.refresh(e,"OL")},callback:function(){this.lists.format("OL")},plugin:"lists"}),m.FE.DefineIcon("formatUL",{NAME:"list-ul"}),m.FE.DefineIcon("formatOL",{NAME:"list-ol"})});