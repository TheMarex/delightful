                         Delightful widgets for Awesome

   This is Delightful, a set of widgets for [1]Awesome window manager.

   Delightful home page is at
   [2]http://solitudo.net/software/awesome/delightful/. Also Delightful
   page at [3]Awesome wiki is available at
   [4]https://awesome.naquadah.org/wiki/Delightful. Screenshots showing
   Delightful in action are available at
   [5]https://awesome.naquadah.org/wiki/Glossy_theme and
   [6]https://awesome.naquadah.org/wiki/Darklooks_theme.

Why?

   Why another widget system for Awesome, you ask? We already have
   [7]Vicious, [8]Wicked, [9]Obvious, and [10]many others.

Justifications

   That is a valid question, let me try elaborating why Delightful was
   created.

  Shiny colors

   Your average Awesome widget is quite dull. Some might consider that a
   feature. In this case, Delightful is probably not for you. Delightful
   try to add some "bling" to the widgets. Not un-needed "bling" but
   something useful. Many Delightful widgets provide a dynamically updated
   icon along with the widget text. The icon might indicate the sound
   volume or battery level. Some of the widgets use [11]Naughty based
   pop-ups and notifications to provide useful, additional information
   that doesn't fit the Awesome wibox. Tooltips are used always when it
   makes sense.

   You might find Delightful widgets to have resemblance to some of the
   popular GNOME applets. This is not coincidental. Whether you find it a
   good or bad thing is up to you.

  Configurable

   Delightful widgets are also very configurable outside of the widget
   code. Besides usual configurable attributes, such as location where to
   display weather information or which network devices to exclude from
   monitoring, you also can tinker about every widget parameter, such as
   the widget update interval, from your Awesome rc.lua without having to
   edit the widget code. See the configuration section below for more
   information about configuring Delightful widgets and the themeing
   section about changing widget's appearance.

   Important note! In order to maintain speedy startup, you have to alter
   the theme you're using when using Delightful widgets with icons. See
   the themeing section below for more info.

  Leveraging existing functionality

   Delightful doesn't try to re-invent the wheel. Widgets depend heavily
   on [12]Vicious widget library. A few of the widgets just extend an
   existing Vicious widget by providing an icon and widget data display
   configuration for the Vicious widget used under the hoods. Some of the
   widgets provide features not available in existing Vicious widgets by
   implementing the Vicious widget interface and then add "the bling" on
   top of that.

                                Included widgets

   Delightful features the following widgets.

Battery widget

   delightful.widget.battery shows a battery indicator as an icon and a
   progress bar. Extends vicious.widgets.bat Vicious widget.

CPU widget

   delightful.widget.cpu displays horizontal usage trend graph of all the
   CPUs combined. Extends vicious.widgets.cpu Vicious widget.

Date and time widget

   Shows current date and time. When mouse cursor hovers over the widget,
   calendar is displayed as a popup. You can navigate between months by
   using mouse scroll wheel.

IMAP widget

   delightful.widget.imap monitors one or more IMAP accounts for incoming
   messages. Multiple mailboxes can be monitored on each account. Number
   of unread messages in each monitored mailbox is displayed in the
   widget. When new mail arrives in one of the monitored mailboxes, some
   details about the message is shown in a popup. When mouse cursor hovers
   over the widget, details about each mailbox is shown in a popup. Widget
   icon indicates the status whether there are some unread mail in the
   monitored mailboxes. The IMAP widget implements the Vicious widget
   interface.

Memory widget

   delightful.widget.memory displays a progress bar indicating current
   memory and swap usage. Extends vicious.widgets.mem Vicious widget.

Network widget

   delightful.widget.network displays download and upload speeds of
   selected network devices of the system. An icon indicates the type of
   the device (wired, wireless or dialup). Extends vicious.widgets.net
   Vicious widget.

PulseAudio widget

   delightful.widget.pulseaudio shows a PulseAudio mixer indicator as an
   icon and a progress bar. Mouse clicks and scroll wheel actions can used
   to perform various mixer-related functions such as muting the device
   and turn volume up and down. PulseAudio widget implements the Vicious
   widget interface.

