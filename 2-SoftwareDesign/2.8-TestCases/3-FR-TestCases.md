### Опис тестових сценаріїв для функції send_temp()

<table>
  <thead>
    <tr>
      <td>FR id</td>
      <td>TC id</td>
      <td>Опис кроків тестового сценарію</td>
      <td>Опис очікуваних результатів</td>
    </tr>
  </thead>
  
  <tr>
      <td>FR1.3</td>
      <td>TC 1.1</td>
      <td>
        Початкові умови: користувач вводить своє місто та ім'я<br>
        Кроки сценарію:<br>
        1) name = Nikita<br>
        2) city = Kherson<br>
      </td>
      <td>Результат = 1</td>
  </tr>
  
  <tr>
      <td>FR1.3</td>
      <td>TC 1.2</td>
      <td>
        Початкові умови: користувач вводить своє місто та ім'я<br>
        Кроки сценарію:<br>
        1) name = Nikita<br>
        2) city = kherson<br>
      </td>
      <td>Результат = -1</td>
  </tr>
  
  <tr>
      <td>FR1.3</td>
      <td>TC 1.3</td>
      <td>
        Початкові умови: користувач вводить своє місто та ім'я<br>
        Кроки сценарію:<br>
        1) name = Nikita<br>
        2) city = Kher$on<br>
      </td>
      <td>Результат = -1</td>
  </tr>
  
  <tr>
      <td>FR1.3</td>
      <td>TC 1.4</td>
      <td>
        Початкові умови: користувач вводить своє місто та ім'я<br>
        Кроки сценарію:<br>
        1) name = Nikita<br>
        2) city = K<br>
      </td>
      <td>Результат = -1</td>
  </tr>
  
  <tr>
      <td>FR1.3</td>
      <td>TC 1.5</td>
      <td>
        Початкові умови: користувач вводить своє місто та ім'я<br>
        Кроки сценарію:<br>
        1) name = Nikita2002<br>
        2) city = Kherson<br>
      </td>
      <td>Результат = -2</td>
  </tr>
  
