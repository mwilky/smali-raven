.class final Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetWpcAuthDigestsCallbackWrapper;
.super Ljava/lang/Object;
.source "WirelessChargerImpl.java"

# interfaces
.implements Lvendor/google/wireless_charger/V1_3/IWirelessCharger$getWpcAuthDigestsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GetWpcAuthDigestsCallbackWrapper"
.end annotation


# instance fields
.field private final mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$GetWpcAuthDigestsCallback;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/dreamliner/WirelessCharger$GetWpcAuthDigestsCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetWpcAuthDigestsCallbackWrapper;->mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$GetWpcAuthDigestsCallback;

    return-void
.end method


# virtual methods
.method public onValues(BBBLjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BBB",
            "Ljava/util/ArrayList<",
            "[B>;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetWpcAuthDigestsCallbackWrapper;->mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$GetWpcAuthDigestsCallback;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Byte;->intValue()I

    move-result p1

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/google/android/systemui/dreamliner/WirelessCharger$GetWpcAuthDigestsCallback;->onCallback(IBBLjava/util/ArrayList;)V

    return-void
.end method