Weather widget

   delightful.widget.weather monitors weather status of given locations.
   Widget displays current temperature and an icon indicating the current
   weather condition. Icon is updated dynamically according to the weather
   and time changes. If the weather is clear, the icon indicates whether
   it's day or night in the monitored location. When mouse cursor hovers
   over the widget, details about the weather is shown in a popup. Weather
   widget implements the Vicious widget interface.

                                  Dependencies

   All widgets except the Date and time widget require [13]Vicious. A
   tested and found-to-be-working version of Vicious is provided in under
   the submodules/vicious directory of the Delightful Git tree. See the
   downloading and install sections below for more information about the
   bundled Vicious. Using your existing Vicious installation or manually
   cloning the latest Vicious sources from the [14]Git tree will most
   likely work, too.

   All widgets except the Date and time widget require
   [15]awesome-freedesktop for icon support. A tested and
   found-to-be-working version of awesome-freedesktop is provided in under
   the submodules/awesome-freedesktop directory of the Delightful Git
   tree. See the downloading and install sections below for more
   information about the bundled awesome-freedesktop. Using your existing
   awesome-freedesktop installation or manually cloning the latest
   awesome-freedesktop sources from the [16]Git tree will most likely
   work, too.

   All widgets except the Date and time widget can use icons. Using of
   icons is not required, but highly recommended. See the section about
   themeing for more info. On Debian/Ubuntu systems you can install the
   package gnome-icon-theme in order to get the common icons installed and
   additionally the package sensors-applet if you're planning to use the
   CPU or Memory widgets and the package libgweather-common if you're
   planning to use the Weather widget.

   IMAP widget requires [17]imap.lua. A tested and found-to-be-working
   version of imap.lua is provided in under the submodules/imap directory
   of the Delightful Git tree. See the downloading and install sections
   below for more information about the bundled imap.lua. imap.lua
   requires [18]LuaSocket and [19]LuaSec. On Debian/Ubuntu systems you can
   install the packages liblua5.1-socket2 and liblua5.1-sec1 in order to
   get LuaSocket and LuaSec installed.

   Weather widget requires [20]Lua weather library and [21]Lua METAR
   parser. A tested and found-to-be-working versions of these modules are
   provided under the submodules/weatherlib and submodules/metar
   directories of the Delightful Git tree. See the downloading and install
   sections below for more information about these modules. The METAR
   parser requires [22]LuaSocket. On Debian/Ubuntu systems you can install
   the package liblua5.1-socket2 in order to get LuaSocket installed.

   Weather widget can also use GWeather XML location datafile to configure
   weather report locations using city names instead of weather station
   code. See the configuring section below for more information. If using
   this feature, also [23]LuaExpat needs to be installed. On Debian/Ubuntu
   systems you can install the packages libgweather-common and
   liblua5.1-expat0 in order to get GWeather XML location datafile and
   LuaExpat installed. Using GWeather support is highly recommended.

   Calendar widget requires [24]calendar2.lua. The module is included in
   this distribution. See the install section below for more information.

                                  Downloading

   Delightful can be downloaded by cloning the public Git repository at
   git://scm.solitudo.net/delightful.git. Gitweb interface is available at
   [25]http://scm.solitudo.net/gitweb/public/delightful.git.

                                  Installation

    1. Clone the Delightful Git tree
          + $ git clone git://scm.solitudo.net/delightful.git
    2. Download the submodules, i.e. bundled dependencies
          + $ git submodule init
          + $ git submodule update
    3. Copy Delightful under your Awesome configuration directory
          + $ cp -a delightful/delightful ~/.config/awesome
    4. If you don't have an existing Vicious installation in your Awesome
       setup, copy Vicious under your Awesome configuration directory
          + $ cp -a delightful/submodules/vicious ~/.config/awesome
    5. If you don't have an existing awesome-freedesktop installation in
       your Awesome setup, copy awesome-freedesktop under your Awesome
       configuration directory
          + $ cp -a delightful/submodules/awesome-freedesktop/freedesktop
            ~/.config/awesome
    6. If you're planning to use the IMAP widget, copy the imap.lua module
       in your Awesome configuration directory
          + $ cp delightful/submodules/imap/lua/imap.lua/imap.lua
            ~/.config/awesome
    7. If you're planning to use the Weather widget, copy the Lua weather
       library and Lua METAR parser in your Awesome configuration
       directory
          + $ cp delightful/submodules/weatherlib/src/weatherlib.lua
            ~/.config/awesome
          + $ cp delightful/submodules/metar/src/metar.lua
            ~/.config/awesome
    8. If you're planning to use the Date and time widget, copy the
       calendar module in your Awesome configuration directory
          + $ cp delightful/calendar2.lua ~/.config/awesome
    9. If running Debian/Ubuntu system, install the dependency for common
       icons
          + $ apt-get install gnome-icon-theme
   10. If running Debian/Ubuntu system, and planning to use the CPU or
       Memory widgets, install the dependency for icons
          + $ apt-get install sensors-applet
   11. If running Debian/Ubuntu system, and planning to use the IMAP
       widget, install the dependency packages
          + $ apt-get install liblua5.1-socket2 liblua5.1-sec1
   12. If running Debian/Ubuntu system, and planning to use the Weather
       widget, install the dependency packages
          + $ apt-get install libgweather-common liblua5.1-socket2

                                 Configuration

   This section documents the commonly used configuration options for each
   widget. For full list of available configuration options for each
   widget, see the comments at top of the each widget's source file under
   the directory delightful/widgets.

   Configuration options are defined as Lua tables with keys being the
   configuration option name listed below and value being the
   configuration value. See the section about using in Awesome for info on
   how to actually pass the configuration to the widgets.

