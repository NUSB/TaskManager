<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="ru">
    <head>
        <meta charset="utf-8">

        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">

    </head>
    <body>

        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <nav class="navbar navbar-default navbar-static-top" role="navigation">
                        <div class="navbar-header">

                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                                <span class="sr-only"></span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
                            </button> <a class="navbar-brand" href="#">Task Manager</a>
                        </div>

                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="nav navbar-nav">
                                <li class="active">
                                    <a href="#">Главная</a>
                                </li>
                                <li>
                                    <a href="#">О нас</a>
                                </li>

                            </ul>
                        </div>

                    </nav>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="row">
                                <div class="col-md-8">
                                    <h2>
                                        Главная 
                                    </h2>
                                    <p>
                                        Основная идея Task Manager это составление регулярного, ежедневного плана для достижения поставленых целей и контролировать даний процесс, путём выполнения таких шагов:
                                    <ul>
                                        <li>Постановка цели, задачи или определение своей "мечты";</li>
                                        <li>Определение текущей обстановки (финансовых и временних ресурсов);</li>
                                        <li>Разбиение глобальной задаи на несколько более лёгких подзадач;</li>
                                        <li>Ежедневное составление списка задач которые необходимо выполнить на следующий день и выполнение задач поставлених в предыдущий день;</li>
                                        <li>Промежуточный анализ выполнения задач (достижения цели). </li>
                                    </ul>
                                    Посколько для достижения любой цели необходимы некоторые ресурсы в основном это деньги и времья, а даный проект уже поможет решить проблему времени. Возникает необходимость создать интегрированый сервис для слежения за финансами в разрезе достижения поставлених целей.  
                                    Сервис слежения за финансами предполагает фиксирования промежуточных результатов разных счетов. К примеру у меня есть несколько счетов: наличные, банковская карта, мне должны, я должн и цель №1. На сервесе можно будет настроить уведомления пользователя, к при меру раз в неделю, 
                                    что неохоимо пересчитать средства и обновить дынные. Таким образом пользователь сможет следить за общей динамикой своих средств. Также счёт можно привязать к пунктам плана цели, таким образом отображение строки о финансовых ресурсых может подсвечиватся разными цветами или просто отображать сстояние при наличии или отсутствии денежных средств на счёте.	
                                    </p>
                                    <p>
                                        <a class="btn" href="#">Посмотреть детали »</a>
                                    </p>
                                </div>
                                <div class="col-md-4">

                                    <a href="logout.html">
                                        <button type="button" class="btn btn-success btn-block btn-lg">
                                            Начать
                                        </button>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>