
import Foundation
protocol sendupdatedvalue: class {
    func UpdateTimer(info : double_t?)
    
  //  init (delegate : double_t)
  // weak var delegate = nil
    
}
 class Stopwatch
{
 //   protocol UpdateTimer
  // init (delegate)
  // {
  //  sendupdatedvalue = nil
  //  }
    
    var counter = 0.0
    var timer = Timer()
    var isPlaying = false
    weak var delegate:sendupdatedvalue? = nil
    
    init?(delegate:sendupdatedvalue?)
    {
        guard let delegate = delegate else {
            return nil
        }
        
        self.delegate=delegate
    }
    
    func startTimer()
    {
        
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(UpdateTimer), userInfo: nil, repeats: true)
        isPlaying = true
        
        
    }
    
    func pauseTimer()
    {
        
        
        timer.invalidate()
        isPlaying = false
    }
    
    func resetTimer()-> double_t?    {
        
        
        timer.invalidate()
        isPlaying = false
        counter = 0.0
      //  counter = counter + 0.1
        delegate?.UpdateTimer (info: counter)
        return counter    }
    

      @objc func UpdateTimer() 
    {
         counter = counter + 0.1
        delegate?.UpdateTimer (info: counter)
 
    }
    
}
