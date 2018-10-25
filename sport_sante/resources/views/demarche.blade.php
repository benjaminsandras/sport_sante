@extends('template')

@section('titre')
    Les structures
@endsection

@section('contenu')

	


	<table>
			<tr>
				<th>Nom</th>
				
				
			</tr>
			@foreach($demarches as $demarche)
				<tr>
					<td>{{ $demarche->nom }}</td>
					
					
					<!-- <td><form method="post" action="customer_detail"><input class="hidden" type="number" name="id" value="{{$customer->id}}"><button type="submit">Détails</button></form></td> -->
				</tr>
			@endforeach
		</table>

    <ul>
        <li>le premier club</li>
        <li>le deuxieme club</li>
        <li>le troisème club</li>
    </ul>

    <button id="activites" type="submit">activités</button>
    <button id="localisation" type="submit">localisation</button>
@endsection
