import styles from '../styles/todo.module.css'
import React, { useState } from "react";


export function Todo (props) {
  let [inputValue, setInputValue] = useState("");
  let [todos, setTodos] = useState([]);

  const handleInputChange = (event) => {
    // debugger;
    setInputValue(event.target.value);
  };

  const addTodo = (event) => {
    // debugger;
    if (inputValue) {
      let id = todos[todos.length - 1]?.id + 1;
      if (!id) {
        id = 1;
      }
      todos.push({
        id,
        desc: inputValue,
      });
      setTodos(todos);
      setInputValue("");
    }
    event.preventDefault();
  };

  const handleDelete = (id) => {
    // debugger;
    todos = todos.filter((todo) => todo?.id !== id);
    setTodos(todos);
  };

  const todosToRender = todos.map((todo) => {
    return (
      <li key={todo.id}>
        <div className={styles.listItems}>
          <span>{todo.desc}</span>
          <button onClick={() => handleDelete(todo.id)}>X</button>
        </div>
      </li>
    );
  });
  return (
    <div className={styles.App}>
      <h3>Todo List</h3>
      <br />
      <form onSubmit={addTodo}>
        <div className={styles.input}>
          <input
            type="text"
            value={inputValue}
            onChange={handleInputChange}
            autoFocus
          />
          <button type="submit">Add</button>
        </div>
      </form>
      <div className={styles.todos}>
        <ol className={styles.todosList}>{todosToRender}</ol>
      </div>

    </div>
  );
};
