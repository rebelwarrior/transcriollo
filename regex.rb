REGEX = 
/([[:alnum:]]{2})([[:alnum:]]{4})([[:alnum:]]{1})([[:alnum:]]{5})([[:alnum:]]{3})([[:alnum:]]{5})([[:alnum:]]{4})([[:alnum:]]{5})([[:alnum:]]{3})([[:alnum:]]{3})([[:alnum:]]{1})([[:alnum:]]{1})/

REGEX_RAW_STRING = /\A>([[:alnum:]]{5,25});(([0-9]|\.)*);ID=([0-9]{15})<\z/


def process_input(input_string="AABBBBCDDDDDEEEFFFFFGGGGHHHHHIIIJJJKL")
  input_string =    REGEX.match input_string
  event_index =     input_string.captures.at 0
  num_weeks_since = input_string.captures.at 1
  day_of_week =     input_string.captures.at 2
  seconds =         input_string.captures.at 3
  latitute =        input_string.captures.at(4) + "." + input_string.captures.at(5)
  longitude =       input_string.captures.at(6) + "." + input_string.captures.at(7)
  mph =             input_string.captures.at 8
  heading =         input_string.captures.at 9
  fix_mode =        input_string.captures.at 10
  age_of_data =     input_string.captures.at 11
end

def process_raw_input(raw_input_string=">RXART;1.3.61;ID=356612021342417<")
  raw_input_string = REGEX_RAW_STRING.match raw_input_string
  input_sting = raw_input_string.captures.at 0
  mein_id =     raw_input_string.captures.at 3
  middle_stuff = raw_input_string.captures.at 1
  # I AM tired...  
end  
#24ppl
