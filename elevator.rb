class Elevator
  def initialize(capacity, shaft)
    @remaining_capacity = capacity
    @floor = 1
    @direction = "up"
    @stops = []
    @shaft = shaft
    start
  end

  def person_enter(person)
    if person.weight < @remaining_capacity
      @remaining_capacity -= person.weight
    else
      alert("You weigh too much!")
    end
  end

  def person_exit(person)
    @remaining_capacity += person.weight
  end

  def go_up
    while !@stops.empty? || @floor < @shaft.floors
      @floor += 1
      visit_floor
    end
    reverse_direction
  end

  def go_down
    while @floor > 1
      @floor -= 1
      visit_floor
    end
    reverse_direction
  end

  def reverse_direction
    @direction = @direction == "up" ? "down" : "up"
    start
  end

  def internal_request(floor)
    @stops << floor
  end

  def start
    @direction == "up" ? go_up : go_down
  end

  def visit_floor
    # visits current floor
    # people exit and increases  remaining_capacity
    # people enter and decreases remaining_capacity
    # remove floor from stops array and shaft hash
  end
end

class Shaft
  def initialize(floors)
    @floors = floors
    @requests = {up: [], down: []}
  end

  def external_request(direction, floor)
    @request[direction] << floor
  end
end

class Person
  def initialize(weight)
    @weight = weight
  end
end
