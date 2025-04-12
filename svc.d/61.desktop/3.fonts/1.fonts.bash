echo.section Installing font configuration

echo.info User font config
cp -f ./config/fonts.user.conf $GR_HOME/.fonts.conf

echo.info User fonts
cp -rf ./config/fonts $GR_HOME/.fonts

echo.info System font config
cp -f ./config/fonts.system.conf /etc/fonts/local.conf

echo.info Chowning
chown -R gr:gr $GR_HOME/.fonts.conf $GR_HOME/.fonts
