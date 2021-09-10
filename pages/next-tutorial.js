import Layout from "../components/layout";
import { getTodos } from "../lib/todos";

export async function getStaticProps() {
  let todos = getTodos();
  console.log("todos", todos);
  return {
    props: {
      todos,
    },
  };
}

export default function nextTutorial({ todos }) {
  return (
    <Layout>
      <div>Awais todo list</div>
      <ul>
        {todos.map((todo, index) => (
          <li key={index}>{todo.title}</li>
        ))}
      </ul>
    </Layout>
  );
}
