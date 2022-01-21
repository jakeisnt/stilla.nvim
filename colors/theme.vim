lua << EOF
package.loaded['theme'] = nil
package.loaded['theme.util'] = nil
package.loaded['theme.colors'] = nil
package.loaded['theme.theme'] = nil
package.loaded['theme.functions'] = nil

require('theme').set()
EOF
