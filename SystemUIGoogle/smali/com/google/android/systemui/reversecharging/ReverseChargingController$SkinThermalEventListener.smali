.class final Lcom/google/android/systemui/reversecharging/ReverseChargingController$SkinThermalEventListener;
.super Landroid/os/IThermalEventListener$Stub;
.source "ReverseChargingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/reversecharging/ReverseChargingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SkinThermalEventListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/reversecharging/ReverseChargingController;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/reversecharging/ReverseChargingController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController$SkinThermalEventListener;->this$0:Lcom/google/android/systemui/reversecharging/ReverseChargingController;

    invoke-direct {p0}, Landroid/os/IThermalEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final notifyThrottling(Landroid/os/Temperature;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyThrottling(): thermal status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReverseChargingControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController$SkinThermalEventListener;->this$0:Lcom/google/android/systemui/reversecharging/ReverseChargingController;

    iget-boolean v0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mReverse:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->setReverseStateInternal(IZ)V

    :cond_0
    return-void
.end method
