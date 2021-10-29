.class final Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetWpcAuthChallengeResponseCallbackWrapper;
.super Ljava/lang/Object;
.source "WirelessChargerImpl.java"

# interfaces
.implements Lvendor/google/wireless_charger/V1_3/IWirelessCharger$getWpcAuthChallengeResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GetWpcAuthChallengeResponseCallbackWrapper"
.end annotation


# instance fields
.field private final mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$GetWpcAuthChallengeResponseCallback;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/dreamliner/WirelessCharger$GetWpcAuthChallengeResponseCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetWpcAuthChallengeResponseCallbackWrapper;->mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$GetWpcAuthChallengeResponseCallback;

    return-void
.end method


# virtual methods
.method public onValues(BBBBLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BBBB",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetWpcAuthChallengeResponseCallbackWrapper;->mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$GetWpcAuthChallengeResponseCallback;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Byte;->intValue()I

    move-result v1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/android/systemui/dreamliner/WirelessCharger$GetWpcAuthChallengeResponseCallback;->onCallback(IBBBLjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method
