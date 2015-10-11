/* config.js */
slideshow_css = '$CssPath$style.css';

thumbs = {margin: 3, padding: 3};
if (!parseInt(params.noFrame)){
	// frame border+shadow
	border = { 'top': 25, 'right': 25, 'bottom': 26, 'left': 25 };
	var ContaienerW = imageW + border.left + border.right;
	var ContaienerH = imageH + border.top + border.bottom;
	params.frameL = Math.round(100*100*border.left/imageW)/100;
	params.frameT = Math.round(100*100*border.top/imageH)/100;
	params.frameW = Math.floor(100*100*(imageW+border.left+border.right)/imageW)/100;
	params.frameH = Math.floor(100*100*(imageH+border.top+border.bottom)/imageH)/100;
	files.push({ 'src': 'backgnd/'+params.TemplateName+'/bg.png',     'filters': [ { 'name': 'resize', 'width': ContaienerW, 'height': ContaienerH, 'margins': border } ] });
	files.push( { 'src': 'backgnd/'+params.TemplateName+'/style-shadow.css', 'dest': slideshow_css, 'filters': ['params'] } );
	params.Border="solid 1px white"
}

params.ThumbWidthHalf = Math.round(params.ThumbWidth/2);

files.push({ 'src': 'backgnd/'+params.TemplateName+'/bullet.png' });
files.push({ 'src': 'backgnd/'+params.TemplateName+'/bullet.gif' });
files.push({ 'src': 'backgnd/'+params.TemplateName+'/arrows.png' });
files.push({ 'src': 'backgnd/'+params.TemplateName+'/arrows.gif' });
files.push({ 'src': 'common/index.html', 'filters': ['params'] });
files.push({ 'src': 'backgnd/'+params.TemplateName+'/play.png' });
files.push({ 'src': 'backgnd/'+params.TemplateName+'/pause.png' });


if (params.ShowTooltips){
	files.push(	{ 'src': 'backgnd/'+params.TemplateName+'/triangle-'+params.TooltipPos+'.png', dest: '$ImgPath$triangle.png' } );
	files.push( { 'src': 'backgnd/'+params.TemplateName+'/style-tooltip.css', 'dest': slideshow_css, 'filters': ['params'] } );
}


// call this function at the end of each template
finalize();