import DateFnsUtils from "@date-io/date-fns";
import { MuiPickersUtilsProvider } from "@material-ui/pickers";
import React from "react";
import { TimePickerComp } from "../components/TimePicker";
import { Todo } from "../components/Todo";

export default function Home(props) {
  return (
    <>
      <Todo></Todo>
      {/* <MuiPickersUtilsProvider utils={DateFnsUtils}>
        <TimePickerComp></TimePickerComp>
      </MuiPickersUtilsProvider> */}
    </>
  );
}
