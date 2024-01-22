Project:: HTB
Type:: CBBH
Progress:: Completed
Tags:: 
Sites:: [HTB Academy](https://academy.hackthebox.com/module/17/section/90)
BackLinks:: 
OS related:: 
Walkthrough:: 
Note:: 

---
## Search for "WordPress [[xmlrpc.php|xmlrpc]] attacks" and find out how to use it to execute all method calls. Enter the number of possible method calls of your target as the answer.
- `80`
	- [[curl]] #POST to `xmlrpc.php`
		```txt hl:2,9-88
		┌─[us-academy-3]─[10.10.15.180]─[htb-ac-346212@htb-pehv0vfo31]─[~]
		└──╼ [★]$ curl -X POST -d "<?xml version='1.0'?><methodCall><methodName>system.listMethods</methodName><params></params></methodCall>" http://94.237.62.195:32902/xmlrpc.php
		<?xml version="1.0" encoding="UTF-8"?>
		<methodResponse>
		  <params>
		    <param>
		      <value>
		      <array><data>
		  <value><string>system.multicall</string></value>
		  <value><string>system.listMethods</string></value>
		  <value><string>system.getCapabilities</string></value>
		  <value><string>demo.addTwoNumbers</string></value>
		  <value><string>demo.sayHello</string></value>
		  <value><string>pingback.extensions.getPingbacks</string></value>
		  <value><string>pingback.ping</string></value>
		  <value><string>mt.publishPost</string></value>
		  <value><string>mt.getTrackbackPings</string></value>
		  <value><string>mt.supportedTextFilters</string></value>
		  <value><string>mt.supportedMethods</string></value>
		  <value><string>mt.setPostCategories</string></value>
		  <value><string>mt.getPostCategories</string></value>
		  <value><string>mt.getRecentPostTitles</string></value>
		  <value><string>mt.getCategoryList</string></value>
		  <value><string>metaWeblog.getUsersBlogs</string></value>
		  <value><string>metaWeblog.deletePost</string></value>
		  <value><string>metaWeblog.newMediaObject</string></value>
		  <value><string>metaWeblog.getCategories</string></value>
		  <value><string>metaWeblog.getRecentPosts</string></value>
		  <value><string>metaWeblog.getPost</string></value>
		  <value><string>metaWeblog.editPost</string></value>
		  <value><string>metaWeblog.newPost</string></value>
		  <value><string>blogger.deletePost</string></value>
		  <value><string>blogger.editPost</string></value>
		  <value><string>blogger.newPost</string></value>
		  <value><string>blogger.getRecentPosts</string></value>
		  <value><string>blogger.getPost</string></value>
		  <value><string>blogger.getUserInfo</string></value>
		  <value><string>blogger.getUsersBlogs</string></value>
		  <value><string>wp.restoreRevision</string></value>
		  <value><string>wp.getRevisions</string></value>
		  <value><string>wp.getPostTypes</string></value>
		  <value><string>wp.getPostType</string></value>
		  <value><string>wp.getPostFormats</string></value>
		  <value><string>wp.getMediaLibrary</string></value>
		  <value><string>wp.getMediaItem</string></value>
		  <value><string>wp.getCommentStatusList</string></value>
		  <value><string>wp.newComment</string></value>
		  <value><string>wp.editComment</string></value>
		  <value><string>wp.deleteComment</string></value>
		  <value><string>wp.getComments</string></value>
		  <value><string>wp.getComment</string></value>
		  <value><string>wp.setOptions</string></value>
		  <value><string>wp.getOptions</string></value>
		  <value><string>wp.getPageTemplates</string></value>
		  <value><string>wp.getPageStatusList</string></value>
		  <value><string>wp.getPostStatusList</string></value>
		  <value><string>wp.getCommentCount</string></value>
		  <value><string>wp.deleteFile</string></value>
		  <value><string>wp.uploadFile</string></value>
		  <value><string>wp.suggestCategories</string></value>
		  <value><string>wp.deleteCategory</string></value>
		  <value><string>wp.newCategory</string></value>
		  <value><string>wp.getTags</string></value>
		  <value><string>wp.getCategories</string></value>
		  <value><string>wp.getAuthors</string></value>
		  <value><string>wp.getPageList</string></value>
		  <value><string>wp.editPage</string></value>
		  <value><string>wp.deletePage</string></value>
		  <value><string>wp.newPage</string></value>
		  <value><string>wp.getPages</string></value>
		  <value><string>wp.getPage</string></value>
		  <value><string>wp.editProfile</string></value>
		  <value><string>wp.getProfile</string></value>
		  <value><string>wp.getUsers</string></value>
		  <value><string>wp.getUser</string></value>
		  <value><string>wp.getTaxonomies</string></value>
		  <value><string>wp.getTaxonomy</string></value>
		  <value><string>wp.getTerms</string></value>
		  <value><string>wp.getTerm</string></value>
		  <value><string>wp.deleteTerm</string></value>
		  <value><string>wp.editTerm</string></value>
		  <value><string>wp.newTerm</string></value>
		  <value><string>wp.getPosts</string></value>
		  <value><string>wp.getPost</string></value>
		  <value><string>wp.deletePost</string></value>
		  <value><string>wp.editPost</string></value>
		  <value><string>wp.newPost</string></value>
		  <value><string>wp.getUsersBlogs</string></value>
		</data></array>
		      </value>
		    </param>
		  </params>
		</methodResponse>
		
		```

	- Count `<value>`
		```txt
		  <value><string>system.multicall</string></value>
		  <value><string>system.listMethods</string></value>
		  <value><string>system.getCapabilities</string></value>
		  <value><string>demo.addTwoNumbers</string></value>
		  <value><string>demo.sayHello</string></value>
		  <value><string>pingback.extensions.getPingbacks</string></value>
		  <value><string>pingback.ping</string></value>
		  <value><string>mt.publishPost</string></value>
		  <value><string>mt.getTrackbackPings</string></value>
		  <value><string>mt.supportedTextFilters</string></value>
		  <value><string>mt.supportedMethods</string></value>
		  <value><string>mt.setPostCategories</string></value>
		  <value><string>mt.getPostCategories</string></value>
		  <value><string>mt.getRecentPostTitles</string></value>
		  <value><string>mt.getCategoryList</string></value>
		  <value><string>metaWeblog.getUsersBlogs</string></value>
		  <value><string>metaWeblog.deletePost</string></value>
		  <value><string>metaWeblog.newMediaObject</string></value>
		  <value><string>metaWeblog.getCategories</string></value>
		  <value><string>metaWeblog.getRecentPosts</string></value>
		  <value><string>metaWeblog.getPost</string></value>
		  <value><string>metaWeblog.editPost</string></value>
		  <value><string>metaWeblog.newPost</string></value>
		  <value><string>blogger.deletePost</string></value>
		  <value><string>blogger.editPost</string></value>
		  <value><string>blogger.newPost</string></value>
		  <value><string>blogger.getRecentPosts</string></value>
		  <value><string>blogger.getPost</string></value>
		  <value><string>blogger.getUserInfo</string></value>
		  <value><string>blogger.getUsersBlogs</string></value>
		  <value><string>wp.restoreRevision</string></value>
		  <value><string>wp.getRevisions</string></value>
		  <value><string>wp.getPostTypes</string></value>
		  <value><string>wp.getPostType</string></value>
		  <value><string>wp.getPostFormats</string></value>
		  <value><string>wp.getMediaLibrary</string></value>
		  <value><string>wp.getMediaItem</string></value>
		  <value><string>wp.getCommentStatusList</string></value>
		  <value><string>wp.newComment</string></value>
		  <value><string>wp.editComment</string></value>
		  <value><string>wp.deleteComment</string></value>
		  <value><string>wp.getComments</string></value>
		  <value><string>wp.getComment</string></value>
		  <value><string>wp.setOptions</string></value>
		  <value><string>wp.getOptions</string></value>
		  <value><string>wp.getPageTemplates</string></value>
		  <value><string>wp.getPageStatusList</string></value>
		  <value><string>wp.getPostStatusList</string></value>
		  <value><string>wp.getCommentCount</string></value>
		  <value><string>wp.deleteFile</string></value>
		  <value><string>wp.uploadFile</string></value>
		  <value><string>wp.suggestCategories</string></value>
		  <value><string>wp.deleteCategory</string></value>
		  <value><string>wp.newCategory</string></value>
		  <value><string>wp.getTags</string></value>
		  <value><string>wp.getCategories</string></value>
		  <value><string>wp.getAuthors</string></value>
		  <value><string>wp.getPageList</string></value>
		  <value><string>wp.editPage</string></value>
		  <value><string>wp.deletePage</string></value>
		  <value><string>wp.newPage</string></value>
		  <value><string>wp.getPages</string></value>
		  <value><string>wp.getPage</string></value>
		  <value><string>wp.editProfile</string></value>
		  <value><string>wp.getProfile</string></value>
		  <value><string>wp.getUsers</string></value>
		  <value><string>wp.getUser</string></value>
		  <value><string>wp.getTaxonomies</string></value>
		  <value><string>wp.getTaxonomy</string></value>
		  <value><string>wp.getTerms</string></value>
		  <value><string>wp.getTerm</string></value>
		  <value><string>wp.deleteTerm</string></value>
		  <value><string>wp.editTerm</string></value>
		  <value><string>wp.newTerm</string></value>
		  <value><string>wp.getPosts</string></value>
		  <value><string>wp.getPost</string></value>
		  <value><string>wp.deletePost</string></value>
		  <value><string>wp.editPost</string></value>
		  <value><string>wp.newPost</string></value>
		  <value><string>wp.getUsersBlogs</string></value>
		```
		

----
# GPT4 Help
To find `system.listMethods` from `xmlrpc.php` in WordPress or any other XML-RPC enabled service, you would typically send an XML-RPC request asking for this list of methods. The exact request might look like this in the form of a cURL command:

```shell-session
curl -X POST -d "<?xml version='1.0'?><methodCall><methodName>system.listMethods</methodName><params></params></methodCall>" http://example.com/xmlrpc.php
```

Replace `http://example.com/xmlrpc.php` with the URL to the WordPress XML-RPC endpoint you are investigating.

This command sends a POST request with an XML payload to `xmlrpc.php` asking for a list of all available XML-RPC methods that the server supports.

Keep in mind that XML-RPC may be disabled on some WordPress sites due to the security concerns associated with this feature. If it is disabled, this request will not work.