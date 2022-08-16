.class public final Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;
.super Lvendor/google/wireless_charger/V1_2/IWirelessChargerRtxStatusCallback$Stub;
.source "ReverseWirelessCharger.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$LocalRtxInformationCallback;,
        Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$RtxStatusCallback;,
        Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$ReverseChargingChangeListener;,
        Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$RtxInformationCallback;,
        Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$ReverseChargingInformationChangeListener;
    }
.end annotation


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mIsDockPresentCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final mLocalRtxInformationCallback:Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$LocalRtxInformationCallback;

.field public final mLock:Ljava/lang/Object;

.field public final mRtxInformationCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$RtxInformationCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mRtxStatusCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$RtxStatusCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mWirelessCharger:Lvendor/google/wireless_charger/V1_2/IWirelessCharger;


# direct methods
.method public static -$$Nest$smbuildReverseStatusBundle(Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-byte v1, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->mode:B

    const-string v2, "key_rtx_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->acctype:I

    const-string v2, "key_accessory_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v1, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->chg_s:Z

    const-string v2, "key_rtx_connection"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v1, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->iout:I

    const-string v2, "key_rtx_iout"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->vout:I

    const-string v2, "key_rtx_vout"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v1, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->level:I

    const-string v2, "key_rtx_level"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-byte p0, p0, Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;->reason:B

    const-string v1, "key_reason_type"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "ReverseWirelessCharger"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lvendor/google/wireless_charger/V1_2/IWirelessChargerRtxStatusCallback$Stub;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mIsDockPresentCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mRtxInformationCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mRtxStatusCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$LocalRtxInformationCallback;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$LocalRtxInformationCallback;-><init>(Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;)V

    iput-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mLocalRtxInformationCallback:Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$LocalRtxInformationCallback;

    return-void
.end method


# virtual methods
.method public final initHALInterface()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mWirelessCharger:Lvendor/google/wireless_charger/V1_2/IWirelessCharger;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lvendor/google/wireless_charger/V1_2/IWirelessCharger;->getService()Lvendor/google/wireless_charger/V1_2/IWirelessCharger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mWirelessCharger:Lvendor/google/wireless_charger/V1_2/IWirelessCharger;

    invoke-interface {v0, p0}, Lvendor/google/wireless_charger/V1_2/IWirelessCharger;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mWirelessCharger:Lvendor/google/wireless_charger/V1_2/IWirelessCharger;

    invoke-interface {v0, p0}, Lvendor/google/wireless_charger/V1_2/IWirelessCharger;->registerRtxCallback(Lvendor/google/wireless_charger/V1_2/IWirelessChargerRtxStatusCallback;)B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "no wireless charger hal found: "

    invoke-static {v1}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReverseWirelessCharger"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mWirelessCharger:Lvendor/google/wireless_charger/V1_2/IWirelessCharger;

    :cond_0
    :goto_0
    return-void
.end method

.method public final serviceDied(J)V
    .locals 0

    const-string p1, "ReverseWirelessCharger"

    const-string/jumbo p2, "serviceDied"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mWirelessCharger:Lvendor/google/wireless_charger/V1_2/IWirelessCharger;

    return-void
.end method
