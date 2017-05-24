require 'json'
#require 'net/http'

class Cine

  def initialize
    @movies = JSON.parse(File.read('filmes.json'))
    @temps = JSON.parse(File.read('temporada.json'))
  end

  def list_times(movie_name)
    result  = []
    @movies.each{|id,movie|
      if movie["nome"].upcase == movie_name.upcase
        movie_key = id
        @temps[@temps.keys[0]]["programacao"].each{|data_prog,times|
          if times.has_value?(movie_key)
            #result.push({date: data_prog,time: times.select{|key,value| value == movie_key }.keys.first})
            result.push({date: data_prog,time: times.invert.fetch_values(movie_key).first})
          end
        }
        break
      end
    }
    result
  end

  def list_movies(data)
    result  = []
    @temps[@temps.keys[0]]["programacao"].each{|data_prog,times|
      if data_prog == data
        movie_keys = times.values
          @movies.reverse_each{|id,movie|
            if movie_keys.include?(id)
              #result.push({movie: movie["nome"],time: times.select{|key,value| value == id }.keys.first})
              result.push({movie: movie["nome"],time: times.invert.fetch_values(id).first})
            end
          }
        break
      end
    }
    result
  end
end
