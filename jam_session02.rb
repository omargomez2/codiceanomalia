# Welcome to Sonic Pi
# Omar G2
# May 2021
# 333

use_bpm 128

live_loop :clock do
  sleep 32
end

#live_loop :clock2 do
#  sleep 1
#end

#Noise sweep
define :noise_sweep do
  use_synth :noise
  with_fx :reverb do
    with_fx :echo do
      i=30
      in_thread do
        sync :clock
        sleep 9
        90.times do
          play :C4, amp: 0.2, cutoff: i, sustain: 2
          sleep 0.25
          i=i+1
          #stop if i == 110
        end
      end
    end
  end
end

#Snare roll
define :snare_roll do
  in_thread do
    #stop
    sync :clock
    sleep 24
    0.times do #8
      sleep 0.5
      sample :drum_snare_hard, amp: rrand(0.2, 0.6)
    end
    32.times do
      sleep 0.25
      sample :drum_snare_hard, amp: rrand(0.5, 0.6), cutoff: 115
    end
  end
end

#Motif
define :motif do
  with_fx :reverb do
    detune = 0.3
    in_thread do
      sync :clock
      #play :e4, amp: 0.3, sustain: 3, release: 1, attack: 0
      synth :dsaw, note: :e4, amp: 0.3, sustain: 3, release: 0.9, attack: 0.1
      synth :supersaw, note: :e5, amp: 0.2, sustain: 3, release: 0.9, attack: 0.1
      synth :mod_fm, note: :e4 + detune, amp: 0.1, sustain: 3, release: 0.9, attack: 0.1, pan: rrand(-0.5,0.5)
      sleep 4
      #play :d4, amp: 0.3, sustain: 3, release: 1, attack: 0
      synth :dsaw, note: :d4, amp: 0.3, sustain: 3, release: 0.9, attack: 0.1
      synth :supersaw, note: :d5, amp: 0.2, sustain: 3, release: 0.9, attack: 0.1
      synth :mod_fm, note: :d4 + detune, amp: 0.1, sustain: 3, release: 0.9, attack: 0.1, pan: rrand(-0.5,0.5)
      sleep 4
      
      #play :fs4, amp: 0.3, sustain: 3, release: 1, attack: 0
      synth :dsaw, note: :fs4, amp: 0.3, sustain: 3, release: 0.9, attack: 0.1
      synth :supersaw, note: :fs5, amp: 0.2, sustain: 3, release: 0.9, attack: 0.1
      synth :mod_fm, note: :fs4 + detune, amp: 0.1, sustain: 3, release: 0.9, attack: 0.1, pan: rrand(-0.5,0.5)
      sleep 4
      #play :g4, amp: 0.3, sustain: 1, release: 1, attack: 0
      synth :dsaw, note: :g4, amp: 0.3, sustain: 1, release: 0.9, attack: 0.1
      synth :supersaw, note: :g5, amp: 0.2, sustain: 1, release: 0.9, attack: 0.1
      synth :mod_fm, note: :g4 + detune, amp: 0.1, sustain: 1, release: 0.9, attack: 0.1, pan: rrand(-0.5,0.5)
      sleep 2
      #play :a4, amp: 0.3, sustain: 1, release: 1, attack: 0
      synth :dsaw, note: :a4, amp: 0.3, sustain: 1, release: 0.9, attack: 0.1
      synth :supersaw, note: :a5, amp: 0.2, sustain: 1, release: 0.9, attack: 0.1
      synth :mod_fm, note: :a4 + detune, amp: 0.1, sustain: 1, release: 0.9, attack: 0.1, pan: rrand(-0.5,0.5)
      sleep 2
      
      #play :e4, amp: 0.3, sustain: 3, release: 1, attack: 0
      synth :dsaw, note: :e4, amp: 0.3, sustain: 3, release: 0.9, attack: 0.1
      synth :supersaw, note: :e5, amp: 0.2, sustain: 3, release: 0.9, attack: 0.1
      synth :mod_fm, note: :e4 + detune, amp: 0.1, sustain: 3, release: 0.9, attack: 0.1, pan: rrand(-0.5,0.5)
      sleep 4
      #play :fs4, amp: 0.3, sustain: 1, release: 1, attack: 0
      synth :dsaw, note: :fs4, amp: 0.3, sustain: 1, release: 0.9, attack: 0.1
      synth :supersaw, note: :fs5, amp: 0.2, sustain: 1, release: 0.9, attack: 0.1
      synth :mod_fm, note: :fs4 + detune, amp: 0.1, sustain: 1, release: 0.9, attack: 0.1, pan: rrand(-0.5,0.5)
      sleep 2
      #play :e4, amp: 0.3, sustain: 1, release: 1, attack: 0
      synth :dsaw, note: :e4, amp: 0.3, sustain: 1, release: 0.9, attack: 0.1
      synth :supersaw, note: :e5, amp: 0.2, sustain: 1, release: 0.9, attack: 0.1
      synth :mod_fm, note: :e4 + detune, amp: 0.1, sustain: 1, release: 0.9, attack: 0.1, pan: rrand(-0.5,0.5)
      sleep 2
      
      #play :e4, amp: 0.3, sustain: 1, release: 1, attack: 0
      synth :dsaw, note: :e4, amp: 0.3, sustain: 1, release: 0.9, attack: 0.1
      synth :supersaw, note: :e5, amp: 0.2, sustain: 1, release: 0.9, attack: 0.1
      synth :mod_fm, note: :e4 + detune, amp: 0.1, sustain: 1, release: 0.9, attack: 0.1, pan: rrand(-0.5,0.5)
      sleep 2
      #play :d4, amp: 0.3, sustain: 1, release: 1, attack: 0
      synth :dsaw, note: :d4, amp: 0.3, sustain: 1, release: 0.9, attack: 0.1
      synth :supersaw, note: :d5, amp: 0.2, sustain: 1, release: 0.9, attack: 0.1
      synth :mod_fm, note: :d4 + detune, amp: 0.1, sustain: 1, release: 0.9, attack: 0.1, pan: rrand(-0.5,0.5)
      sleep 2
      #play :fs4, amp: 0.3, sustain: 1, release: 1, attack: 0
      synth :dsaw, note: :fs4, amp: 0.3, sustain: 1, release: 0.9, attack: 0.1
      synth :supersaw, note: :fs5, amp: 0.2, sustain: 1, release: 0.9, attack: 0.1
      synth :mod_fm, note: :fs4 + detune, amp: 0.1, sustain: 1, release: 0.9, attack: 0.1, pan: rrand(-0.5,0.5)
      sleep 2
      #play :g4, amp: 0.3, sustain: 1, release: 1, attack: 0
      synth :dsaw, note: :g4, amp: 0.3, sustain: 1, release: 0.9, attack: 0.1
      synth :supersaw, note: :g5, amp: 0.2, sustain: 1, release: 0.9, attack: 0.1
      synth :mod_fm, note: :g4 + detune, amp: 0.1, sustain: 1, release: 0.9, attack: 0.1, pan: rrand(-0.5,0.5)
      sleep 2
    end
  end
