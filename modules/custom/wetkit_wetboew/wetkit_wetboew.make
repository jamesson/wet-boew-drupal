; WetKit Web Usability Makefile

api = 2
core = 7.x

; Tailor app for WetKit

projects[advanced_help][version] = 1.0
projects[advanced_help][subdir] = contrib

projects[admin_menu][version] = 3.x-dev
projects[admin_menu][subdir] = contrib
projects[admin_menu][download][type] = git
projects[admin_menu][download][revision] = ed6295c
projects[admin_menu][download][branch] = 7.x-3.x
projects[admin_menu][patch][1772766] = http://drupal.org/files/admin_menu_toolbar_ctools_automodal-1772766_01.patch

projects[boxes][version] = 1.0
projects[boxes][subdir] = contrib

projects[context][version] = 3.0-beta2
projects[context][subdir] = contrib

projects[custom_formatters][version] = 2.2
projects[custom_formatters][subdir] = contrib
projects[custom_formatters][type] = module
projects[custom_formatters][download][type] = git
projects[custom_formatters][download][revision] = 08bcc00
projects[custom_formatters][download][branch] = 7.x-2.x
projects[custom_formatters][patch][1721294] = http://drupal.org/files/no_makefile-1721294-1.patch

projects[diff][version] = 2.x-dev
projects[diff][subdir] = contrib
projects[diff][type] = module
projects[diff][download][type] = git
projects[diff][download][revision] = 27c9185
projects[diff][download][branch] = 7.x-2.x
projects[diff][patch][1285090] = http://drupal.org/files/diff-hide-show-markup-372957-93.patch

projects[fences][version] = 1.0
projects[fences][subdir] = contrib
projects[fences][type] = module
projects[fences][download][type] = git
projects[fences][download][revision] = d9ca337
projects[fences][download][branch] = 7.x-1.x
projects[fences][patch][1561244] = http://drupal.org/files/undefined-index-1561244-7.patch

projects[jquery_update][version] = 2.x-dev
projects[jquery_update][subdir] = contrib
projects[jquery_update][type] = module
projects[jquery_update][download][type] = git
projects[jquery_update][download][revision] = 5d2a4b2
projects[jquery_update][download][branch] = 7.x-2.x
projects[jquery_update][patch][1524944] = http://drupal.org/files/allow-different-version-for-admin-pages-1524944-6.patch

projects[linkchecker][version] = 1.x-dev
projects[linkchecker][type] = module
projects[linkchecker][subdir] = contrib
projects[linkchecker][download][type] = git
projects[linkchecker][download][revision] = a920eb0
projects[linkchecker][download][branch] = 7.x-1.x

projects[password_policy][version] = 1.0-rc3
projects[password_policy][subdir] = contrib

; Tailor WetKit Theme for WetKit

projects[adaptivetheme][version] = 3.1

projects[rubik][version] = 4.x-dev
projects[rubik][type] = theme
projects[rubik][download][type] = git
projects[rubik][download][revision] = e01c3d5
projects[rubik][download][branch] = 7.x-4.x
projects[rubik][patch][1623510] = http://drupal.org/files/1623510-6-rubik-widget-styling.patch
;projects[rubik][patch][1635790] = http://drupal.org/files/rubik-form-file-input-styling.patch
projects[rubik][patch][1645148] = http://drupal.org/files/rubik-ie9-box-sizing-1645148-1.patch
projects[rubik][patch][944534] = http://drupal.org/files/rubik-table_input_fluid-944534-5.patch
projects[rubik][patch][1445890] = http://drupal.org/files/editor-link-covered-1445890-2.patch
projects[rubik][patch][1003820] = http://drupal.org/files/1003820-rubik-5.patch
projects[rubik][patch][1440054] = http://drupal.org/files/patch_commit_96121294ba3b.patch

projects[tao][version] = 3.0-beta4

; MODIFICATION

projects[ds][version] = 2.0-beta1
projects[ds][subdir] = contrib

projects[rules][version] = 2.2
projects[rules][subdir] = contrib

projects[menu_views][version] = 1.3
projects[menu_views][subdir] = contrib

projects[better_formats][version] = 1.x-dev
projects[better_formats][subdir] = contrib
projects[better_formats][type] = module
projects[better_formats][download][type] = git
projects[better_formats][download][revision] = 9106bcf
projects[better_formats][download][branch] = 7.x-1.x

libraries[wet-boew][download][type] = git
libraries[wet-boew][download][url] = https://github.com/wet-boew/wet-boew.git