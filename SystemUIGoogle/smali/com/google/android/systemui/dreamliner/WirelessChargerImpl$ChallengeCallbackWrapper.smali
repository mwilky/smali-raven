.class public final Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$ChallengeCallbackWrapper;
.super Ljava/lang/Object;
.source "WirelessChargerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/dreamliner/WirelessChargerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ChallengeCallbackWrapper"
.end annotation


# instance fields
.field public final mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$ChallengeCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dreamliner/WirelessCharger$ChallengeCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$ChallengeCallbackWrapper;->mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$ChallengeCallback;

    return-void
.end method


# virtual methods
.method public final onValues(BLjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/WirelessChargerImpl$ChallengeCallbackWrapper;->mCallback:Lcom/google/android/systemui/dreamliner/WirelessCharger$ChallengeCallback;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Byte;->intValue()I

    move-result p1

    check-cast p0, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeCallback;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeCallback;->onCallback(ILjava/util/ArrayList;)V

    return-void
.end method