end




#Pad
live_loop :pad2, sync: :clock do
  stop
  detune = 0.3
  synth :fm, notes: (chord :c4, :major, invert: 2), amp: 0.4,             attack: 1, sustain: 7, release: 1
  synth :growl, notes: (chord :c5, :major, invert: 2) + detune, amp: 0.6, attack: 1, sustain: 7, release: 1
  synth :subpulse, notes: (chord :c4, :major, invert: 2) + detune, amp: 0.4, attack: 1, sustain: 7, release: 1
  synth :tri, notes: (chord :c3, :major, invert: 2) + detune, amp: 0.5, attack: 1, sustain: 7, release: 1
  #synth :gnoise, release: 2, amp: 1, cutoff: 60
  sleep 8
  
  detune = 0.3
  synth :fm, notes: (chord :b4, :minor), amp: 0.4,             attack: 1, sustain: 7, release: 1
  synth :growl, notes: (chord :b5, :minor) + detune, amp: 0.6, attack: 1, sustain: 7, release: 1
  synth :subpulse, notes: (chord :b4, :minor) + detune, amp: 0.4, attack: 1, sustain: 7, release: 1
  synth :tri, notes: (chord :b3, :minor) + detune, amp: 0.5, attack: 1, sustain: 7, release: 1
  sleep 8
  
  detune = 0.3
  synth :fm, notes: (chord :e4, :minor, invert: 1), amp: 0.4,             attack: 1, sustain: 7, release: 1
  synth :growl, notes: (chord :e5, :minor, invert: 1) + detune, amp: 0.6, attack: 1, sustain: 7, release: 1
  synth :subpulse, notes: (chord :e4, :minor, invert: 1) + detune, amp: 0.4, attack: 1, sustain: 7, release: 1
  synth :tri, notes: (chord :e3, :minor, invert: 1) + detune, amp: 0.5, attack: 1, sustain: 7, release: 1
  sleep 8
  
  detune = 0.3
  synth :fm, notes: (chord :a4, :minor), amp: 0.4,             attack: 1, sustain: 7, release: 1
  synth :growl, notes: (chord :a5, :minor) + detune, amp: 0.6, attack: 1, sustain: 7, release: 1
  synth :subpulse, notes: (chord :a4, :minor) + detune, amp: 0.4, attack: 1, sustain: 7, release: 1
  synth :tri, notes: (chord :a3, :minor) + detune, amp: 0.5, attack: 1, sustain: 7, release: 1
  sleep 8
