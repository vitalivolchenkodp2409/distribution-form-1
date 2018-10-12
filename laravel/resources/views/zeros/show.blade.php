@extends('layouts.app2')


@section('content')
    <section class="content">
        <div class="container-fluid">
            <div class="block-header">
                <h2>Contribute</h2>
            </div>
            <!-- Input -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <div class="row">
                                <div class="col-sm-11">
                                    <h2>
                                       To see contribution rates, first enter an Ethereum Address for us to send your ARR tokens. Don't include an address owned by a company like Coinbase or Poloniex, or you'll lose your Ether. Include an address you have the private key for, like an address generated at myetherwallet.com. 
                                    </h2>
                                </div>
                                <div class="col-sm-1 text-right">
                                    @if($current_user->is_locked == 0)
                                        <a href="{{ url('/zeros/' . $zero->id . '/edit') }}" title="Edit Zero">
                                            <button class="btn btn-primary btn-sm">
                                                <i class="material-icons">border_color</i> Edit
                                            </button>
                                        </a>
                                    @else

                                        <button class="btn btn-primary btn-sm">
                                            <i class="material-icons">lock_open</i>
                                        </button>

                                    @endif
                                </div>
                            </div>
                            
                        </div>
                        <div class="body">
                            
                            @if(Session::has('flash_message'))
                                <div class="alert alert-success">
                                    <strong>Success!</strong> {{ Session::get('flash_message') }}
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

                            <div class="table-responsive">
                                <table class="table table-borderless">
                                    <tbody>
                                        <tr><th> Ethereum Address </th><td> {{ $zero->ethereum_address }} </td></tr>
                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <!-- #END# Input -->
        </div>
    </section>
@endsection
