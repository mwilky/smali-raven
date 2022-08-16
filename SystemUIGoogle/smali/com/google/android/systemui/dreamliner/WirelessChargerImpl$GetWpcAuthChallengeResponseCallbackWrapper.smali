.class public final Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetWpcAuthChallengeResponseCallbackWrapper;
.super Ljava/lang/Object;
.source "WirelessChargerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetWpcAuthChallengeResponseCallbackWrapper"
.end annotation


# instance fields
.field public final mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$GetWpcAuthChallengeResponseCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dreamliner/WirelessCharger$GetWpcAuthChallengeResponseCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetWpcAuthChallengeResponseCallbackWrapper;->mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$GetWpcAuthChallengeResponseCallback;

    return-void
.end method


# virtual methods
.method public final onValues(BBBBLjava/util/ArrayList;Ljava/util/ArrayList;)V
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

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$GetWpcAuthChallengeResponseCallbackWrapper;->mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$GetWpcAuthChallengeResponseCallback;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Byte;->intValue()I

    move-result v1

    move-object v0, p0

    check-cast v0, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthChallengeResponseCallback;

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthChallengeResponseCallback;->onCallback(IBBBLjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method
