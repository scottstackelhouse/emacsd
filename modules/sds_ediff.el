(setq ediff-split-window-function (if (> (frame-width) 120)
                                      'split-window-horizontally
                                    'split-window-vertically))
