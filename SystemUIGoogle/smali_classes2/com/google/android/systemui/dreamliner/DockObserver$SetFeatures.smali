.class Lcom/google/android/systemui/dreamliner/DockObserver$SetFeatures;
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
    name = "SetFeatures"
.end annotation


# instance fields
.field final mChargerId:J

.field final mFeature:J

.field final mResultReceiver:Landroid/os/ResultReceiver;

.field final synthetic this$0:Lcom/google/android/systemui/dreamliner/DockObserver;


# direct methods
.method public static synthetic $r8$lambda$mOWHXfYKEQ7oL2--k4219BYpB3U(Lcom/google/android/systemui/dreamliner/DockObserver$SetFeatures;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver$SetFeatures;->lambda$run$0(I)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/os/ResultReceiver;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$SetFeatures;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/DockObserver$SetFeatures;->mResultReceiver:Landroid/os/ResultReceiver;

    iput-wide p3, p0, Lcom/google/android/systemui/dreamliner/DockObserver$SetFeatures;->mChargerId:J

    iput-wide p5, p0, Lcom/google/android/systemui/dreamliner/DockObserver$SetFeatures;->mFeature:J

    return-void
.end method

.method private synthetic lambda$run$0(I)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$SetFeatures;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$SetFeatures;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-static {v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$100(Lcom/google/android/systemui/dreamliner/DockObserver;)Lcom/google/android/systemui/dreamliner/WirelessCharger;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$SetFeatures;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-static {v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->access$100(Lcom/google/android/systemui/dreamliner/DockObserver;)Lcom/google/android/systemui/dreamliner/WirelessCharger;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/systemui/dreamliner/DockObserver$SetFeatures;->mChargerId:J

    iget-wide v4, p0, Lcom/google/android/systemui/dreamliner/DockObserver$SetFeatures;->mFeature:J

    new-instance v6, Lcom/google/android/systemui/dreamliner/DockObserver$SetFeatures$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/google/android/systemui/dreamliner/DockObserver$SetFeatures$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/dreamliner/DockObserver$SetFeatures;)V

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/systemui/dreamliner/WirelessCharger;->setFeatures(JJLcom/google/android/systemui/dreamliner/WirelessCharger$SetFeaturesCallback;)V

    return-void
.end method
