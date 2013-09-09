var SLIDE_CONFIG = {
  // Slide settings
  settings: {
    title: 'GDG Bremen September 2013',
    subtitle: "Stammtisch",
    useBuilds: true, // Default: true. False will turn off slide animation builds.
    usePrettify: true, // Default: true
    enableSlideAreas: true, // Default: true. False turns off the click areas on either slide of the slides.
    enableTouch: true, // Default: true. If touch support should enabled. Note: the device must support touch.
    //analytics: 'UA-XXXXXXXX-1', // TODO: Using this breaks GA for some reason (probably requirejs). Update your tracking code in template.html instead.
    favIcon: 'images/gdg-bremen/GDG_Bremen_Q4_tiny.png',
    fonts: [
      'Open Sans:regular,semibold,italic,italicsemibold',
      'Source Code Pro'
    ],
    theme: ['gdgbremen'], // Add your own custom themes or styles in /theme/css. Leave off the .css extension.
  },

  // Author information
  presenters: [{
    name: 'Steve Liedtke',
	//company: 'neusta software development GmbH',
    gplus: 'https://gplus.to/SteveLiedtke',
    twitter: '@dragondagda',
	www: 'http://www.steveliedtke.de',
    github: 'http://github.com/dragondagda'
  }]
};

