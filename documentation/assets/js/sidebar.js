(function ($, global) {

  var Sidebar = function (conf) {
    this.conf = $.extend({

      // Collapsed class
      collapsedClass: 'is-collapsed',

      // Storage key
      storageKey: '_sassdoc_sidebar_index',

      // Index attribute
      indexAttribute: 'data-slug',

      // Automatic initialization
      init: true
    }, conf || {});

    if (this.conf.init === true) {
      this.initialize();
    }
  };

  /**
   * Initialize module
   */
  Sidebar.prototype.initialize = function () {
    this.conf.nodes = $('[' + this.conf.indexAttribute + ']');

    this.load();
    this.updateDOM();
    this.bind();
  };

  /**
   * Load data from storage or create fresh index
   */
  Sidebar.prototype.load = function () {
    var index = 'localStorage' in global ?
      global.localStorage.getItem(this.conf.storageKey) :
      null;

    this.index = index ? JSON.parse(index) : this.buildIndex();
  };

  /**
   * Build a fresh index
   */
  Sidebar.prototype.buildIndex = function () {
    var index = {};
    var $item;
    var self = this;

    this.conf.nodes.each(function () {
      $item = $(this);

      index[$item.attr(self.conf.indexAttribute)] = !$item.hasClass(self.conf.collapsedClass);
    });

    return index;
  };

  /**
   * Update DOM based on index
   */
  Sidebar.prototype.updateDOM = function () {
    var item;

    for (item in this.index) {
      if (this.index[item] === false) {
        $('[' + this.conf.indexAttribute + '="' + item + '"]').next().addClass(this.conf.collapsedClass);
      }
    }
  };

  /**
   * Save index in storage
   */
  Sidebar.prototype.save = function () {
    if (!('localStorage' in global)) {
      return;
    }

    global.localStorage.setItem(this.conf.storageKey, JSON.stringify(this.index));
  };

  /**
   * Bind UI events
   */
  Sidebar.prototype.bind = function () {
    var $item;
    var slug;

    // Save index in localStorage
    global.onbeforeunload = $.proxy(function () {
      this.save();
    }, this);

    this.conf.nodes.on('click', $.proxy(function (event) {
      $item = $(event.target);
      slug = $item.attr(this.conf.indexAttribute);

      // Update index
      this.index[slug] = !this.index[slug];

      // Update DOM
      $item.next().toggleClass(this.conf.collapsedClass);
    }, this));
  };

  global.Sidebar = Sidebar;

}(window.jQuery, window));
