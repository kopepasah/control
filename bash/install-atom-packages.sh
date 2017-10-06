#!/bin/sh

#!/bin/sh

PACKAGES="
atom-easy-jsdoc
atom-import-cost
auto-replace-in-selection
busy-signal
column-select
custom-title
docblockr
editorconfig
emmet
git-blame
goto-definition
intentions
language-markdown
language-vue
linter
linter-eslint
linter-phpcs
linter-stylelint
linter-tslint
linter-ui-default
markdown-writer
php-debug
php-twig
pigments
platformio-ide-terminal
project-manager
todo-show"

apm install $PACKAGES
