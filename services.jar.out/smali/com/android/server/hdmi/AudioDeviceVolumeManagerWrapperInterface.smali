.class public interface abstract Lcom/android/server/hdmi/AudioDeviceVolumeManagerWrapperInterface;
.super Ljava/lang/Object;
.source "AudioDeviceVolumeManagerWrapperInterface.java"


# virtual methods
.method public abstract addOnDeviceVolumeBehaviorChangedListener(Ljava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;)V
.end method

.method public abstract setDeviceAbsoluteVolumeBehavior(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;Ljava/util/concurrent/Executor;Landroid/media/AudioDeviceVolumeManager$OnAudioDeviceVolumeChangedListener;Z)V
.end method