Battery widget

     * battery
          + Battery name under the directory /sys/class/power_supply/.
            Defaults to BAT1. You probably don't have to change this.

CPU widget

   Default configuration should work for most people.

Date and time widget

   No configuration options available at all.

IMAP widget

   You can configure multiple IMAP accounts to be monitored for messages.
   Each account can monitor multiple mailboxes. Each account needs to be
   given as a Lua table entry. For each account entry the most interesting
   configuration options are the following.
     * user
          + User name of the IMAP account, mandatory
     * password
          + Password of the IMAP account, mandatory
     * host
          + Host name or IP address of the IMAP server, mandatory
     * port
          + Port of the IMAP server. 143 by default if SSL disabled, 993
            if SSL enabled
     * ssl
          + true or false to enable or disable SSL for the IMAP
            connection. Note that only IMAPS is supported, not IMAP with
            STARTTLS. No SSL support by default.
     * mailboxes
          + A table defining which mailboxes to monitor. Defaults to INBOX
            so not needed to be defined is you only want to monitor the
            inbox.

Memory widget

   Default configuration should work for most people.

Network widget

   Default configuration should work for most people. But if the widget
   displays status for unwanted network devices, the following
   configuration option is handy.
     * excluded_devices
          + A table of [26]Lua patterns that match network devices that
            are not to be monitored. For instance, if you don't want to
            see the idle interface eth1, you could use the pattern ^eth1$.

PulseAudio widget

   Default configuration should work for most people. But if the widget
   displays volume mixer for unwanted audio devices, the following
   configuration option is handy.
     * sink_nums
          + A table of integers that reprsents the PulseAudio sink numbers
            to be used. To find out the sink number(s) you want to use,
            run command pacmd list-sinks and examine the output. Each line
            with the content * index: <number> shows a possible sink
            number that you can use in the sink_nums configuration option.

Weather widget

   It is assumed that GWeather XML location datafile is available. See the
   source file delightful/widgets/weather.lua for more information about
   configuration if you're not going to be using GWeather XML location
   datafile support.

   You can configure multiple locations for weather monitoring. Each
   location needs to be given as a Lua table entry. For each location
   entry the most interesting configuration options are the following.
     * city
          + The city and optional country to monitor as listed in the
            GWeather XML location datafile. The format for full entry is
            <country name>, <city name>, for example United Kingdom,
            London. For London, UK, you have to use the full format since
            the GWeather XML location datafile contains many cities named
            London and the first matching city is used. If the city name
            is globally unique, it's safe to use the simple format <city
            name>. For example, to monitor the capital of Finland, you can
            just use Helsinki as there's no two cities named Helsinki in
            the world.

   This is really all that is needed if you're happy to use European style
   units. If you want to display units commonly used in the US or
   elsewhere, you can additionally use the following configuration
   options.
     * temperature_unit
          + The unit to use when displaying temperatures. Defaults to c
            for Celcius, other possible value is f for Fahrenheit.
     * wind_speed_unit
          + The unit to use when displaying wind speed. Defaults to ms for
            meters per second, other possible values are kmh for
            kilometers per hour, mph for miles per hour and kn for knots.
     * pressure_unit
          + The unit to use when displaying air pressure. Defaults to hpa
            for hectopascals, other possible values are atm for standard
            atmosphere and inhg for inches of Mercury.
     * visibility_unit
          + The unit to use when visibility distance. Defaults to m for
            meters, other possible values are km kilometers, ft for feet,
            yd for yards and mi for miles.

Configuration options common to all widgets

   Well, all but the Date and time widget.
     * update_interval
          + How often the widget data is being updated. Default varies for
            each widget from CPU widget's one second to Weather widget's
            20 minutes. Most likely the default is OK for each widget.
     * no_icon
          + true or false to disable or enable showing of widget icons.
            Default is to show icons for all widgets.

                                    Themeing

   Delightful widgets can use various aspects of the current [27]Beautiful
   theme, though Delightful widgets should work with any unmodified theme.
   However, when using unmodified themes, be aware of the default icon
   lookup related performance notes below.

   See the themes at [28]my Awesome themes page for examples of themes
   with full Delightful support.

