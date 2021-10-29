.class Lcom/google/android/systemui/dreamliner/DockObserver$GetFeatures;
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
    name = "GetFeatures"
.end annotation


# instance fields
.field final mChargerId:J

.field final mResultReceiver:Landroid/os/ResultReceiver;

.field final synthetic this$0:Lcom/google/android/systemui/dreamliner/DockObserver;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/os/ResultReceiver;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFeatures;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFeatures;->mResultReceiver:Landroid/os/ResultReceiver;

    iput-wide p3, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFeatures;->mChargerId:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFeatures;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-static {v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$100(Lcom/google/android/systemui/dreamliner/DockObserver;)Lcom/google/android/systemui/dreamliner/WirelessCharger;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFeatures;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-static {v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$100(Lcom/google/android/systemui/dreamliner/DockObserver;)Lcom/google/android/systemui/dreamliner/WirelessCharger;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFeatures;->mChargerId:J

    new-instance v3, Lcom/google/android/systemui/dreamliner/DockObserver$GetFeaturesCallback;

    iget-object v4, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFeatures;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFeatures;->mResultReceiver:Landroid/os/ResultReceiver;

    invoke-direct {v3, v4, p0}, Lcom/google/android/systemui/dreamliner/DockObserver$GetFeaturesCallback;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/os/ResultReceiver;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/systemui/dreamliner/WirelessCharger;->getFeatures(JLcom/google/android/systemui/dreamliner/WirelessCharger$GetFeaturesCallback;)V

    return-void
.end method
