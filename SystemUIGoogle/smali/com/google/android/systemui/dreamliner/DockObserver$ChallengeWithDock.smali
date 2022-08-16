.class public final Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeWithDock;
.super Ljava/lang/Object;
.source "DockObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/dreamliner/DockObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChallengeWithDock"
.end annotation


# instance fields
.field public final challengeData:[B

.field public final dockId:B

.field public final resultReceiver:Landroid/os/ResultReceiver;

.field public final synthetic this$0:Lcom/google/android/systemui/dreamliner/DockObserver;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/os/ResultReceiver;B[B)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeWithDock;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p3, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeWithDock;->dockId:B

    iput-object p4, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeWithDock;->challengeData:[B

    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeWithDock;->resultReceiver:Landroid/os/ResultReceiver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeWithDock;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mWirelessCharger:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeWithDock;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mWirelessCharger:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/dreamliner/WirelessCharger;

    iget-byte v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeWithDock;->dockId:B

    iget-object v2, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeWithDock;->challengeData:[B

    new-instance v3, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeCallback;

    iget-object v4, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeWithDock;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeWithDock;->resultReceiver:Landroid/os/ResultReceiver;

    invoke-direct {v3, v4, p0}, Lcom/google/android/systemui/dreamliner/DockObserver$ChallengeCallback;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/os/ResultReceiver;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/systemui/dreamliner/WirelessCharger;->challenge(B[BLcom/google/android/systemui/dreamliner/WirelessCharger$ChallengeCallback;)V

    :cond_0
    return-void
.end method
