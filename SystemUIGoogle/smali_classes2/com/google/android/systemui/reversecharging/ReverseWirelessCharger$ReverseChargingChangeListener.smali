.class public interface abstract Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$ReverseChargingChangeListener;
.super Ljava/lang/Object;
.source "ReverseWirelessCharger.java"

# interfaces
.implements Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$RtxStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ReverseChargingChangeListener"
.end annotation


# virtual methods
.method public abstract onReverseStatusChanged(Landroid/os/Bundle;)V
.end method

.method public onRtxStatusChanged(Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;)V
    .locals 2

    invoke-static {}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRtxStatusChanged() RtxStatusInfo : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReverseWirelessCharger"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->access$200(Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;)Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$ReverseChargingChangeListener;->onReverseStatusChanged(Landroid/os/Bundle;)V

    return-void
.end method