end

#Canonic
use_synth :fm
live_loop :canonic, sync: :clock do
  stop
  play :c2, amp: 0.7, sustain: 8, release: 1
  sleep 8
  play :b2, amp: 0.7, sustain: 8, release: 1
  sleep 8
  play :e2, amp: 0.7, sustain: 8, release: 1
  sleep 8
  play :a2, amp: 0.7, sustain: 8, release: 1
  sleep 8
end

#FX
with_fx :echo do
  #sample :ambi_lunar_land, amp: 0.35, pan: rrand(-0.2, 0.2)
end


#motif
#snare_roll
#noise_sweep




#Arpeggio
use_synth :pluck
a = 1
live_loop :arp, sync: :clock do
  play (scale :e3, :minor_pentatonic, num_octaves: 2).choose, release: 0.2, amp: a, pan: rrand(-0.4, 0.4)
  sleep 0.25
  a = a - 0.01
  stop if a <= 0
end

#Lead 2
with_fx :echo do
  with_fx :reverb, room: 1 do
    with_fx :distortion, amp: 0.7 do
      use_synth :prophet
      live_loop :lead2, sync: :clock do
        use_random_seed rrand(310000,310999)
        stop
        ns = (scale :e4, :minor_pentatonic, num_octaves: 3).take(2)
        3.times do
          play ns.choose, detune: 12, cutoff: rrand(80, 110), amp: 0.5, attack: 0.1, sustain: 0.5, release: 0.1
          sleep [0.5, 1].choose
        end
        sleep 8
        
        ns = (scale :e3, :minor_pentatonic, num_octaves: 3).take(4)
        4.times do
          play ns.choose, detune: 12, cutoff: rrand(80, 110), amp: 0.5, attack: 0.1, sustain: 0.5, release: 0.1
          sleep [0.5, 1].choose
        end
        sleep 12
        
        ns = (scale :e4, :minor_pentatonic, num_octaves: 3).take(1)
        1.times do
          play ns.choose, detune: 12, cutoff: rrand(80, 110), amp: 0.5, attack: 0.1, sustain: 0.5, release: 0.1
          sleep 2
        end
        sleep 20
        
        ns = (scale :e3, :minor_pentatonic, num_octaves: 3).take(5)
        10.times do
          play ns.tick, detune: 12, cutoff: rrand(80, 110), amp: 0.5, attack: 0.1, sustain: 0.5, release: 0.1
          sleep [0.5, 1].choose
        end
        sleep 8
        
        ns = (scale :e4, :minor_pentatonic, num_octaves: 3).take(1)
        2.times do
          play ns.choose, detune: 12, cutoff: rrand(80, 110), amp: 0.5, attack: 0.1, sustain: 0.5, release: 0.1
          sleep [0.75, 1.25].choose
        end
        sleep 12
      end
    end
  end
