-- 3) Это задача на знание БД и SQL.
-- В качестве решения, нарисуйте необходимую структуру БД и напишите SQL запрос в текстовом виде.
--
-- Даны таблицы:
-- products (id, name, price) - продукты в магазине электроники
-- tags (id, name) - категории товаров к которым может относиться тот или иной продукт
-- Как должна выглядеть связь между продуктами и тэгами?
-- Напишите запрос который найдет продукты с более чем 10-ю тегами.

-- Створити базу даних task_three.
CREATE
DATABASE task_three;

-- Створити таблицю- tags.
CREATE TABLE `task_three`.`tags`
(
    `id`   INT         NOT NULL,
    `name` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

-- Створити таблицю - products.
CREATE TABLE `task_three`.`products`
(
    `id`    INT         NOT NULL,
    `name`  VARCHAR(45) NOT NULL,
    `price` INT         NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

-- Связь между продуктами и тэгами - многие ко многим.
-- Створити таблицю - product_tag

CREATE TABLE `task_three`.`product_tag`
(
    `id`         INT NOT NULL,
    `product_id` INT NOT NULL,
    `tag_id`     INT NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

-- Заповнити таблиці даними.
INSERT INTO `task_three`.`products` (`id`, `name`, `price`)
VALUES ('1', 'apple', '25');
INSERT INTO `task_three`.`products` (`id`, `name`, `price`)
VALUES ('2', 'banana', '30');
INSERT INTO `task_three`.`products` (`id`, `name`, `price`)
VALUES ('3', 'orange', '35');

INSERT INTO `task_three`.`tags` (`id`, `name`)
VALUES ('1', 'teg1');
INSERT INTO `task_three`.`tags` (`id`, `name`)
VALUES ('2', 'teg2');
INSERT INTO `task_three`.`tags` (`id`, `name`)
VALUES ('3', 'teg3');
INSERT INTO `task_three`.`tags` (`id`, `name`)
VALUES ('4', 'teg4');
INSERT INTO `task_three`.`tags` (`id`, `name`)
VALUES ('5', 'teg5');
INSERT INTO `task_three`.`tags` (`id`, `name`)
VALUES ('6', 'teg6');
INSERT INTO `task_three`.`tags` (`id`, `name`)
VALUES ('7', 'teg7');
INSERT INTO `task_three`.`tags` (`id`, `name`)
VALUES ('8', 'teg8');
INSERT INTO `task_three`.`tags` (`id`, `name`)
VALUES ('9', 'teg9');
INSERT INTO `task_three`.`tags` (`id`, `name`)
VALUES ('10', 'teg10');
INSERT INTO `task_three`.`tags` (`id`, `name`)
VALUES ('11', 'teg11');

INSERT INTO `task_three`.`product_tag` (`id`, `product_id`, `tag_id`)
VALUES ('1', '1', '1');
INSERT INTO `task_three`.`product_tag` (`id`, `product_id`, `tag_id`)
VALUES ('2', '2', '2');
INSERT INTO `task_three`.`product_tag` (`id`, `product_id`, `tag_id`)
VALUES ('3', '3', '3');
INSERT INTO `task_three`.`product_tag` (`id`, `product_id`, `tag_id`)
VALUES ('4', '1', '2');
INSERT INTO `task_three`.`product_tag` (`id`, `product_id`, `tag_id`)
VALUES ('5', '1', '3');
INSERT INTO `task_three`.`product_tag` (`id`, `product_id`, `tag_id`)
VALUES ('6', '1', '4');
INSERT INTO `task_three`.`product_tag` (`id`, `product_id`, `tag_id`)
VALUES ('7', '1', '5');
INSERT INTO `task_three`.`product_tag` (`id`, `product_id`, `tag_id`)
VALUES ('8', '1', '6');
INSERT INTO `task_three`.`product_tag` (`id`, `product_id`, `tag_id`)
VALUES ('9', '1', '7');
INSERT INTO `task_three`.`product_tag` (`id`, `product_id`, `tag_id`)
VALUES ('10', '1', '8');
INSERT INTO `task_three`.`product_tag` (`id`, `product_id`, `tag_id`)
VALUES ('11', '1', '9');
INSERT INTO `task_three`.`product_tag` (`id`, `product_id`, `tag_id`)
VALUES ('12', '1', '10');
INSERT INTO `task_three`.`product_tag` (`id`, `product_id`, `tag_id`)
VALUES ('13', '1', '11');

-- Связь таблиці products c product_tag
ALTER TABLE `task_three`.`product_tag`
    ADD INDEX `fk_product_idx` (`product_id` ASC) VISIBLE;
;
ALTER TABLE `task_three`.`product_tag`
    ADD CONSTRAINT `fk_product`
        FOREIGN KEY (`product_id`)
            REFERENCES `task_three`.`products` (`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION;

-- Связь таблиці tags c product_tag

ALTER TABLE `task_three`.`product_tag`
    ADD INDEX `fk_tag_idx` (`tag_id` ASC) VISIBLE;
;
ALTER TABLE `task_three`.`product_tag`
    ADD CONSTRAINT `fk_tag`
        FOREIGN KEY (`tag_id`)
            REFERENCES `task_three`.`tags` (`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION;



-- Напишите запрос который найдет продукты с более чем 10-ю тегами.
-- (Этот запрос не корректен)
-- select task_three.products.name
-- from task_three.tags
--          inner join task_three.product_tag
--                     on task_three.tags.id = tags.id = product_tag.tag_id
--          inner join task_three.products
--                     on product_tag.product_id = products.id
-- where count > 1
--
-- ;














