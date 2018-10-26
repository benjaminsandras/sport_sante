@extends('template')

@section('titre')
Réseaux
@endsection

@section('contenu')

<h1 id="titre_reseaux">Nos Réseaux</h1>

<!-- <form action="Accueil" method="GET">
  <button>test</button>
</form> -->

<!--
<div class="list">
  <ul>
    <li>
      <a href="#" class="item-link smart-select smart-select-init">
        <select name="fruits">
          <option id="1" value="alphabetique" selected>Alphabétique</option>
          <option id="2" value="date_ajout">date d'ajout</option>
          <option id="3" value="localisation">Localisation</option>
        </select>
        <div class="item-content">
          <div class="item-inner">
            <div class="item-title">Trier par :</div>
          </div>
        </div>
      </a>
    </li>
  </ul>
</div>
-->

<div>
  <form method="GET" action="">
    <label for="choix_trie">Trier par :</label>
    <button name="choix_trie">
      <select name="methode_trie">
        <option value="1" >Alphabétique</option>
        <option value="2" selected>Date d'ajout</option>
        <!-- 
        option a rajouter plus tard

        <option value="3" >Localisation</option>
        -->
      </select>
    </button>
    <br>
    <br>
    <input type="submit" name="submit">
    <br>
    <br>
  </form>
</div>

<table>
    <tr>
        <th>Id</th>
        <th>Nom</th>
        
    </tr>
    @foreach($reseaux as $reseaux)
        <tr>
            <td>{{ $reseaux->id }}</td>
            <td>{{ $reseaux->name }}</td>
        </tr>
    @endforeach
</table>

@endsection
