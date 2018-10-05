@extends('layouts.app2')

@section('content')
    <section class="content">
        <div class="container-fluid">
            <div class="block-header">
                <h2>Link Facebook</h2>
            </div>
            <!-- Input -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header" align="center">
                            <h2>
                               Link your facebook here!
                            </h2>
                        </div>
                        <div class="body">

                            @if(Session::has('flash_message'))
                                <div class="alert alert-success">
                                    <strong>Success! Your facebook is linked!</strong> {{ Session::get('flash_message') }}
                                </div>
                            @endif

                            @if(Session::has('error'))
                                <div class="alert alert-danger">
                                    <strong>Error!</strong> {{ Session::get('error') }}
                                </div>
                            @endif

                            @if ($errors->any())
                                <ul class="alert alert-danger">
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            @endif
                                <div class="center-block">
                                
                                    @if(Session::has('fbres'))
                                        <div class="form-group" align="center">
                                            <p class="text-danger">{{ Session::get('fbres') }}</p>
                                        </div>       
                                    @endif

                                    @if(isset($data['provider']))

                                        <div class="form-group" {{ $data['mark'] == true ? 'hidden':'' }} align="center">
						<p>
                                              Link your Facebook to help other users trust you. 
						<br>
						<ul>
							<li>Receive 3⇪ for each of your friends who join, up to 10 friends. </li>
							<li>Receive 3⇪ for adding a photo to your Oblio profile, up to 16 photos.</li>
						</ul>                     
						<br>  
						In Facebook's permission screen you can choose which of these you want give Project Oblio access to. Additionally, you can manually select which of these to add to your Oblio Profile. 
			                       </p>
                                            <div class="row">
                                                <div class="col-md-6 col-sm-offset-3">
                                                    <a href="{{ url('/home/facebook/facebook') }}" class="btn btn-primary btn-facebook"><i class="fa fa-facebook"></i> Log-in with Facebook </a>
                                                </div>
                                            </div>
                                           
                                        </div>
                                        <div class="form-group" align="center">
                                            <form id="unlink-form" action="{{ route('unlink_fb') }}" method="post" role="form" style="display: block;" >
                                                {{ csrf_field() }}
                                                <div class="form-group">
                                                    <div class="row">
                                                        <div class="col-sm-6 col-sm-offset-3">
                                                            <input type="submit" name="unlink" id="unlink"  class="btn btn-primary btn-facebook" value=" Unlink Facebook ">
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                            <p>
                                               Unlinking your facebook results in minus one ⇪.
                                            </p>

                                        </div>

                                        @if(!Session::has('friends'))

                                            <div class="form-group"  {{ $data['mark'] == false ? 'hidden':'' }} align="center">
                                                <div class="row">
                                                    <div class="col-md-6 col-sm-offset-3">
                                                        <a href="{{ url('/home/facebook/friends/facebook') }}" class="btn btn-primary btn-facebook"><i class="fa fa-facebook"></i> Find Friends </a>
                                                    </div>
                                                </div>
                                                <p>
                                                    You need at least 100 friends and 16 photos to earn ⇪ here.
                                                </p>
                                            </div>

                                        @else

                                            <div class="form-group" align="center">
                                                <form id="unlink-form" action="{{ route('friendslock') }}" method="post" role="form" style="display: block;" >
                                                    {{ csrf_field() }}
                                                    <div class="form-group">
                                                        <div class="row">
                                                            <div class="col-sm-6 col-sm-offset-3">
                                                                <input type="submit" name="unlink" id="unlink"  class="btn btn-primary btn-facebook" value=" Remove access to friends ">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                                <p>
                                                    Removing access to friends will cost ⇪.
                                                </p>
                                            </div>
                                            
                                            @if ( $friends = $data['friends'])


                                                <div class="card">
                                                    <div class="header">
                                                        <h2>
                                                            Facebook friends
                                                        </h2>
                                                    </div>
                                                    <div class="body">

                                                        <div class="row">
                                                            <?php $count = 1 ?>
                                                            @foreach($friends as $friend)
                                                                <p><img src="{{$friend['link_picture']}}" alt="{{$friend['link_picture']}}" height="{{$friend['link_picture']}}">                                                                  
                                                                        {{$count}}: {{$friend['name']}} 
                                                                        @if($friend['name_oblio'] != null)
                                                                            <a href="/u/{{$friend['name_oblio']}}">Oblio Profile</a></p>
                                                                        @endif
                                                            <?php $count += 1 ?>         
                                                            @endforeach

                                                        </div>
                                                    </div>
                                                </div>
                                            @endif

                                        @endif

                                        @if(!Session::has('fotos'))

                                            <div class="form-group" {{ $data['mark'] == false ? 'hidden':'' }} align="center">
                                                <div class="row">
                                                    <div class="col-md-6 col-sm-offset-3">
                                                        <a href="{{ url('/home/facebook/photos/facebook') }}" class="btn btn-primary btn-facebook"><i class="fa fa-facebook"></i> Add access to photos </a>
                                                    </div>
                                                </div>
                                                <p>
                                                    You need at least 100 friends and 16 photos to earn ⇪ here.
                                             
                                                </p>
                                            </div>

                                        @else

                                            <div class="form-group" align="center">
                                                <form id="unlink-form" action="{{ route('lockPhotos') }}" method="post" role="form" style="display: block;" >
                                                    {{ csrf_field() }}
                                                    <div class="form-group">
                                                        <div class="row">
                                                            <div class="col-sm-6 col-sm-offset-3">
                                                                <input type="submit" name="unlink" id="unlink"  class="btn btn-primary btn-facebook" value=" Remove access to photos ">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                                <p>
                                                   If you remove access to your Facebook photos, you'll lose ⇪.
                                                </p>
                                            </div>
                                            
                                            @if ( $photos = $data['photos'])


                                                <div class="card">
                                                    <div class="header">
                                                        <h2>
                                                           Your Facebook photos
                                                        </h2>
                                                    </div>
                                                    <div class="body">

                                                        <div class="row ">
                                                            @foreach($photos as $photo)
                                                                <div class="col-md-4">
                                                                    <img src="{{$photo['link_photo']}}"  class="img-responsive" alt="{{$photo['id']}}" 
                                                                     height="200">
                                                                </div>
                                                            @endforeach
                                                        </div>
                                                        
                                                    </div>
                                                </div>
                                            @endif

                                        @endif

                                        <div class="form-group" align="center">
						<p>
                                               You can earn an ⇪ for liking our Facebook page. You can also just click the button above for your ⇪ and not actually like it (we won't check and don't value Facebook likes very much)
                                            </p>
                                            <form id="unlink-form" action="{{ route('like') }}" method="post" role="form" style="display: block;" >
                                                {{ csrf_field() }}
                                                <div class="form-group">
                                                    <div class="row">
                                                        <div class="col-sm-6 col-sm-offset-3">
                                                            <input type="submit" name="unlink" id="unlink"  class="btn btn-primary btn-facebook" value=" Like our Facebook page ">
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                            
                                        </div>

                                    @else

                                        <div class="form-group" {{ $data['mark'] == true ? 'hidden':'' }} align="center">
  Link your Facebook to help other users trust you. 
						<br>
						<ul>
							<li>Receive 3⇪ for each of your friends who join, up to 10 friends. </li>
							<li>Receive 3⇪ for adding a photo to your Oblio profile, up to 16 photos.</li>
						</ul>                     
						<br>  
						In Facebook's permission screen you can choose which of these you want give Project Oblio access to. Additionally, you can manually select which of these to add to your Oblio Profile. 
			                       </p>
                                            <div class="row">
                                                <div class="col-md-6 col-sm-offset-3">
                                                    <a href="{{ url('/home/facebook/facebook') }}" class="btn btn-primary btn-facebook"><i class="fa fa-facebook"></i> Log-in with Facebook </a>
                                                </div>
                                            </div>
                                            
                                        </div>

                                        <div class="form-group" align="center">
						<p>
                                               You can earn an ⇪ for liking our Facebook page. You can also just click the button above for your ⇪ and not actually like it (we won't check and don't value Facebook likes very much)
                                            </p>
                                            <form id="unlink-form" action="{{ route('like') }}" method="post" role="form" style="display: block;" >
                                                {{ csrf_field() }}
                                                <div class="form-group">
                                                    <div class="row">
                                                        <div class="col-sm-6 col-sm-offset-3">
                                                            <input type="submit" name="unlink" id="unlink"  class="btn btn-primary btn-facebook" value=" Like our Facebook page ">
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                            
                                        </div>

                                    @endif

                                </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- #END# Input -->
        </div>
    </section>
@endsection
