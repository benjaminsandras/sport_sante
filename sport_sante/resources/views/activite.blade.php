@extends('template')

@section('titre')
    Les activité
@endsection

@section('contenu')


		<table>
			<tr>
				<th>Nom</th>
				<th>Public</th>
				
			</tr>
			@foreach($activites as $act)
				<tr>
					<td>{{ $act->nom }}</td>
					<td>{{ $act->public }}</td>
					
					<!-- <td><form method="post" action="customer_detail"><input class="hidden" type="number" name="id" value="{{$customer->id}}"><button type="submit">Détails</button></form></td> -->
				</tr>
			@endforeach
		</table>

    <ul>
        <li>la premiere activité</li>
        <li>la deuxieme activite</li>
        <li>la troisieme activite</li>
    </ul>

@endsection