Icons

   All widgets except the Date and time widget use various icons. For full
   list of available themable icons for each widget, see the comments at
   top of the each widget's source file under the directory
   delightful/widgets.

   If an icon is not explicitly defined in the theme, default icon file
   name is resolved using [29]awesome-freedesktop routines. Typically this
   results in dozens if not hundreds of file accesses per icon when trying
   to locate the icon file. If using many widgets and especially if using
   the Weather widget, which uses exactly one hundred icons, the automatic
   lookup of icons can take tens of seconds even on a fast machine. This
   causes Awesome to stall for the whole time icons are being looked up.
   So in order to get normal speedy startup, it's essential that icon
   names are explicitly defined in the theme being used! See the themes
   mentioned above for examples how to "delightfulify" your themes.

   While icons are highly recommended, they are not mandatory. You can
   disable showing of icons by two means. Either for each widget, set the
   no_icon configuration option explained above to true or just don't
   install the packages providing the default icons that are tried to
   lookup. The no_icon way is recommended since this way you don't get the
   performance penalty with the default icon lookup explained above.

Text color

   Battery, CPU, Memory, and PulseAudio widgets can use the following
   colors defined in the theme to color bars, graphs, and text.
     * bg_widget
          + Widget background and border color, fallback to color
            bg_normal if bg_widget not defined
     * fg_widget
          + Widget foreground color, fallback to color fg_normal if
            fg_widget not defined
     * fg_center_widget
          + Middle part of the widget gradient color, fallback to color
            fg_widget and fg_normal if fg_center_widget not defined
     * fg_end_widget
          + End part of the widget gradient color, fallback to color
            fg_widget and fg_normal if fg_end_widget not defined

Font

   IMAP and Weather widgets use the following font.
     * delightful_monospace_font
          + Font used when rendering text to popups. The setting should
            refer to a [30]monospaced font. Fallback to monospace if
            delightful_monospace_font not defined.

                                Using in Awesome

   This section shows what you need to add to your Awesome configuration
   in order to get Delightful widgets added to your Awesome desktop. In
   this sample, default configuration for Awesome 3.4.3 as shipped in
   Ubuntu 10.04 lucid is used. I'm sure you can apply this to newer
   default configurations or integrate as part of your non-default
   configuration. Of course put something meaningful in the IMAP widget
   configuration, remove unwanted widgets and so on.

   In rc.lua, just before the layouts configuration add the following
   section
     __________________________________________________________________

-- Delightful widgets
require('delightful.widgets.battery')
require('delightful.widgets.cpu')
require('delightful.widgets.datetime')
require('delightful.widgets.imap')
require('delightful.widgets.memory')
require('delightful.widgets.network')
require('delightful.widgets.pulseaudio')
require('delightful.widgets.weather')

-- Which widgets to install?
-- This is the order the widgets appear in the wibox.
install_delightful = {
    delightful.widgets.network,
    delightful.widgets.cpu,
    delightful.widgets.memory,
    delightful.widgets.weather,
    delightful.widgets.imap,
    delightful.widgets.battery,
    delightful.widgets.pulseaudio,
    delightful.widgets.datetime
}

-- Widget configuration
delightful_config = {
    [delightful.widgets.cpu] = {
        command = 'gnome-system-monitor',
    },
    [delightful.widgets.imap] = {
        {
            user      = 'myuser',
            password  = 'mypassword',
            host      = 'mail.example.com',
            ssl       = true,
            mailboxes = { 'INBOX', 'awesome' },
            command   = 'evolution -c mail',
        },
    },
    [delightful.widgets.memory] = {
        command = 'gnome-system-monitor',
    },
    [delightful.widgets.weather] = {
        {
            city = 'Helsinki',
            command = 'gnome-www-browser http://ilmatieteenlaitos.fi/saa/Helsink
i',
        },
    },
    [delightful.widgets.pulseaudio] = {
        mixer_command = 'gnome-volume-control',
    },
}

-- Prepare the container that is used when constructing the wibox
local delightful_container = { widgets = {}, icons = {} }
if install_delightful then
    for _, widget in pairs(awful.util.table.reverse(install_delightful)) do
        local config = delightful_config and delightful_config[widget]
        local widgets, icons = widget:load(config)
        if widgets then
            if not icons then
                icons = {}
            end
            table.insert(delightful_container.widgets, awful.util.table.reverse(
widgets))
            table.insert(delightful_container.icons,   awful.util.table.reverse(
icons))
        end
    end
