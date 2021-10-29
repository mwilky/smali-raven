.class Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformation;
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
    name = "GetFanInformation"
.end annotation


# instance fields
.field final mFanId:B

.field final mResultReceiver:Landroid/os/ResultReceiver;

.field final synthetic this$0:Lcom/google/android/systemui/dreamliner/DockObserver;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dreamliner/DockObserver;BLandroid/os/ResultReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformation;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p2, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformation;->mFanId:B

    iput-object p3, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformation;->mResultReceiver:Landroid/os/ResultReceiver;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformation;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-static {v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$100(Lcom/google/android/systemui/dreamliner/DockObserver;)Lcom/google/android/systemui/dreamliner/WirelessCharger;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformation;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-static {v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$100(Lcom/google/android/systemui/dreamliner/DockObserver;)Lcom/google/android/systemui/dreamliner/WirelessCharger;

    move-result-object v0

    iget-byte v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformation;->mFanId:B

    new-instance v2, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformationCallback;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformation;->mResultReceiver:Landroid/os/ResultReceiver;

    invoke-direct {v2, v1, p0}, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformationCallback;-><init>(BLandroid/os/ResultReceiver;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/systemui/dreamliner/WirelessCharger;->getFanInformation(BLcom/google/android/systemui/dreamliner/WirelessCharger$GetFanInformationCallback;)V

    return-void
.end method
