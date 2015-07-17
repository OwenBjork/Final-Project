
class Randomly
  def initialize
    @seed = Array.new
    @placement = Array.new
    @start1 = 1 + rand(2)
    @based1 = 1 + rand(3)
    @start2 = 1 + rand(4)
    @based2 = 1 + rand(4)
    @based3 = 1 + rand(2)
    @seed = @seed.push(@start1)
    @seed = @seed.push(@based1)
    @seed = @seed.push(@start2)
    @seed = @seed.push(@based2)
    @seed = @seed.push(@based3)
  end
  def generate(number)
    case number
      when 1
    case @seed[0]
      when 1
      @placement.push (1)
      @placement.push (41)
      @placement.push (81)
      @placement.push (121) 
      @placement.push (161)
      @effected1 = 1
      when 2
      @placement.push (21) 
      @placement.push (61)
      @placement.push(101) 
      @placement.push(141) 
      @placement.push(181)
      @effected1 = 2
    end
      when 2
      case @seed[1]
        when 1
        if @effected1 == 1
          @placement.push (22) 
          @placement.push(62) 
          @placement.push(102) 
          @placement.push(142)
          @placement.push(182)
        else
          @placement.push (2)
          @placement.push(42)
          @placement.push(82)
          @placement.push(122)
          @placement.push(162)
        end
        when 2
        if @effected1 == 1
          @placement.push (23)
          @placement.push(63)
          @placement.push(103)
          @placement.push(143)
          @placement.push(183)
        else
          @placement.push (3)
          @placement.push(43)
          @placement.push(83)
          @placement.push(123)
          @placement.push(163)
        end
        when 3
        if @effected1 == 1
          @placement.push(3)
          @placement.push(43)
          @placement.push(83)
          @placement.push(123)
          @placement.push(163)
        else
          @placement.push(23)
          @placement.push(63)
          @placement.push(103)
          @placement.push(143)
          @placement.push(183)
        end
      end
      when 3
      case @seed[2]
        when 1
          @placement.push(4)
          @placement.push(44)
          @placement.push(84)
          @placement.push(124)
          @placement.push(164)
        @effected = 1
        when 2
        @placement.push(24)
        @placement.push(64)
        @placement.push(104)
        @placement.push(144)
        @placement.push(184)
        @effected = 2
        when 3
        @placement.push(5)
        @placement.push(45)
        @placement.push(85)
        @placement.push(125)
        @placement.push(165)
        @effected = 3
        when 4
        @placement.push(25)
        @placement.push(65)
        @placement.push(105)
        @placement.push(145)
        @placement.push(185)
        @effected = 4
      end
      when 4
      case @seed[3]
        when 1
        if @effected == 1
          @placement.push(25)
          @placement.push(65)
          @placement.push(105)
          @placement.push(145)
          @placement.push(185)
        elsif @effected == 2
          @placement.push(5)
          @placement.push(45)
          @placement.push(85)
          @placement.push(125)
          @placement.push(165)
        elsif @effected == 3
          @placement.push(6)
          @placement.push(46)
          @placement.push(86)
          @placement.push(126)
          @placement.push(166)
        else
          @placement.push(26)
          @placement.push(66)
          @placement.push(106)
          @placement.push(146)
          @placement.push(186)
        end
        when 2
        if @effected == 1
          @placement.push(5)
          @placement.push(45)
          @placement.push(85)
          @placement.push(125)
          @placement.push(165)
        elsif @effected == 2
          @placement.push(25)
          @placement.push(65)
          @placement.push(105)
          @placement.push(145)
          @placement.push(185)
        elsif @effected == 3
          @placement.push(6)
          @placement.push(46)
          @placement.push(86)
          @placement.push(126)
          @placement.push(166)
        else
          @placement.push(26)
          @placement.push(66)
          @placement.push(106)
          @placement.push(146)
          @placement.push(186)
        end
        when 3
        if @effected == 1
          @placement.push(26)
          @placement.push(66)
          @placement.push(106)
          @placement.push(146)
          @placement.push(186)
        elsif @effected == 2
          @placement.push(6)
          @placement.push(46)
          @placement.push(86)
          @placement.push(126)
          @placement.push(166)
        elsif @effected == 3
          @placement.push(0)
          @placement.push(40)
          @placement.push(80)
          @placement.push(120)
          @placement.push(160)

        else
          @placement.push(20)
          @placement.push(60)
          @placement.push(100)
          @placement.push(140)
          @placement.push(180)
        end
        when 4
        if @effected == 1
          @placement.push(6)
          @placement.push(46)
          @placement.push(86)
          @placement.push(126)
          @placement.push(166)
        elsif @effected == 2
          @placement.push(26)
          @placement.push(66)
          @placement.push(106)
          @placement.push(146)
          @placement.push(186)
        elsif @effected == 3
          @placement.push(20)
          @placement.push(60)
          @placement.push(100)
          @placement.push(140)
          @placement.push(180)
        else
          @placement.push(0)
          @placement.push(40)
          @placement.push(80)
          @placement.push(120)
          @placement.push(160)
        end
      end
    end
  end
  def reset
    @placement = Array.new
  end
  def placement
    @placement
  end
  def seed
    @seed
  end
  
