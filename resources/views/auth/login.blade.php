@extends('layouts.app')

@section('content')
    <form role="form" method="POST" action="{{ url('/login') }}">
        {{ csrf_field() }}

        <div>
            <label for="email">E-Mail Address</label>

            <div>
                <input id="email" type="email" name="email" value="{{ old('email') }}" required autofocus>

                @if ($errors->has('email'))
                    <span>
                    <strong>{{ $errors->first('email') }}</strong>
                    </span>
                @endif
            </div>
        </div>

        <div>
            <label for="password">Password</label>

            <div>
                <input id="password" type="password" name="password" required>

                @if ($errors->has('password'))
                    <span class="help-block">
                        <strong>{{ $errors->first('password') }}</strong>
                    </span>
                @endif
            </div>
        </div>

        <div>
            <div>
                <div>
                    <label>
                        <input type="checkbox" name="remember">Remember Me
                    </label>
                </div>
            </div>
        </div>

        <div>
            <div>
                <button type="submit">
                    Login
                </button>

                <a href="{{ url('/password/reset') }}">
                    Forgot Your Password?
                </a>
            </div>
        </div>
    </form>
@endsection
