# Статические страницы

Хотя фреймворк Ruby On Rails разработан для создания динамических веб-сайтов, он также отлично справляется с созданием статических страниц.

Создадим домашнуюю страницу и "Обо мне", которые будут доступны по путям */* и */pages/about* соответственно.

## Ссылки

* [Routing](https://guides.rubyonrails.org/routing.html)
* [Layouts and Rendering](https://guides.rubyonrails.org/layouts_and_rendering.html)

## Задачи

### app/controllers/home_controller.rb

Сгенерируйте контроллер и экшен *index*.

```sh
bin/rails generate controller HomeController index --skip-routes
```

### config/routes.rb

Укажите корневую страницу на метод *index* контроллера *HomeController*.

### app/controllers/pages_controller.rb

Сгенерируйте контроллер и метод *show* командой:

```sh
bin/rails generate controller Pages show --skip-routes
```

### config/routes.rb

Добавьте ресурс *pages* с одним методом *show*.

### app/views/home/index.html.erb

Выведите на странице ссылку на страницу "Обо мне", используя хелпер.

### app/views/pages/show.html.erb

Добавьте на страницу рендеринг шаблона, который берется по *id* текущей страницы.

### app/views/pages/_about.html.erb

Создайте файл шаблона. Выведите ссылку на домашнюю страницу. Добавьте информацию о себе. Должна получиться следующая структура страницы:

```html
<ul>
  <li><a href="/">Home</a></li>
</ul>

<main>
    <h1>Илона Маскова</h1>
    <h2>Будущая Rails-звезда! </h2>
    <hr>
    <section>
        <h2>Ключевые навыки:</h2>
        <ul>
            <li>Ruby On Rails</li>
            <li>Ruby</li>
            <li>JavaScript</li>
        </ul>
    </section>
    <section>
        <h2>О Обо мне</h2>
        <p>...</p>
    </section>
</main>
```
