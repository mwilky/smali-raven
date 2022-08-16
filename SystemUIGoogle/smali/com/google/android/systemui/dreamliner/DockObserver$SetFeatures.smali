.class public final Lcom/google/android/systemui/dreamliner/DockObserver$SetFeatures;
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
    name = "SetFeatures"
.end annotation


# instance fields
.field public final mChargerId:J

.field public final mFeature:J

.field public final mResultReceiver:Landroid/os/ResultReceiver;

.field public final synthetic this$0:Lcom/google/android/systemui/dreamliner/DockObserver;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/os/ResultReceiver;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$SetFeatures;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/DockObserver$SetFeatures;->mResultReceiver:Landroid/os/ResultReceiver;

    iput-wide p3, p0, Lcom/google/android/systemui/dreamliner/DockObserver$SetFeatures;->mChargerId:J

    iput-wide p5, p0, Lcom/google/android/systemui/dreamliner/DockObserver$SetFeatures;->mFeature:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$SetFeatures;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mWirelessCharger:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$SetFeatures;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockObserver;->mWirelessCharger:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/systemui/dreamliner/WirelessCharger;

    iget-wide v2, p0, Lcom/google/android/systemui/dreamliner/DockObserver$SetFeatures;->mChargerId:J

    iget-wide v4, p0, Lcom/google/android/systemui/dreamliner/DockObserver$SetFeatures;->mFeature:J

    new-instance v6, Lcom/google/android/systemui/dreamliner/DockObserver$SetFeatures$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/google/android/systemui/dreamliner/DockObserver$SetFeatures$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/systemui/dreamliner/WirelessCharger;->setFeatures(JJLcom/google/android/systemui/dreamliner/DockObserver$SetFeatures$$ExternalSyntheticLambda0;)V

    :cond_0
    return-void
.end method
