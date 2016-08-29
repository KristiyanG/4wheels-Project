define(function(){
    return {
        pageGroups: [{"id":"dd94bc46-5d0a-a8bc-5dcd-10a9175f8b15","name":"Default group","pages":[{"id":"53724620-e4f0-49f4-2557-31d08539c3ab","name":"Home Page"},{"id":"e4788ded-4161-5943-212b-a93ccc9a9585","name":"Home Page 2"},{"id":"66f4cca3-e39f-46c9-f8b7-3bbb96d78695","name":"Home Page Repair"},{"id":"75d55785-92de-1fde-2e61-13a7ce5be950","name":"Register page"},{"id":"9b40a104-bc94-22b7-96b0-d20e1fec1142","name":"Login Page"},{"id":"a94616db-cbb5-a44c-04e5-687c8cdab037","name":"Profile Page"},{"id":"91a7070b-f517-e79f-b0b7-54afc24f79fd","name":"Edit Profile Page"},{"id":"0643bef3-8d19-a14a-5405-03ab8048f78e","name":"Add Car Page"},{"id":"53df4c96-963c-9ce0-edb9-83fdf279daf5","name":"Add Service Page"},{"id":"c9679362-2c21-98bd-2957-685f655fd083","name":"My Cars Page"},{"id":"4d30c7cb-4d28-16b6-e7fd-e62342f9b623","name":"Detailed search page"},{"id":"7e02f4d4-d097-de21-ed26-02790f32f2c3","name":"Search Results Page"},{"id":"787d855f-0401-cfe4-bab0-8de225a919b0","name":"Car View Page"},{"id":"ac270a8e-2bb1-7c66-7fbf-58725991ec27","name":"Service View Page"},{"id":"111bf6fb-ce76-9c53-2de0-9c915a7fcbec","name":"Cars By Rating Page"},{"id":"1d0a294f-409c-9b33-096b-4d884a5318c8","name":"Sellers By Rating Page"},{"id":"b7b0732b-5938-8ca4-6173-441f1ef0bd01","name":"View Profil Page"},{"id":"9f013a09-e6e0-824e-e2a4-2a0abf5c37a2","name":"Auto Services By Rating Page"},{"id":"399e5e5b-29f7-9aac-9852-3183820f47bf","name":"My Services Page"}]}],
        downloadLink: "//services.ninjamock.com/html/htmlExport/download?shareCode=X4WBD&projectName=Untitled project",
        startupPageId: 0,

        forEachPage: function(func, thisArg){
        	for (var i = 0, l = this.pageGroups.length; i < l; ++i){
                var group = this.pageGroups[i];
                for (var j = 0, k = group.pages.length; j < k; ++j){
                    var page = group.pages[j];
                    if (func.call(thisArg, page) === false){
                    	return;
                    }
                }
            }
        },
        findPageById: function(pageId){
        	var result;
        	this.forEachPage(function(page){
        		if (page.id === pageId){
        			result = page;
        			return false;
        		}
        	});
        	return result;
        }
    }
});
