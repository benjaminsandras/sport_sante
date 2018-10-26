@extends('template')

@section('titre')
    Les activité
@endsection

@section('contenu')


<script type="text/javascript" src="js/act.js"></script>

<div class="page-content">

  <!-- Titre de la page -->
  <div id="titreActivite">
    <h1>Nos Activités</h1>
  </div>


  <!-- selection des categories -->




	<!-- <div class="col-25"> -->
    
    <!-- <button type="submit" href="{{ URL::action('activiteController@biip') }}" class="button col">Button</button> -->
		
    <!-- </div> -->
    <div class="list">
      
      <form action="" method='GET'>
        <p class="elevation-hover-18" id="">
          <button class="col button button-fill color-orange">En plein Air</button>   
        </p>
      </form>
      
      
      <form action="" method='GET'>
        <p class="elevation-hover-18" id="">
          <button class="col button button-fill color-orange">En Salle</button>   
        </p>
      </form>
      
      
      <form action="" method='GET'>
        <p class="elevation-hover-18" id="">
          <button class="col button button-fill color-orange">Collectif</button>   
        </p>
      </form>
      
      
      <form action="" method='GET'>
        <p class="elevation-hover-18" id="">
          <button class="col button button-fill color-orange">Individuel</button>   
        </p>
      </form>
      
    </div>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    <div class="row">
    
    
    <div class="col-90">
      
      
      
      @foreach($activites as $act)
      
			<div class="card">
        <div class="card-header">{{ $act->nom }}</div>
        <div class="card-content">
          <div class="list media-list">
            <ul>
                <li class="item-content">
                  <div class="item-media"></div>
                  <div class="item-inner">
                    <div class="item-title-row">
                      <div class="item-title">{{ $act->public }}</div>
                    </div>
                    <div class="item-subtitle">Beatles</div>
                  </div>
                </li>


                <li class="item-content">
                  <div class="item-media"></div>
                  <div class="item-inner">
                    <div class="item-title-row">
                      <form action= "biip" method="GET">
                        <button type="submit" id="coucou" class="button col">test</button>
                      </form>
                    </div>

                    <div class="item-subtitle">coucou</div>
                  </div>
                </li>
              </ul>
            </div>
          </div>
          <!-- <div class="card-footer"> <span>January 18, 1815</span><span>5 comments</span></div> -->
        </div>
				
					
			
			@endforeach
		
	</div>
	<!-- <div class="col-25">
		
	</div> -->

		</div>	
	</div>				
		

   
@endsection
