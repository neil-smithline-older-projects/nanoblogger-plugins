# Nanoblogger Plugin: Github Sidebar

########################################################################
###                     Nanoblogger Plugin
###
### This plugin provides a sidebar item with your recent Github
### activity. See http://bit.ly/ISTJ1M for an example.
###
### The sidebar data is produced and formatted by the courtesy of:
###         http://githubbadge.appspot.com.
###
### To use this plugin, save this file to
###         <blog-root>/plugins/github_sidebar.sh
###
### Add the following lines to your blog.conf file.
###
###         # --- Plugin: Github Sidebar Preferences ---
###         #
###         # set the required Github username.
###         # e.g. GITHUB_USER="joe-user"
###         GITHUB_USER="your-github-username"
###
###         # set the optional Github sidebar title.
###         # e.g. GITHUB_TITLE="My Repos!"
###
### Replace "your-github-username" with your Github username.
###
### Add "$SIDEBAR_GITHUB" to appropriate files in your template
### directory. main_index.htm is the most likely location.
###
### Please note that while most other NB plugins only contain data for
### the section and leave the HTML framing code to the template.
### Because this plugin requires special XSS style data, the data as
### well as the HTML code to frame it are included.
###
### If you need to you can change the XSS directly in this plugin.
###
### Github Sidebar Plugin for Nanoblogger by Neil Smithline
### (http://bit.ly/yGGszW) is licensed under a Creative Commons
### Attribution-ShareAlike 3.0 Unported License (http://bit.ly/JXHIWg)
########################################################################

GITHUB_TITLE="My Projects"


SIDEBAR_GITHUB='
       <!-- FILE: github_sidebar.sh -->
        <div class="sideitem-githubbadge sideitem">
          <div class="sidetitle">
            '$GITHUB_TITLE'
          </div> <!-- sidetitle -->
          <div class="side" style="padding: 0;">
            <iframe src="http://githubbadge.appspot.com/badge/'$GITHUB_USER'?s=1" style="border:0; height: 142px;width: 200px;overflow: hidden;"></iframe>
          </div> <!-- sidetitle -->
        </div> <!-- sideitem-githubbadge -->
'
