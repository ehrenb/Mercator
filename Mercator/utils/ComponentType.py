class ComponentType:
    ACTIVITY = 'activity'
    SERVICE = 'service'
    PROVIDER = 'provider'
    RECEIVER = 'receiver'

class NonComponentType:
    EXTERNAL = 'external'#external code from the OS that we can't decompile (runtime loaded)
    INTERNAL = 'internal'#internal code that can be decompiler, but not activity,recver,provider,service