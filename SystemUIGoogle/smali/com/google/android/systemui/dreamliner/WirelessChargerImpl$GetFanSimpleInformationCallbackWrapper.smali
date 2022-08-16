.class public final Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetFanSimpleInformationCallbackWrapper;
.super Ljava/lang/Object;
.source "WirelessChargerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetFanSimpleInformationCallbackWrapper"
.end annotation


# instance fields
.field public final mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$GetFanSimpleInformationCallback;

.field public final mFanId:B


# direct methods
.method public constructor <init>(BLcom/google/android/systemui/dreamliner/WirelessCharger$GetFanSimpleInformationCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetFanSimpleInformationCallbackWrapper;->mFanId:B

    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetFanSimpleInformationCallbackWrapper;->mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$GetFanSimpleInformationCallback;

    return-void
.end method


# virtual methods
.method public final onValues(BLvendor/google/wireless_charger/V1_3/FanInfo;)V
    .locals 3

    const-string v0, "command=3, result="

    invoke-static {v0}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", i="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetFanSimpleInformationCallbackWrapper;->mFanId:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", m="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p2, Lvendor/google/wireless_charger/V1_3/FanInfo;->fanMode:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p2, Lvendor/google/wireless_charger/V1_3/FanInfo;->currentRpm:S

    const-string v2, "Dreamliner-WLC_HAL"

    invoke-static {v0, v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetFanSimpleInformationCallbackWrapper;->mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$GetFanSimpleInformationCallback;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Byte;->intValue()I

    move-result p1

    iget-byte p0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetFanSimpleInformationCallbackWrapper;->mFanId:B

    sget v1, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;->$r8$clinit:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "fan_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    iget-byte p0, p2, Lvendor/google/wireless_charger/V1_3/FanInfo;->fanMode:B

    const-string v2, "fan_mode"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    iget-short p0, p2, Lvendor/google/wireless_charger/V1_3/FanInfo;->currentRpm:S

    const-string p2, "fan_current_rpm"

    invoke-virtual {v1, p2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    check-cast v0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanSimpleInformationCallback;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanSimpleInformationCallback;->onCallback(ILandroid/os/Bundle;)V

    return-void
.end method
