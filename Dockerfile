# Usar a imagem oficial do PHP 8 com Apache
FROM php:8.0-apache

# Instalar extensões necessárias do PHP
RUN docker-php-ext-install pdo pdo_mysql

# Copiar os arquivos do projeto para o diretório padrão do Apache
COPY . /var/www/html

# Configurar permissões
RUN chown -R www-data:www-data /var/www/html \
    && a2enmod rewrite

# Expor a porta 80 (servidor web)
EXPOSE 80
