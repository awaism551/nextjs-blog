import { TimePicker } from "@material-ui/pickers";
import React, { useState } from "react";
import styles from "../styles/timepicker.module.css";

export function TimePickerComp(props) {
  const [time, setTime] = useState(new Date());

  return (
    <>
      <div className={styles.center}>
        <TimePicker
          onChange={(value) => {
            console.log(value);
            setTime(value);
          }}
          value={time}
        ></TimePicker>
      </div>
    </>
  );
}
