import {
  Button,
  IconButton,
  ListItem,
  ListItemSecondaryAction,
  ListItemText, TextField
} from "@material-ui/core";
import List from "@material-ui/core/List";
import DeleteIcon from "@material-ui/icons/Delete";
import React, { useEffect, useState } from "react";
import styles from "../styles/todo.module.css";

// This function gets called at build time
export async function getStaticProps() {
  // Call an external API endpoint to get posts
  const res = await fetch("http://jsonplaceholder.typicode.com/todos");
  const todos = await res.json();
  console.log("getStaticProps");
  console.log("todos::", todos);
  // By returning { props: { posts } }, the Blog component
  // will receive `posts` as a prop at build time
  return {
    props: {
      todos,
    },
  };
}

export function Todo(props) {
  let [inputValue, setInputValue] = useState("");
  let [todos, setTodos] = useState([]);

  const handleInputChange = (event) => {
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
        title: inputValue,
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
        <ListItem key={todo.id} button>
          <ListItemText primary={todo.title} />
          <ListItemSecondaryAction>
            <IconButton
              onClick={() => handleDelete(todo.id)}
              edge="end"
              aria-label="delete"
            >
              <DeleteIcon />
            </IconButton>
          </ListItemSecondaryAction>
        </ListItem>
    );
  });

  useEffect(() => {
    async function getRemoteTodos() {
      const res = await fetch("http://jsonplaceholder.typicode.com/todos");
      const todos = await res.json();
      setTodos(todos);
    }
    getRemoteTodos();
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
      <div>
        <List className={styles.todosList}>{todosToRender}</List>
      </div>
    </div>
  );
}
