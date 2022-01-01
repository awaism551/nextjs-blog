// import MaterialTable from "material-table";
import MaterialTable from '@material-table/core';
import {
  IconButton,
  ListItem,
  ListItemSecondaryAction,
  ListItemText
} from "@material-ui/core";
import DeleteIcon from "@material-ui/icons/Delete";
import React, { useEffect, useState } from "react";


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
    <div>
      {/* <h3>Todo List</h3>
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
      </form> */}
      {/* <List className={styles.todosList}>{todosToRender}</List> */}

      <MaterialTable
        columns={[
          { title: "Adı", field: "name" },
          { title: "Soyadı", field: "surname" },
          { title: "Doğum Yılı", field: "birthYear", type: "numeric" },
          {
            title: "Doğum Yeri",
            field: "birthCity",
            lookup: { 34: "İstanbul", 63: "Şanlıurfa" },
          },
        ]}
        data={[
          { name: "Mehmet", surname: "Baran", birthYear: 1987, birthCity: 63 },
        ]}
        title="Demo Title"
        options={{
          draggable: false
        }}
      />
    </div>
  );
}
