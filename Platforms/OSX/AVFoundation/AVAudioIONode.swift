
@available(OSX 10.10, *)
class AVAudioIONode : AVAudioNode {
  var presentationLatency: NSTimeInterval { get }
  var audioUnit: AudioUnit { get }
}
@available(OSX 10.10, *)
class AVAudioInputNode : AVAudioIONode, AVAudioMixing {
  @available(OSX 10.11, *)
  func destination(forMixer mixer: AVAudioNode, bus bus: AVAudioNodeBus) -> AVAudioMixingDestination?
  @available(OSX 10.10, *)
  var volume: Float
  @available(OSX 10.10, *)
  var pan: Float
  @available(OSX 10.10, *)
  var renderingAlgorithm: AVAudio3DMixingRenderingAlgorithm
  @available(OSX 10.10, *)
  var rate: Float
  @available(OSX 10.10, *)
  var reverbBlend: Float
  @available(OSX 10.10, *)
  var obstruction: Float
  @available(OSX 10.10, *)
  var occlusion: Float
  @available(OSX 10.10, *)
  var position: AVAudio3DPoint
}
@available(OSX 10.10, *)
class AVAudioOutputNode : AVAudioIONode {
}
