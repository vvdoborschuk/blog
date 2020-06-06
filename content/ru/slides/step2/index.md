---
title: Slides
summary: Science Programming second step.
authors:
    - Vladimir V. Doborschuk
tags: []
categories: []
date: "2019-02-05T00:00:00Z"
slides:
  # Choose a theme from https://github.com/hakimel/reveal.js#theming
  theme: black
  # Choose a code highlighting style (if highlighting enabled in `params.toml`)
  #   Light style: github. Dark style: dracula (default).
  highlight_style: dracula
---

# Модель конкуренции двух фирм
# Этап 2

**Доклад подготовили**

- *Доборщук Владимир НФИбд-01-18*
- *Швец Сергей НФИбд-03-18*
- *Гурбангельдиев Мухаммет НФИбд-03-18*
- *Герцев Владлен НФИбд-01-18*]

---

# Содержание доклада

1. Описание задач
2. Рассмотрение алгоритмов
3. Выбор алгоритма
4. Реализация кода
---

# Постановка задачи

Исходя из:

$$\begin{cases}
\frac{dM_1}{d\theta}=M_1-(\frac{b}{c_1}+\sigma)M_1M_2-\frac{a_1}{c_1}{M_1}^2 \newline
\frac{dM_2}{d\theta}=\frac{c_2}{c_1}M_2-\frac{b}{c_1}M_1M_2-\frac{a_2}{c_1}{M_2}^2
\end{cases}$$

### Задача

> Выбор оптимального алгоритма для решения поставленной ранее проблемы, на основе математической модели.

---

## Рассмотрение алгоритмов

### Метод Эйлера (метод ломаных)

### Метод Рунге-Кутта

---

## Рассмотрение алгоритмов

### Метод Эйлера

.right-column70

$$\begin{array}
\overline{y}_{j+1}=\overline{y}_j+h\overline{f}(x_j,\overline{y}_j)
\end{array}$$

$$x_{j+1}=hx_j$$

---

## Рассмотрение алгоритмов

## Метод Рунге-Кутта 2-го порядка

$\overline{y}_{j+1}=\overline{y}_j+\frac{h}{2}\overline{f}(x_j,\overline{y}_j)+\frac{h}{2}\overline{f}(x_{j+1},\overline{y}_{j+1})$

$x_{j+1}=hx_j$


---

## Рассмотрение алгоритмов

## Метод Рунге-Кутта 4-го порядка

$k_1 = h\overline{f}(x_j,\overline{y}_j)$

$k_2 = h\overline{f}(x_j+\frac{h}{2},\overline{y}_j+\frac{k_1}{2})$

$k_3 = h\overline{f}(x_j+\frac{h}{2},\overline{y}_j+\frac{k_2}{2})$

$k_4 = h\overline{f}(x_j+\frac{h}{2},\overline{y}_j+k_3)$

$\overline{y}_{j+1}=\overline{y}_j+\frac{k_1+2k_2+2k_3+k_4}{6}$

$x_{j+1}=hx_j$
