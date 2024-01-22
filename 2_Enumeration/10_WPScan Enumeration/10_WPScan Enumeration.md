Project:: HTB
Type:: CBBH
Progress:: Completed
Tags:: 
Sites:: [HTB Academy](https://academy.hackthebox.com/module/17/section/43)
BackLinks:: [[WordPress]] 
OS related:: 
Walkthrough:: 
Note:: 

---
## Enumerate the provided [[WordPress]] instance for all installed plugins. Perform a scan with [[WPSCAN]] against the target and submit the version of the vulnerable plugin named “photo-gallery”.
- ANS
	- `photo-gallery` version scan : [[WPSCAN]] 
		```txt hl:2 ans:104
		╭─ /mn/H/No/CyberVault/Hac/A/Bug Bounty/Hacking Wordpess/2_Enumeration/10_WPScan Enumeration ···· ✘ 4  06:26:16
		╰─ wpscan --url http://$ip:$port/ -e ap -v -o wp_scan_ap.txt
	
		╭─ /mn/H/No/CyberVault/Hac/Academy/Bug Bounty/Hacking Wordpess/2_Enumeration/10_WPScan Enumeration  ✔  06:30:33
		╰─ cat wp_scan_ap.txt
		_______________________________________________________________
		         __          _______   _____
		         \ \        / /  __ \ / ____|
		          \ \  /\  / /| |__) | (___   ___  __ _ _ __ ®
		           \ \/  \/ / |  ___/ \___ \ / __|/ _` | '_ \
		            \  /\  /  | |     ____) | (__| (_| | | | |
		             \/  \/   |_|    |_____/ \___|\__,_|_| |_|
		
		         WordPress Security Scanner by the WPScan Team
		                         Version 3.8.25
		       Sponsored by Automattic - https://automattic.com/
		       @_WPScan_, @ethicalhack3r, @erwan_lr, @firefart
		_______________________________________________________________
		
		[+] URL: http://94.237.56.188:55028/ [94.237.56.188]
		[+] Started: Tue Dec 26 06:26:31 2023
		
		Interesting Finding(s):
		
		[+] Headers
		 | Interesting Entry: Server: nginx
		 | Found By: Headers (Passive Detection)
		 | Confidence: 100%
		
		[+] XML-RPC seems to be enabled: http://94.237.56.188:55028/xmlrpc.php
		 | Found By: Direct Access (Aggressive Detection)
		 | Confidence: 100%
		 | References:
		 |  - http://codex.wordpress.org/XML-RPC_Pingback_API
		 |  - https://www.rapid7.com/db/modules/auxiliary/scanner/http/wordpress_ghost_scanner/
		 |  - https://www.rapid7.com/db/modules/auxiliary/dos/http/wordpress_xmlrpc_dos/
		 |  - https://www.rapid7.com/db/modules/auxiliary/scanner/http/wordpress_xmlrpc_login/
		 |  - https://www.rapid7.com/db/modules/auxiliary/scanner/http/wordpress_pingback_access/
		
		[+] WordPress readme found: http://94.237.56.188:55028/readme.html
		 | Found By: Direct Access (Aggressive Detection)
		 | Confidence: 100%
		
		[+] Upload directory has listing enabled: http://94.237.56.188:55028/wp-content/uploads/
		 | Found By: Direct Access (Aggressive Detection)
		 | Confidence: 100%
		
		[+] The external WP-Cron seems to be enabled: http://94.237.56.188:55028/wp-cron.php
		 | Found By: Direct Access (Aggressive Detection)
		 | Confidence: 60%
		 | References:
		 |  - https://www.iplocation.net/defend-wordpress-from-ddos
		 |  - https://github.com/wpscanteam/wpscan/issues/1299
		
		[+] WordPress version 5.1.6 identified (Insecure, released on 2020-06-10).
		 | Found By: Rss Generator (Passive Detection)
		 |  - http://94.237.56.188:55028/feed/, <generator>https://wordpress.org/?v=5.1.6</generator>
		 |  - http://94.237.56.188:55028/comments/feed/, <generator>https://wordpress.org/?v=5.1.6</generator>
		
		[+] WordPress theme in use: ben_theme
		 | Location: http://94.237.56.188:55028/wp-content/themes/ben_theme/
		 | Readme: http://94.237.56.188:55028/wp-content/themes/ben_theme/readme.txt
		 | Style URL: http://94.237.56.188:55028/wp-content/themes/ben_theme/style.css?ver=5.1.6
		 | Style Name: Transportex
		 | Style URI: https://themeansar.com/free-themes/transportex/
		 | Description: Transportex is a transport, logistics & home movers WordPress theme with focus on create online transport logistics, truck, trucking, shipment, fleet, flat mover, moving company, shipping, warehouse, delivery, freight services, corporate, showcase,Air Freight, Sea Freight, Road Freight, Logistics Works, tracking, carrier, transport logistics, delivery, Routes, Warehousing, overland network, responsive creative portfolio, package, storage, multipurpose business, Transportex offers grid pattern, three different tile / grid blog layouts, page transitions and distinctive typography. It also includes easy to use and fast page builder siteorigin. Cargo adapts to every device, from smartphones and tablets to desktops. It comes with free updates and free support by our highly acclaimed team. demo at https://themeansar.com/themes/transportex-pro/
		 | Author: Themeansar
		 | Author URI: https://themeansar.com/
		 | License: GNU General Public License v3 or later
		 | License URI: http://www.gnu.org/licenses/gpl.html
		 | Tags: two-columns, three-columns, left-sidebar, right-sidebar, translation-ready, custom-background, custom-logo, featured-images, footer-widgets, full-width-template, blog
		 | Text Domain: transportex
		 |
		 | Found By: Css Style In Homepage (Passive Detection)
		 | Confirmed By: Css Style In 404 Page (Passive Detection)
		 |
		 | Version: 1.6.7 (80% confidence)
		 | Found By: Style (Passive Detection)
		 |  - http://94.237.56.188:55028/wp-content/themes/ben_theme/style.css?ver=5.1.6, Match: 'Version: 1.6.7'
		
		
		[i] Plugin(s) Identified:
		
		[+] mail-masta
		 | Location: http://94.237.56.188:55028/wp-content/plugins/mail-masta/
		 | Latest Version: 1.0 (up to date)
		 | Last Updated: 2014-09-19T07:52:00.000Z
		 |
		 | Found By: Urls In Homepage (Passive Detection)
		 | Confirmed By: Urls In 404 Page (Passive Detection)
		 |
		 | Version: 1.0 (80% confidence)
		 | Found By: Readme - Stable Tag (Aggressive Detection)
		 |  - http://94.237.56.188:55028/wp-content/plugins/mail-masta/readme.txt
		
		[+] photo-gallery
		 | Location: http://94.237.56.188:55028/wp-content/plugins/photo-gallery/
		 | Last Updated: 2023-12-21T15:09:00.000Z
		 | [!] The version is out of date, the latest version is 1.8.19
		 |
		 | Found By: Urls In Homepage (Passive Detection)
		 | Confirmed By: Urls In 404 Page (Passive Detection)
		 |
		 | Version: 1.5.34 (100% confidence)
		 | Found By: Query Parameter (Passive Detection)
		 |  - http://94.237.56.188:55028/wp-content/plugins/photo-gallery/css/jquery.mCustomScrollbar.min.css?ver=1.5.34
		 |  - http://94.237.56.188:55028/wp-content/plugins/photo-gallery/css/styles.min.css?ver=1.5.34
		 |  - http://94.237.56.188:55028/wp-content/plugins/photo-gallery/js/jquery.mCustomScrollbar.concat.min.js?ver=1.5.34
		 |  - http://94.237.56.188:55028/wp-content/plugins/photo-gallery/js/scripts.min.js?ver=1.5.34
		 | Confirmed By:
		 |  Readme - Stable Tag (Aggressive Detection)
		 |   - http://94.237.56.188:55028/wp-content/plugins/photo-gallery/readme.txt
		 |  Readme - ChangeLog Section (Aggressive Detection)
		 |   - http://94.237.56.188:55028/wp-content/plugins/photo-gallery/readme.txt
		
		[+] wp-google-places-review-slider
		 | Location: http://94.237.56.188:55028/wp-content/plugins/wp-google-places-review-slider/
		 | Last Updated: 2023-11-12T18:03:00.000Z
		 | [!] The version is out of date, the latest version is 13.1
		 |
		 | Found By: Urls In Homepage (Passive Detection)
		 | Confirmed By: Urls In 404 Page (Passive Detection)
		 |
		 | Version: 6.1 (80% confidence)
		 | Found By: Readme - Stable Tag (Aggressive Detection)
		 |  - http://94.237.56.188:55028/wp-content/plugins/wp-google-places-review-slider/README.txt
		
		[!] No WPScan API Token given, as a result vulnerability data has not been output.
		[!] You can get a free API token with 25 daily requests by registering at https://wpscan.com/register
		
		[+] Finished: Tue Dec 26 06:26:54 2023
		[+] Requests Done: 37
		[+] Cached Requests: 6
		[+] Data Sent: 9.594 KB
		[+] Data Received: 280.856 KB
		[+] Memory used: 250.246 MB
		[+] Elapsed time: 00:00:22
		
		```


