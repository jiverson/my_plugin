# my_plugin_platform_interface

[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]

A common platform interface for the `my_plugin_platform_interface` plugin.

This interface allows platform-specific implementations of the `my_plugin_platform_interface` plugin, as well as the plugin itself, to ensure they are supporting the same interface.

# Usage

To implement a new platform-specific implementation of `my_plugin`, extend `MyPluginPlatform` with an implementation that performs the platform-specific behavior.

# Note on breaking changes

Strongly prefer non-breaking changes (such as adding a method to the interface)
over breaking changes for this package.

See [here][breaking_changes_discussion_link] for a discussion on why a less-clean interface is preferable to a breaking change.

[breaking_changes_discussion_link]: https://flutter.dev/go/platform-interface-breaking-changes
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis