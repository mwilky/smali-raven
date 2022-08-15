.class public final synthetic Lcom/android/server/hdmi/HdmiCecLocalDevice$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Lcom/android/server/hdmi/SetAudioVolumeLevelDiscoveryAction;

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->$r8$lambda$aCGH6-ZOm8iS4N41KsYka1uIJpY(ILcom/android/server/hdmi/SetAudioVolumeLevelDiscoveryAction;)Z

    move-result p0

    return p0
.end method