end

class BlockGen
  def initialize
    @blocks = Array.new(200, "red")
    @gen = Randomly.new
    @repeat = 1
    while @repeat < 5
      @gen.generate(@repeat)
      @one = @gen.placement[0]
      @two = @gen.placement[1]
      @three = @gen.placement[2]
      @four = @gen.placement[3]
      @five = @gen.placement[4]
      @gen.reset
       if @one >= 0 and @one < 20
         value = @one + 1
         @onereverse = 20 - value
      elsif @one >= 20 and @one < 40
         value = @one - 20
         value +=1
         @onereverse = 40 - value
      elsif @one >= 40 and @one < 60
         value = @one - 40
         value +=1
         @onereverse = 60 - value
      elsif @one >= 60 and @one < 80
         value = @one - 60
         value +=1
         @onereverse = 80 - value
      elsif @one >= 80 and @one < 100
         value = @one - 80
         value +=1
         @onereverse = 100 - value
      elsif @one >= 100 and @one < 120
        value = @one - 100
         value +=1
         @onereverse = 120 - value
      elsif @one >= 120 and @one < 140
        value = @one - 120
         value +=1
         @onereverse = 140 - value
      elsif @one >= 140 and @one < 160
        value = @one - 140
         value +=1
         @onereverse = 160 - value
      elsif @one >= 160 and @one < 180
        value = @one - 160
         value +=1
         @onereverse = 180 - value
      elsif @one >= 180 and @one <200
        value = @one - 180
         value +=1
         @onereverse = 200 - value
      end
       if @two >= 0 and @two < 20
         value = @two + 1
         @tworeverse = 20 - value
      elsif @two >= 20 and @two < 40
         value = @two - 20
         value +=1
         @tworeverse = 40 - value
      elsif @two >= 40 and @two < 60
         value = @two - 40
         value +=1
         @tworeverse = 60 - value
      elsif @two >= 60 and @two < 80
         value = @two - 60
         value +=1
         @tworeverse = 80 - value
      elsif @two >= 80 and @two < 100
         value = @two - 80
         value +=1
         @tworeverse = 100 - value
      elsif @two >= 100 and @two < 120
        value = @two - 100
         value +=1
         @tworeverse = 120 - value
      elsif @two >= 120 and @two < 140
        value = @two - 120
         value +=1
         @tworeverse = 140 - value
      elsif @two >= 140 and @two < 160
        value = @two - 140
         value +=1
         @tworeverse = 160 - value
      elsif @two >= 160 and @two < 180
        value = @two - 160
         value +=1
         @tworeverse = 180 - value
      elsif @two >= 180 and @two <200
        value = @two - 180
         value +=1
         @tworeverse = 200 - value
      end
       if @three >= 0 and @three < 20
         value = @three + 1
         @threereverse = 20 - value
      elsif @three >= 20 and @three < 40
         value = @three - 20
         value +=1
         @threereverse = 40 - value
      elsif @three >= 40 and @three < 60
         value = @three - 40
         value +=1
         @threereverse = 60 - value
      elsif @three >= 60 and @three < 80
         value = @three - 60
         value +=1
         @threereverse = 80 - value
      elsif @three >= 80 and @three < 100
         value = @three - 80
         value +=1
         @threereverse = 100 - value
      elsif @three >= 100 and @three < 120
        value = @three - 100
         value +=1
         @threereverse = 120 - value
      elsif @three >= 120 and @three < 140
        value = @three - 120
         value +=1
         @threereverse = 140 - value
      elsif @three >= 140 and @three < 160
        value = @three - 140
         value +=1
         @threereverse = 160 - value
      elsif @three >= 160 and @three < 180
        value = @three - 160
         value +=1
         @threereverse = 180 - value
      elsif @three >= 180 and @three <200
        value = @three - 180
         value +=1
         @threereverse = 200 - value
      end
       if @four >= 0 and @four < 20
         value = @four + 1
         @fourreverse = 20 - value
      elsif @four >= 20 and @four < 40
         value = @four - 20
         value +=1
         @fourreverse = 40 - value
      elsif @four >= 40 and @four < 60
         value = @four - 40
         value +=1
         @fourreverse = 60 - value
      elsif @four >= 60 and @four < 80
         value = @four - 60
         value +=1
         @fourreverse = 80 - value
      elsif @four >= 80 and @four < 100
         value = @four - 80
         value +=1
         @fourreverse = 100 - value
      elsif @four >= 100 and @four < 120
        value = @four - 100
         value +=1
         @fourreverse = 120 - value
      elsif @four >= 120 and @four < 140
        value = @four - 120
         value +=1
         @fourreverse = 140 - value
      elsif @four >= 140 and @four < 160
        value = @four - 140
         value +=1
         @fourreverse = 160 - value
      elsif @four >= 160 and @four < 180
        value = @four - 160
         value +=1
         @fourreverse = 180 - value
      elsif @four >= 180 and @four <200
        value = @four - 180
         value +=1
         @fourreverse = 200 - value
      end
       if @five >= 0 and @five < 20
         value = @five + 1
         @fivereverse = 20 - value
      elsif @five >= 20 and @five < 40
         value = @five - 20
         value +=1
         @fivereverse = 40 - value
      elsif @five >= 40 and @five < 60
         value = @five - 40
         value +=1
         @fivereverse = 60 - value
      elsif @five >= 60 and @five < 80
         value = @five - 60
         value +=1
         @fivereverse = 80 - value
      elsif @five >= 80 and @five < 100
         value = @five - 80
         value +=1
         @fivereverse = 100 - value
      elsif @five >= 100 and @five < 120
        value = @five - 100
         value +=1
         @fivereverse = 120 - value
      elsif @five >= 120 and @five < 140
        value = @five - 120
         value +=1
         @fivereverse = 140 - value
      elsif @five >= 140 and @five < 160
        value = @five - 140
         value +=1
         @fivereverse = 160 - value
      elsif @five >= 160 and @five < 180
        value = @five - 160
         value +=1
         @fivereverse = 180 - value
      elsif @five >= 180 and @five <200
        value = @five - 180
          value +=1  
         @fivereverse = 200 - value
      end
      @blocks.delete_at(@one)
      @blocks.insert(@one, "blue")
      @blocks.delete_at(@two)
      @blocks.insert(@two, "blue")
      @blocks.delete_at(@three)
      @blocks.insert(@three, "blue")
      @blocks.delete_at(@four)
      @blocks.insert(@four, "blue")
      @blocks.delete_at(@five)
      @blocks.insert(@five, "blue")
      @blocks.delete_at(@onereverse)
      @blocks.insert(@onereverse, "blue")
      @blocks.delete_at(@tworeverse)
      @blocks.insert(@tworeverse, "blue")
      @blocks.delete_at(@threereverse)
      @blocks.insert(@threereverse, "blue")
      @blocks.delete_at(@fourreverse)
      @blocks.insert(@fourreverse, "blue")
      @blocks.delete_at(@fivereverse)
      @blocks.insert(@fivereverse, "blue")


      @repeat +=1
    end
 end
  def blocks
    @blocks
  end
end
stuff = BlockGen.new
puts stuff.blocks