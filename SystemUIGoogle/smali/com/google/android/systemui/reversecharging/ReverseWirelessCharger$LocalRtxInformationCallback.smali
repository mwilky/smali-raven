.class public final Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$LocalRtxInformationCallback;
.super Ljava/lang/Object;
.source "ReverseWirelessCharger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalRtxInformationCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$LocalRtxInformationCallback;->this$0:Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onValues(Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;)V
    .locals 2

    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$LocalRtxInformationCallback;->this$0:Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;

    iget-object v0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->mRtxInformationCallbacks:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$RtxInformationCallback;

    invoke-interface {v0, p1}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$RtxInformationCallback;->onRtxInformationChanged(Lvendor/google/wireless_charger/V1_2/RtxStatusInfo;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
