@extends('template')

@section('titre')
Réseaux
@endsection

@section('contenu')

<h1>Réseaux</h1>

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