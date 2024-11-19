---
title: One Page Calendar
layout: post
---
<div id="calendar"></div>
<script src="https://cdn.tailwindcss.com"></script>
<script type="text/javascript">
  const calendar = document.getElementById('calendar');
  const monthNames = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
  const dayNames = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
  const currentDate = new Date();
  const currentMonth = currentDate.getMonth();
  const currentDay = currentDate.getDate();
  let table = document.createElement('table');
  table.className = 'calendar table-auto border-none';
  let i2 = 0;
  let maxMonths = 0;
  let firstDays = [[], [], [], [], [], [], []];


  for (let i = 0; i < 12; i++) {
    date = new Date(2024, i, 1);
    firstDays[date.getDay()].push(i);
    if (firstDays[date.getDay()].length > maxMonths) {
      maxMonths = firstDays[date.getDay()].length;
    }
  }

  for (let i = 0; i < 5; i++) {
    const row = document.createElement('tr');
    row.className = 'border-none';
    for (let j = 0; j < maxMonths; j++) {
      let td = document.createElement('td');
      td.className = 'border-none';
      row.appendChild(td)
    }
    for (let j = 0; j < 7; j++) {
      i2++;
      const td = document.createElement('td');
      if (i2 <= 31) {
        td.innerHTML = i2;
      }
      if (i2 % 7 === currentDay % 7) {
        td.className = 'bg-blue-200';
      }
      row.appendChild(td);
    }
    table.appendChild(row);
  }

  for (let i = 0; i < 7; i++) {
    const row = document.createElement('tr');
    if (i === currentMonth % 7) {
      row.className = 'bg-blue-100';
    }
    for (let j = 0; j < maxMonths; j++) {
      const td = document.createElement('td');
      if (firstDays[i][j] >= 0) {
        td.innerHTML = monthNames[firstDays[i][j]];
      }
      row.appendChild(td);
    }
    for (let j = 0; j < 7; j++) {
      const td = document.createElement('td');
      if (j+1 === currentDay % 7) {
        if (i)
        td.className = 'bg-blue-200';
      }
      td.innerHTML = dayNames[(i + j) % 7];
      row.appendChild(td);
    }
    table.appendChild(row);
  }

  calendar.appendChild(table);
</script>
