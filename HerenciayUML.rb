class Appointment
  attr_accessor :location, :purpose, :hour, :min
  def initialize(location,purpose,hour,min)
    @location=location
    @purpose = purpose
    @hour = hour
    @min = min
  end
end

class MonthlyAppointment < Appointment
  attr_accessor :day
  def initialize(location,purpose,day,hour,min)
    super(location,purpose,hour,min)
    @day = day
  end

  def occurs_on?(day)
    day == @day
  end
  def to_s 
    "Reunión mensual en #{location} sobre #{purpose} el día #{day} a las #{hour}:#{min}"
  end
end

class DailyAppointment < Appointment

  def occurs_on?(hour,min)
    hour == @hour && hour == @min
  end

  def to_s
    #ejemplo ejercicio
    "Reunión diaria en #{location} Sobre #{purpose} a las #{hour}:#{min}"
  end

end

class OneTimeAppointment < Appointment
  attr_accessor :day, :month, :year
  def initialize(location,purpose,hour,min,day,month,year)
    super(location,purpose,min,hour)
    @day = day
    @month = month
    @year = year
  end

  def occurs_on?(year,day,month)
    year == @year && day == @day && month == @month
  end
  def to_s 
    "Reunión única en #{location} sobre #{purpose}, el #{day}/#{month}/#{year} a las #{hour}:#{min} "
  end

end

  
