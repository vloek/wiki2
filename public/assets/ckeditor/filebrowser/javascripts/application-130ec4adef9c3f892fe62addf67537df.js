$.QueryString=function(e){if(""==e)return{};for(var t={},i=0;i<e.length;++i){var n=e[i].split("=");n.length==2&&(t[n[0]]=decodeURIComponent(n[1].replace(/\+/g," ")))}return t}(window.location.search.substr(1).split("&")),$(document).ready(function(){$("div.gal-item div.gal-inner-holder").live("mouseover",function(){$(this).addClass("hover")}).live("mouseout",function(){$(this).removeClass("hover")}).live("click",function(){var e=$(this).parents("div.gal-item").data("url");CKEDITOR.tools.callFunction(CKEditorFuncNum,e),window.close()}),$("div.gal-item a.gal-del").live("ajax:complete",function(){$(this).parents("div.gal-item").remove()})}),qq.FileUploader.instances=new Object,qq.FileUploaderInput=function(e){qq.FileUploaderBasic.apply(this,arguments),qq.extend(this._options,{element:null,listElement:null,template_id:"#fileupload_tmpl",classes:{button:"fileupload-button",drop:"fileupload-drop-area",dropActive:"fileupload-drop-area-active",list:"fileupload-list",preview:"fileupload-preview",file:"fileupload-file",spinner:"fileupload-spinner",size:"fileupload-size",cancel:"fileupload-cancel",success:"fileupload-success",fail:"fileupload-fail"}}),qq.extend(this._options,e),this._element=document.getElementById(this._options.element),this._listElement=this._options.listElement||this._find(this._element,"list"),this._classes=this._options.classes,this._button=this._createUploadButton(this._find(this._element,"button")),this._path=$('meta[name="ckeditor-path"]').attr("content"),qq.FileUploader.instances[this._element.id]=this},qq.extend(qq.FileUploaderInput.prototype,qq.FileUploaderBasic.prototype),qq.extend(qq.FileUploaderInput.prototype,{_find:function(e,t){var i=qq.getByClass(e,this._options.classes[t])[0];if(!i)throw alert(t),new Error("element not found "+t);return i},_setupDragDrop:function(){var e=this,t=this._find(this._element,"drop"),i=new qq.UploadDropZone({element:t,onEnter:function(i){qq.addClass(t,e._classes.dropActive),i.stopPropagation()},onLeave:function(e){e.stopPropagation()},onLeaveNotDescendants:function(){qq.removeClass(t,e._classes.dropActive)},onDrop:function(i){t.style.display="none",qq.removeClass(t,e._classes.dropActive),e._uploadFileList(i.dataTransfer.files)}});t.style.display="none",qq.attach(document,"dragenter",function(e){i._isValidFileDrag(e)&&(t.style.display="block")}),qq.attach(document,"dragleave",function(e){if(i._isValidFileDrag(e)){var n=document.elementFromPoint(e.clientX,e.clientY);n&&n.nodeName!="HTML"||(t.style.display="none")}})},_onSubmit:function(e,t){qq.FileUploaderBasic.prototype._onSubmit.apply(this,arguments),this._addToList(e,t)},_onProgress:function(e,t,i,n){qq.FileUploaderBasic.prototype._onProgress.apply(this,arguments);var o,s=this._getItemByFileId(e),r=this._find(s,"size");o=i!=n?Math.round(100*(i/n))+"% from "+this._formatSize(n):this._formatSize(n),qq.setText(r,o)},_onComplete:function(e,t,i){qq.FileUploaderBasic.prototype._onComplete.apply(this,arguments);var n=this._getItemByFileId(e),o=i.asset?i.asset:i;o&&o.id?(qq.addClass(n,this._classes.success),o.size=this._formatSize(o.size),o.controller=o.type.toLowerCase()=="ckeditor::picture"?"pictures":"attachment_files",$(n).replaceWith($(this._options.template_id).tmpl(o))):qq.addClass(n,this._classes.fail)},_addToList:function(e,t){if(this._listElement){this._options.multiple===!1&&$(this._listElement).empty();var i={id:0,filename:this._formatFileName(t),size:0,format_created_at:"",url_content:"#",controller:"assets",url_thumb:this._path+"/filebrowser/images/preloader.gif"},n=$(this._options.template_id).tmpl(i).attr("qqfileid",e).prependTo(this._listElement);n.find("div.img").addClass("preloader"),this._bindCancelEvent(n)}},_getItemByFileId:function(e){return $(this._listElement).find("div[qqfileid="+e+"]").get(0)},_bindCancelEvent:function(e){var t=this,i=$(e);i.find("a."+this._classes.cancel).bind("click",function(e){return t._handler.cancel(i.attr("qqfileid")),i.remove(),qq.preventDefault(e),!1})}});