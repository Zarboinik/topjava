package ru.javawebinar.topjava.DB;

import ru.javawebinar.topjava.model.Meal;

import java.util.Collection;

public interface CRUD {
    Collection<Meal> getAll();

    Meal getByID(int id);

    void deleteById(int id);

    Meal addMeal(Meal meal);
}