end
     __________________________________________________________________

   Then at the end of wibox creation, delete the lines
     __________________________________________________________________

-- Add widgets to the wibox - order matters
mywibox[s].widgets = {
    {
        mylauncher,
        mytaglist[s],
        mypromptbox[s],
        layout = awful.widget.layout.horizontal.leftright
    },
    mylayoutbox[s],
    mytextclock,
    s == 1 and mysystray or nil,
    mytasklist[s],
    layout = awful.widget.layout.horizontal.rightleft
}
     __________________________________________________________________

   and replace with
     __________________________________________________________________

local widgets_front = {
    {
        mylauncher,
        mytaglist[s],
        mypromptbox[s],
        layout = awful.widget.layout.horizontal.leftright
    },
    mylayoutbox[s],
}
local widgets_middle = {}
for delightful_container_index, delightful_container_data in pairs(delightful_co
ntainer.widgets) do
    for widget_index, widget_data in pairs(delightful_container_data) do
        table.insert(widgets_middle, widget_data)
        if delightful_container.icons[delightful_container_index] and delightful
_container.icons[delightful_container_index][widget_index] then
            table.insert(widgets_middle, delightful_container.icons[delightful_c
ontainer_index][widget_index])
        end
    end
end
local widgets_end = {
    s == 1 and mysystray or nil,
    mytasklist[s],
    layout = awful.widget.layout.horizontal.rightleft
}
mywibox[s].widgets = awful.util.table.join(widgets_front, widgets_middle, widget
s_end)
     __________________________________________________________________

   and you should be done.

   This sample Delightful setup is also available as a patch file
   awesome-3.4.3-delightful-sample-configuration.diff in the Delightful
   distribution. The patch is against the stock Awesome 3.4.3 rc.lua.

                                  Contributing

   If you would like to contribute patches or new widgets, you can contact
   the author. See contact information below.

   PS. A Git tree to pull from would be a joy.

                            Copyright and licensing

   Copyright: © 2011 Tuomas Jormola [31]tj@solitudo.net
   [32]http://solitudo.net

   Licensed under the terms of the [33]GNU General Public License Version
   2.0. License terms are included in the file COPYING.

   calendar2.lua included in this distribution was created by Bernd
   Zeimetz [34]bernd@bzed.de and modified by Marc Dequènes
   [35]Duck@DuckCorp.org. calendar2.lua is released to public domain.

References

   1. http://awesome.naquadah.org/
   2. http://solitudo.net/software/awesome/delightful/
   3. https://awesome.naquadah.org/wiki/
   4. https://awesome.naquadah.org/wiki/Delightful
   5. https://awesome.naquadah.org/wiki/Glossy_theme
   6. https://awesome.naquadah.org/wiki/Darklooks_theme
   7. https://awesome.naquadah.org/wiki/Vicious
   8. https://awesome.naquadah.org/wiki/Wicked
   9. https://awesome.naquadah.org/wiki/Obvious
  10. https://awesome.naquadah.org/wiki/Category:Widgets
  11. https://awesome.naquadah.org/wiki/Naughty
  12. https://awesome.naquadah.org/wiki/Vicious
  13. https://awesome.naquadah.org/wiki/Vicious
  14. http://git.sysphere.org/vicious/
  15. https://github.com/terceiro/awesome-freedesktop
  16. https://github.com/terceiro/awesome-freedesktop.git
  17. https://github.com/dmj/misc/tree/master/lua/imap.lua
  18. http://www.cs.princeton.edu/~diego/professional/luasocket/
  19. http://www.inf.puc-rio.br/~brunoos/luasec/
  20. http://solitudo.net/software/lua/weatherlib/
  21. http://solitudo.net/software/lua/metar/
  22. http://www.cs.princeton.edu/~diego/professional/luasocket/
  23. http://www.keplerproject.org/luaexpat/
  24. https://awesome.naquadah.org/wiki/Calendar_widget#Module_for_3.4
  25. http://scm.solitudo.net/gitweb/public/delightful.git
  26. http://www.lua.org/manual/5.1/manual.html#5.4.1
  27. https://awesome.naquadah.org/wiki/Beautiful
  28. http://solitudo.net/software/awesome/themes/
  29. https://github.com/terceiro/awesome-freedesktop
  30. http://en.wikipedia.org/wiki/Monospaced_font
  31. mailto:tj@solitudo.net
  32. http://solitudo.net/
  33. http://www.gnu.org/licenses/gpl-2.0.html
  34. mailto:bernd@bzed.de
  35. mailto:Duck@DuckCorp.org
