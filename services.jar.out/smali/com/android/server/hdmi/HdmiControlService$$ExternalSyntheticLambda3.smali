.class public final synthetic Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/media/AudioDeviceVolumeManager$OnDeviceVolumeBehaviorChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/hdmi/HdmiControlService;

    return-void
.end method


# virtual methods
.method public final onDeviceVolumeBehaviorChanged(Landroid/media/AudioDeviceAttributes;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->onDeviceVolumeBehaviorChanged(Landroid/media/AudioDeviceAttributes;I)V

    return-void
.end method
