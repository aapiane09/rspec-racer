class Car
  # read & write speed to a car
  attr_accessor :speed

  def initialize
    # set the speed to 0 when a new car is created
    @speed = 0
  end

  def accelerate(speed_change)
    # add the speed change to the speed to accelerate
    @speed += speed_change
  end

  def brake(speed_change)
    if @speed - speed_change < 0
      @speed = 0
    else
      @speed -= speed_change
    end
  end

end
