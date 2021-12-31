# Urygem

Welcome to the Urygem! To get the information, run `bin/console` for an interactive prompt.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'urygem'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install urygem

## Usage

You have some routes to get information about the popular serie "Pokémon".

In each path, you need to access the "Urygem" module in the bin/console to get the data.

The first is to have a list of the top 20 pokémon. You only need to put  "Urygem.pokemons" and you will get the list with the ID and the name of the pokémon.

If you want to get more pokémon in this format, use the "list_pokemons_limits" method, but you must provide a parameter. It must be a integer because it indicates the amount of pokémon that will be returned. An example: "Urygem.list_pokemons_limits(50)". You will get the list of the first 50 pokémon

The next is to get information on a single pokémon. Use the "pokemon" method, you also have to give a parameter. It can be a string (the pokémon's name) or an integer (the pokémon's ID). An example: 'Urygem.pokemon("bulbasaur")' or 'Urygem.pokemon(45)'. You will get ALL, seriously, ALL the pokémon information.

The last one is for the ways you can find a pokémon. Use the method "encounter_method" given a parameter. A string (the name) or an integer (the ID) for the parameter. An example: 'Urygem.encounter_method("surf")' or 'Urygem.encounter_method(10)'. You will get the name, the ID and some translations of this method.