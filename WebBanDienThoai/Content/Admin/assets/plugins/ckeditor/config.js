/**
 * @license Copyright (c) 2003-2014, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.html or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';
	// Define changes to default configuration here. For example:
    config.language = 'vi';
    config.extraPlugins = 'youtube';
    config.allowedContent = true;
    // config.uiColor = '#AADC6E';
    //  config.toolbar =
    //[
    //   ['Source', '-', 'Bold', 'Italic', 'syntaxhighlight']
    //];
    config.filebrowserBrowseUrl = '/Content/Admin/assets/plugins/ckfinder/ckfinder.html';
    config.filebrowserImageBrowseUrl = '/Content/Admin/assets/plugins/ckfinder/ckfinder.html?Type=Images';
    config.filebrowserFlashBrowseUrl = '/Content/Admin/assets/plugins/ckfinder/ckfinder.html?Type=Flash';
    config.filebrowserUploadUrl = '/Content/Admin/assets/plugins/ckfinder/core/connector/aspx/connector.aspx?command=QuickUpload&type=Files';
    config.filebrowserImageUploadUrl = '/Content/Admin/assets/plugins/ckfinder/core/connector/aspx/connector.aspx?command=QuickUpload&type=Images';
    config.filebrowserFlashUploadUrl = '/Content/Admin/assets/plugins/ckfinder/core/connector/aspx/connector.aspx?command=QuickUpload&type=Flash';

    // Define changes to default configuration here. For example:
    // config.language = 'fr';
    // config.uiColor = '#AADC6E';

    config.toolbar = 'Custom';

    config.toolbar_Custom = [
		['Source'],
		['Maximize'],
		['Bold', 'Italic', 'Underline', 'Strike', '-', 'Subscript', 'Superscript'],
		['NumberedList', 'BulletedList', '-', 'Outdent', 'Indent'],
		['JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'],
		['SpecialChar'],
		'/',
		['Undo', 'Redo'],
		['Font', 'FontSize'],
		['TextColor', 'BGColor'],
		['Link', 'Unlink', 'Anchor'],
		['Image', 'Youtube', 'Table', 'HorizontalRule']
	];

    config.toolbar_Full =
	[
		['Source', '-', 'Save', 'NewPage', 'Preview', '-', 'Templates'],
		['Cut', 'Copy', 'Paste', 'PasteText', 'PasteFromWord', '-', 'Print', 'SpellChecker', 'Scayt'],
		['Undo', 'Redo', '-', 'Find', 'Replace', '-', 'SelectAll', 'RemoveFormat'],
		['Form', 'Checkbox', 'Radio', 'TextField', 'Textarea', 'Select', 'Button', 'ImageButton', 'HiddenField'],
		'/',
		['Bold', 'Italic', 'Underline', 'Strike', '-', 'Subscript', 'Superscript'],
		['NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', 'Blockquote'],
		['JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'],
		['Link', 'Unlink', 'Anchor'],
		['Image', 'Flash', 'Youtube', 'Table', 'HorizontalRule', 'Smiley', 'SpecialChar', 'PageBreak'],
		'/',
		['Styles', 'Format', 'Font', 'FontSize'],
		['TextColor', 'BGColor'],
		['Maximize', 'ShowBlocks', '-', 'About']
	];
};
