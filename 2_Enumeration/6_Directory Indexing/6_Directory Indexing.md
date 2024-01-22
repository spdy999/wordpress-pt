Project:: HTB
Type:: CBBH
Progress:: Completed
Tags:: 
Sites:: [HTB Academy](https://academy.hackthebox.com/module/17/section/88)
BackLinks:: [[WordPress]], [[Directory Listing]] + [[html2text]]
OS related:: 
Walkthrough:: [Hacking Wordpress - Directory Indexing - HTB Content / Academy - Hack The Box :: Forums](https://forum.hackthebox.com/t/hacking-wordpress-directory-indexing/265153/6)
Note:: Should have find the way to find wanted file(s) in every directory found by [[html2text]] (Tree DFS?)

---
Target: 83.136.251.235:49282 

## Keep in mind the key WordPress directories discussed in the WordPress Structure section. Manually enumerate the target for any directories whose contents can be listed. Browse these directories and locate a flag with the file name <mark style="background: #FF5582A6;">flag.txt</mark> and submit its contents as the answer.
- `HTB{3num3r4t10n_15_k3y}`
	- [[WordPress]] [[Enumeration]]
		- Version
			```txt hl:2,3
			╭─ /mn/H/No/CyberVault/Hac/Academy/Bug Bounty/Hacking Wordpess/2_Enumeration/6_Directory Indexing · ✔  11:55:12
			╰─ curl -s -X GET http://$ip:$port | grep '<meta name="generator"'
			<meta name="generator" content="WordPress 5.1.6" />
			```
		- Plugins
			```txt hl:2,8
			╭─ /mn/H/No/CyberVault/Hac/Academy/Bug Bounty/Hacking Wordpess/2_Enumeration/6_Directory Indexing · ✔  11:55:39
			╰─ curl -s -X GET http://$ip:$port | sed 's/href=/\n/g' | sed 's/src=/\n/g' | grep 'wp-content/plugins/*' | cut -d"'" -f2
			http://83.136.251.235:49282/wp-content/plugins/photo-gallery/css/bwg-fonts/fonts.css?ver=0.0.1
			http://83.136.251.235:49282/wp-content/plugins/photo-gallery/css/sumoselect.min.css?ver=3.0.3
			http://83.136.251.235:49282/wp-content/plugins/photo-gallery/css/jquery.mCustomScrollbar.min.css?ver=1.5.34
			http://83.136.251.235:49282/wp-content/plugins/photo-gallery/css/styles.min.css?ver=1.5.34
			http://83.136.251.235:49282/wp-content/plugins/wp-google-places-review-slider/public/css/wprev-public_combine.css?ver=6.1
			http://83.136.251.235:49282/wp-content/plugins/mail-masta/lib/subscriber.js?ver=5.1.6
			http://83.136.251.235:49282/wp-content/plugins/mail-masta/lib/jquery.validationEngine-en.js?ver=5.1.6
			http://83.136.251.235:49282/wp-content/plugins/mail-masta/lib/jquery.validationEngine.js?ver=5.1.6
			http://83.136.251.235:49282/wp-content/plugins/photo-gallery/js/jquery.sumoselect.min.js?ver=3.0.3
			http://83.136.251.235:49282/wp-content/plugins/photo-gallery/js/jquery.mobile.min.js?ver=1.3.2
			http://83.136.251.235:49282/wp-content/plugins/photo-gallery/js/jquery.mCustomScrollbar.concat.min.js?ver=1.5.34
			http://83.136.251.235:49282/wp-content/plugins/photo-gallery/js/jquery.fullscreen-0.4.1.min.js?ver=0.4.1
			http://83.136.251.235:49282/wp-content/plugins/photo-gallery/js/scripts.min.js?ver=1.5.34
			http://83.136.251.235:49282/wp-content/plugins/wp-google-places-review-slider/public/js/wprev-public-com-min.js?ver=6.1
			http://83.136.251.235:49282/wp-content/plugins/mail-masta/lib/css/mm_frontend.css?ver=5.1.6
			```
			- From doc, focus on [[mail-masta]]
		- [[Directory Listing]] : [[html2text]]
			```txt hl:2,24 ans:60
			╭─ /mn/H/No/CyberVault/Hac/Academy/Bug Bounty/Hacking Wordpess/2_Enumeration/6_Directory Indexing ···· ✔  13:14:33
			╰─ curl -s -X GET http://$ip:$port/wp-content/plugins/mail-masta/inc/ | html2text
			****** Index of /wp-content/plugins/mail-masta/inc/ ******
			===============================================================================
			../
			autoresponder/                                     13-May-2020 18:54
			-
			campaign/                                          13-May-2020 18:54
			-
			lists/                                             13-May-2020 18:54
			-
			ajax_listing.php                                   13-May-2020 18:54
			365
			api_settings_ajax.php                              13-May-2020 18:54
			1386
			campaign_delete.php                                13-May-2020 18:54
			353
			campaign_edit.php                                  13-May-2020 18:54
			7390
			campaign_save.php                                  13-May-2020 18:54
			9427
			duplicate_campaign.php                             13-May-2020 18:54
			2315
			flag.txt                                           18-May-2020 10:28
			24
			form_listing.php                                   18-May-2020 12:45
			2115
			mail-autoresponder-data.php                        13-May-2020 18:54
			80671
			mail-campaign-data.php                             13-May-2020 18:54
			74908
			mail-license-data.php                              13-May-2020 18:54
			4596
			mail-list-data.php                                 13-May-2020 18:54
			15353
			mail-masta-autoresponders.php                      13-May-2020 18:54
			1853
			mail-masta-campaign.php                            13-May-2020 18:54
			1799
			mail-masta-delete.php                              13-May-2020 18:54
			1646
			mail-masta-lists.php                               13-May-2020 18:54
			1964
			mail-masta-settings.php                            13-May-2020 18:54
			797
			mail-settings-data.php                             13-May-2020 18:54
			23607
			masta_license.php                                  13-May-2020 18:54
			1385
			resp.php                                           13-May-2020 18:54
			955
			subscriber_list.php                                13-May-2020 18:54
			6953
			view-campaign-mail.php                             13-May-2020 18:54
			505
			===============================================================================
			
			╭─ /mn/H/No/CyberVault/Hac/Academy/Bug Bounty/Hacking Wordpess/2_Enumeration/6_Directory Indexing ···· ✔  13:14:39
			╰─ curl -s -X GET http://$ip:$port/wp-content/plugins/mail-masta/inc/flag.txt | html2text
			HTB{3num3r4t10n_15_k3y}
			
			```




---
# Experiments

- Themes Enum
	```txt
	╭─ /mn/H/No/CyberVault/Hac/Academy/Bug Bounty/Hacking Wordpess/2_Enumeration/6_Directory Indexing · ✔  11:57:39
	╰─ curl -s -X GET http://$ip:$port | sed 's/href=/\n/g' | sed 's/src=/\n/g' | grep 'themes' | cut -d"'" -f2
	http://83.136.251.235:49282/wp-content/themes/ben_theme/css/bootstrap.css?ver=5.1.6
	http://83.136.251.235:49282/wp-content/themes/ben_theme/style.css?ver=5.1.6
	http://83.136.251.235:49282/wp-content/themes/ben_theme/css/colors/default.css?ver=5.1.6
	http://83.136.251.235:49282/wp-content/themes/ben_theme/css/jquery.smartmenus.bootstrap.css?ver=5.1.6
	http://83.136.251.235:49282/wp-content/themes/ben_theme/css/owl.carousel.css?ver=5.1.6
	http://83.136.251.235:49282/wp-content/themes/ben_theme/css/owl.transitions.css?ver=5.1.6
	http://83.136.251.235:49282/wp-content/themes/ben_theme/css/font-awesome.css?ver=5.1.6
	http://83.136.251.235:49282/wp-content/themes/ben_theme/css/animate.css?ver=5.1.6
	http://83.136.251.235:49282/wp-content/themes/ben_theme/css/magnific-popup.css?ver=5.1.6
	http://83.136.251.235:49282/wp-content/themes/ben_theme/css/bootstrap-progressbar.min.css?ver=5.1.6
	http://83.136.251.235:49282/wp-content/themes/ben_theme/js/navigation.js?ver=5.1.6
	http://83.136.251.235:49282/wp-content/themes/ben_theme/js/bootstrap.min.js?ver=5.1.6
	http://83.136.251.235:49282/wp-content/themes/ben_theme/js/jquery.smartmenus.js?ver=5.1.6
	http://83.136.251.235:49282/wp-content/themes/ben_theme/js/jquery.smartmenus.bootstrap.js?ver=5.1.6
	http://83.136.251.235:49282/wp-content/themes/ben_theme/js/owl.carousel.min.js?ver=5.1.6
	background: url("http://83.136.251.235:49282/wp-content/themes/ben_theme/images/breadcrumb-back.jpg") #50b9ce;
	```