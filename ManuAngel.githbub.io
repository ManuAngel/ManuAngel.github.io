<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="styles.css">

    <title>Ficha do personagem</title>
  </head>
<body>
    <h1 class="title">Perfil de investigador</h1>

    <!-- modal -->
    <div id="diceAttributes" class="modal" style="display: none;">
      <div class="modal-content">
        <img class="modalDice" src="./img/dado.png" alt="Dado" style="transform: rotate(0deg);">
        <h2 id="diceNumber"></h2>
        <p id="diceType"></p>
      </div>
    </div>

    <div id="lifeModal" class="modal with-input">
      <div class="modal-content">
        <h2>MODIFICAR VIDA</h2>
        <hr>
        <form class="formModal" id="changeLife">
          <h3>Atual</h3>
          <input type="number" name="current" id="lifeCurrent" min="0">
          <h3>Máximo</h3>
          <input type="number" name="max" id="lifeMax" min="0">
          <input type="submit" value="Salvar">
        </form>
      </div>
    </div>

    <div id="sanityModal" class="modal with-input">
      <div class="modal-content">
        <h2>MODIFICAR SANIDADE</h2>
        <hr>
        <form class="formModal" id="changeSanity">
          <h3>Atual</h3>
          <input type="number" name="sanityCurrent" id="sanityCurrent" min="0">
          <h3>Máximo</h3>
          <input type="number" name="sanityMax" id="sanityMax" min="0">
          <input type="submit" value="Salvar">
        </form>
      </div>
    </div>

    <div id="addWeaponModal" class="modal with-input">
      <div class="modal-content">
        <h2>ADICIONAR ARMA</h2>
        <hr>
        <form id="addWeaponForm" action="">
          <table class="weapons" id="newWeapon">
            <tbody><tr>
              <th>Nome</th>
              <th>Tipo</th>
              <th>Dano</th>
              <th>Num. Atual</th>
              <th>Num. Máximo</th>
              <th>Ataque</th>
              <th>Alcance</th>
              <th>Defeito</th>
              <th>Área</th>
            </tr>
            <tr>
              <td>
                <input type="text" name="weaponName" id="weaponName">
              </td>
              <td>
                <select id="weaponType" name="weaponType">
                  <option value="fire">Fogo</option>
                  <option value="arch">Arco</option>
                  <option value="fight">Briga</option>
                </select>
              </td>
              <td>
                <input type="text" name="weaponDamage" id="weaponDamege">
              </td>
              <td>
                <input type="text" name="weaponNumCurrent" id="weaponNumCurrent">
              </td>
              <td>
                <input type="text" name="weaponNumMax" id="weaponNumMax">
              </td>
              <td>
                <input type="text" name="weaponAttack" id="weaponAttack">
              </td>
              <td>
                <input type="text" name="weaponReach" id="weaponReach">
              </td>
              <td>
                <input type="text" name="weaponDefect" id="weaponDefect">
              </td>
              <td>
                <input type="text" name="weaponArea" id="weaponArea">
              </td>
            </tr>
          </tbody></table>
          <input type="submit" value="Salvar">
        </form>
      </div>
    </div>

    <div class="container">
      <div class="details border">
        <h2 class="grid-title">DETALHES PESSOAIS</h2>
        <hr>

        <div class="inputs">
          <h4>Nome</h4>
          <input type="text" name="name" id="name" value="">
          <h4>Jogador</h4>
          <input type="text" name="player" id="player" value="">
          <h4>Ocupação</h4>
          <input type="text" name="occupation" id="occupation" value="">
          <h4>Idade</h4>
          <input type="text" name="age" id="age" value="">
          <h4>Sexo</h4>
          <select id="sex" name="sex">
            <option value="male">Masculino</option>
            <option value="female">Feminino</option>
            <option value="other">Outros</option>
          </select>
          <h4>Local de nascimento</h4>
          <input type="text" name="birthplace" id="birthplace" value="">
          <h4>Local de residência</h4>
          <input type="text" name="residence" id="residence" value="">
        </div>
      </div>
      <div class="character">
        <div class="characterHeader">
          <img class="characterPhoto" src="./img/character.png" alt="Foto">
          <img class="dice" src="./img/dado.png" alt="Dado">
        </div>

        <div class="bars">
          <h4>Vida</h4>
          <div class="bar">
            <div class="lifeBar" style="width: 100%;">
              <p class="barcount" id="lifeCount">12/12</p>
            </div>
          </div>
          <div class="checkboxs">
            <form action="">
              <input type="checkbox" id="lesion" name="lesion" value="lesion">
              <label for="lesion"> Lesão grave</label>
              <input type="checkbox" id="injury" name="injury" value="injury">
              <label for="injury"> Lesionamento</label>
              <input type="checkbox" id="dying" name="dying" value="dying">
              <label for="dying"> Morrendo</label>
            </form>
          </div>

          <h4>Sanidade</h4>
          <div class="sanity">
            <div class="contentSanityBar">
              <div class="sanityBar" style="width: 100%;">
                <p class="barcount" id="sanityCount">62/62</p>
              </div>
            </div>
            <img class="sanityDice" src="./img/dado.png" alt="Dado">
          </div>
          <div class="checkboxs">
            <input type="checkbox" id="traumatized" name="traumatized" value="traumatized">
            <label for="traumatized"> Traumatizado</label>
            <input type="checkbox" id="crazed" name="crazed" value="crazed">
            <label for="crazed"> Enlouquecido</label>
          </div>
        </div>

        <div class="extra">
          <div class="damage">
            <p>Dano extra</p>
            <input type="text" name="damage" id="damage">
          </div>
          <div class="body">
            <p>Corpo</p>
            <input type="text" name="damage" id="damage">
          </div>
          <div class="exposure">
            <p>Exposição paranormal</p>
            <input type="text" name="damage" id="damage">
          </div>
        </div>
      </div>
      <div class="attributes border">
        <h2 class="grid-title">ATRIBUTOS</h2>
        <hr>

        <div class="attributesList" id="attributesList"><div class="attribute" id="attribute_0">
    <a onclick="rollAtribute('Aparência', 10)">
      <img class="attributeDice" src="./img/dado.png" alt="Dado">
    </a>
    <h3>Aparência</h3>
    <input type="text" name="appearance" value="10" id="attribute_input_0" disabled="">
  </div><div class="attribute" id="attribute_1">
    <a onclick="rollAtribute('Constituição', 10)">
      <img class="attributeDice" src="./img/dado.png" alt="Dado">
    </a>
    <h3>Constituição</h3>
    <input type="text" name="appearance" value="10" id="attribute_input_1" disabled="">
  </div><div class="attribute" id="attribute_2">
    <a onclick="rollAtribute('Destreza', 10)">
      <img class="attributeDice" src="./img/dado.png" alt="Dado">
    </a>
    <h3>Destreza</h3>
    <input type="text" name="appearance" value="10" id="attribute_input_2" disabled="">
  </div><div class="attribute" id="attribute_3">
    <a onclick="rollAtribute('Educação', 10)">
      <img class="attributeDice" src="./img/dado.png" alt="Dado">
    </a>
    <h3>Educação</h3>
    <input type="text" name="appearance" value="10" id="attribute_input_3" disabled="">
  </div><div class="attribute" id="attribute_4">
    <a onclick="rollAtribute('Força', 10)">
      <img class="attributeDice" src="./img/dado.png" alt="Dado">
    </a>
    <h3>Força</h3>
    <input type="text" name="appearance" value="10" id="attribute_input_4" disabled="">
  </div><div class="attribute" id="attribute_5">
    <a onclick="rollAtribute('Inteligência', 10)">
      <img class="attributeDice" src="./img/dado.png" alt="Dado">
    </a>
    <h3>Inteligência</h3>
    <input type="text" name="appearance" value="10" id="attribute_input_5" disabled="">
  </div><div class="attribute" id="attribute_6">
    <a onclick="rollAtribute('Poder', 10)">
      <img class="attributeDice" src="./img/dado.png" alt="Dado">
    </a>
    <h3>Poder</h3>
    <input type="text" name="appearance" value="10" id="attribute_input_6" disabled="">
  </div><div class="attribute" id="attribute_7">
    <a onclick="rollAtribute('Sorte', 10)">
      <img class="attributeDice" src="./img/dado.png" alt="Dado">
    </a>
    <h3>Sorte</h3>
    <input type="text" name="appearance" value="10" id="attribute_input_7" disabled="">
  </div><div class="attribute" id="attribute_8">
    <a onclick="rollAtribute('Movimento', 10)">
      <img class="attributeDice" src="./img/dado.png" alt="Dado">
    </a>
    <h3>Movimento</h3>
    <input type="text" name="appearance" value="10" id="attribute_input_8" disabled="">
  </div><div class="attribute" id="attribute_9">
    <a onclick="rollAtribute('?', 10)">
      <img class="attributeDice" src="./img/dado.png" alt="Dado">
    </a>
    <h3>?</h3>
    <input type="text" name="appearance" value="10" id="attribute_input_9" disabled="">
  </div></div>
      </div>
      <div class="expertise border">
        <h2 class="grid-title">PERICIA</h2>
        <hr>
      </div>
      <div class="combat border">
        <div class="combatHeader">
          <h2 class="grid-title">COMBATE</h2>
          <button id="addWeapon">+</button>
        </div>
        <hr>

        <table class="weapons" id="weapons">
          <tbody><tr>
            <th>Nome</th>
            <th>Tipo</th>
            <th>Dano</th>
            <th>Nun. Atual</th>
            <th>Num. Máximo</th>
            <th>Ataque</th>
            <th>Alcance</th>
            <th>Defeito</th>
            <th>Área</th>
          </tr>
        <tr id="weapon_0">
        <td>
            <button onclick="deleteWeapon(0)">
                <i class="fa fa-trash-o trashcan"></i>
            </button>
            Balestra
        </td>
        <td>Arco</td>
        <td>1d20</td>
        <td>1</td>
        <td>1</td>
        <td>5</td>
        <td>10 m</td>
        <td>1</td>
        <td></td>
    </tr><tr id="weapon_1">
        <td>
            <button onclick="deleteWeapon(1)">
                <i class="fa fa-trash-o trashcan"></i>
            </button>
            Canivete
        </td>
        <td>Briga</td>
        <td>1d10</td>
        <td></td>
        <td></td>
        <td>1/2</td>
        <td></td>
        <td>1</td>
        <td></td>
    </tr></tbody></table>
      </div>

      <div class="expertise2 border">
        <h2 class="grid-title">PERICIA</h2>
        <hr>
      </div>
    </div>

    <!-- <div class="modal-overlay active">
            <div class="modal">
                <h2>MODIFICAR VIDA</h2>
                <hr>
                <form id="changeLife">
                    <span class="modalspan">Atual</span>
                    <input class="modalinput" type="number" name="current" id="lifeCurrent" min="0">

                    <span class="modalspan">Máximo</span>
                    <input class="modalinput" type="number" name="max" id="lifeMax" min="0">
                    <input class="modalbutton" type="submit" value="Salvar">
                </form>
            </div>
        </div> -->

    <script src="characterSheet.js"></script>
  

</body>
<html>
