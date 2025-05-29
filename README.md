# Form Guard

Form Guard is a lightweight gem to protect your forms from bots and spammy submissions using a simple and effective honeypot + timing strategy.

## Installation

Add this line to your application's Gemfile:

```bash
gem 'form_guard'
```

And then execute:

```bash
bundle install
```

## Usage

1. Add hidden guard field to your forms:
```bash
<%= form_guard_fields %>
```

2. Add guard check to your controller:

```bash
before_action -> { verify_form_guard!(min_delay: 1.5) }, only: [:create]
```
You can override the delay seconds: (min_delay: 3.0)

## How it works

- Bots tend to fill all fields — including hidden ones. If the honeypot is filled, the submission is rejected.

- Bots submit instantly. If the form is submitted too quickly (under min_delay seconds), it’s probably a bot.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/amigobg/form_guard.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).