end


#Acid
with_fx :reverb, room: 0.8 do
  use_synth :tb303
  live_loop :space_scanner, sync: :clock do
    stop
    with_fx :slicer, phase: 0.25, amp: 0.3 do
      co = (line 70, 130, steps: 8).tick
      play :e1, cutoff: co, release: 7, attack: 1, cutoff_attack: 4, cutoff_release: 4
      sleep 8
    end
  end
  
  live_loop :acid2, sync: :clock do
    stop
    use_random_seed 3000
    16.times do
      n = (ring :e1, :e2, :e3).tick
      play n, release: 0.2, cutoff: rrand(80, 125), res: 0.9, wave: 1, amp: 0.2, sustain: [0.5, 0.25].choose
      sleep [0.25].choose #0.25
    end
  end
end



#Bass
use_synth :fm
live_loop :bass, sync: :clock do
  stop
  b = 0.25 #0.5 #0.25
  r = 32 #16 #32
  with_fx :bitcrusher, mix: 0.5, amp: 0.7 do
    with_fx :distortion, mix: 0.6, amp: 0.7 do
      with_fx :nrlpf, amp: 0.06 do
        #sleep 0.5
        4.times do
          play :c3, attack: 0, release: 0.45, amp: [0.02, 0.05, 0.2, 0.1].tick
          sleep 0.25
        end
        
        #sleep 0.5
        4.times do
          play :b3, attack: 0, release: 0.45, amp: [0.02, 0.05, 0.2, 0.1].tick
          sleep b
        end
        
        #sleep 0.5
        4.times do
          play :e3, attack: 0, release: 0.45, amp: [0.02, 0.05, 0.2, 0.1].tick
          sleep b
        end
        
        #sleep 0.5
        4.times do
          play :a3, attack: 0, release: 0.45, amp: [0.02, 0.05, 0.2, 0.1].tick
          sleep b
        end
      end
    end
  end
end

#Drums
#CHH
live_loop :cymb2, sync: :clock do
  stop
  sample :drum_cymbal_closed, amp: rrand(0.3,0.9), pan: rrand(-0.5,0.5)
  sleep 0.25
  sample :drum_cymbal_closed, amp: rrand(0.3,0.9), pan: rrand(-0.4,0.4)
  sleep 0.25
  sample :drum_cymbal_closed, amp: rrand(0.3,0.9), pan: rrand(-0.5,0.5)
  sleep 0.25
  sample :drum_cymbal_closed, amp: rrand(0.3,0.9), pan: rrand(-0.2,0.2)
  sleep 0.25
end

#Cymbal
live_loop :cymb, sync: :clock do
  stop
  sleep 0.5
  sample :drum_cymbal_soft, pan: -0.4, amp: 0.7
  sleep 1.5
end

#Kick
live_loop :kick, sync: :clock do
  stop
  sample :bd_haus
  sleep 1
end

#snare
live_loop :snare do
  stop
  sync :kick
  sleep 1
  sample :drum_snare_hard, amp: 0.6
end

#snare_roll
#noise_sweep
#motif

