#!/usr/bin/env sh
# pulsar.html is the page body (it is also published as a claude.ai artifact, which adds its own wrapper);
# index.html is the same page as a standalone document for GitHub Pages.
cd "$(dirname "$0")" || exit 1
{
  echo '<!doctype html>'
  echo '<html lang="ru">'
  head -n 1 pulsar.html
  echo '<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">'
  echo '<meta name="description" content="Вращающаяся нейтронная звезда в WebGL и её радиоимпульсы, переведённые в звук: пять настоящих пульсаров.">'
  tail -n +2 pulsar.html
  echo '</html>'
} > index.html
