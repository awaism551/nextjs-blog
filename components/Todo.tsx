import styles from "../styles/todo.module.css";
import React, { useEffect, useState } from "react";
import { Button, ListItem, ListItemText, TextField } from "@material-ui/core";
import List from "@material-ui/core/List";

export function Todo(props) {
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
    todos = todos.filter((todo) => todo?.id !== id);
    setTodos(todos);
  };

  const todosToRender = todos.map((todo) => {
    return (
      <>
        <ListItem key={todo.id} button>
          <ListItemText primary={todo.desc} />
          <Button
              onClick={() => handleDelete(todo.id)}
              variant="outlined"
              color="secondary"
            >
              X
            </Button>
        </ListItem>
      </>
    );
  });

  useEffect(() => {
    console.log("in useeffect");
  }, []);

  return (
    <div className={styles.App}>
      <h3>Todo List</h3>
      <br />
      <form onSubmit={addTodo}>
        <div className={styles.input}>
          <TextField
            id="outlined-basic"
            label="Outlined"
            variant="outlined"
            value={inputValue}
            onChange={handleInputChange}
            autoFocus
          />
          <Button variant="outlined" type="submit" color="primary">
            Add
          </Button>
        </div>
      </form>
      <div className={styles.todos}>
        <List className={styles.todosList}>{todosToRender}</List>
      </div>
    </div>
  );
}
