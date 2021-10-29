.class Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthDigests;
.super Ljava/lang/Object;
.source "DockObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/dreamliner/DockObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetWpcAuthDigests"
.end annotation


# instance fields
.field final mResultReceiver:Landroid/os/ResultReceiver;

.field final mSlotMask:B

.field final synthetic this$0:Lcom/google/android/systemui/dreamliner/DockObserver;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/os/ResultReceiver;B)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthDigests;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthDigests;->mResultReceiver:Landroid/os/ResultReceiver;

    iput-byte p3, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthDigests;->mSlotMask:B

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthDigests;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-static {v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$100(Lcom/google/android/systemui/dreamliner/DockObserver;)Lcom/google/android/systemui/dreamliner/WirelessCharger;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthDigests;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-static {v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$100(Lcom/google/android/systemui/dreamliner/DockObserver;)Lcom/google/android/systemui/dreamliner/WirelessCharger;

    move-result-object v0

    iget-byte v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthDigests;->mSlotMask:B

    new-instance v2, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthDigestsCallback;

    iget-object v3, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthDigests;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthDigests;->mResultReceiver:Landroid/os/ResultReceiver;

    invoke-direct {v2, v3, p0}, Lcom/google/android/systemui/dreamliner/DockObserver$GetWpcAuthDigestsCallback;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/os/ResultReceiver;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/systemui/dreamliner/WirelessCharger;->getWpcAuthDigests(BLcom/google/android/systemui/dreamliner/WirelessCharger$GetWpcAuthDigestsCallback;)V

    return-void
.end method
