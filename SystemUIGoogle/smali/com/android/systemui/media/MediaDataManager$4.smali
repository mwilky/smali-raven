.class public final Lcom/android/systemui/media/MediaDataManager$4;
.super Ljava/lang/Object;
.source "MediaDataManager.kt"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaDataManager;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/media/MediaControllerFactory;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/media/MediaTimeoutListener;Lcom/android/systemui/media/MediaResumeListener;Lcom/android/systemui/media/MediaSessionBasedFilter;Lcom/android/systemui/media/MediaDeviceManager;Lcom/android/systemui/media/MediaDataCombineLatest;Lcom/android/systemui/media/MediaDataFilter;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/media/SmartspaceMediaDataProvider;ZZLcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/tuner/TunerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/MediaDataManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaDataManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaDataManager$4;->this$0:Lcom/android/systemui/media/MediaDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/media/MediaDataManager$4;->this$0:Lcom/android/systemui/media/MediaDataManager;

    invoke-static {p1}, Lcom/android/systemui/media/MediaDataManager;->access$getContext$p(Lcom/android/systemui/media/MediaDataManager;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/systemui/util/Utils;->allowMediaRecommendations(Landroid/content/Context;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/systemui/media/MediaDataManager;->access$setAllowMediaRecommendations$p(Lcom/android/systemui/media/MediaDataManager;Z)V

    iget-object p1, p0, Lcom/android/systemui/media/MediaDataManager$4;->this$0:Lcom/android/systemui/media/MediaDataManager;

    invoke-static {p1}, Lcom/android/systemui/media/MediaDataManager;->access$getAllowMediaRecommendations$p(Lcom/android/systemui/media/MediaDataManager;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager$4;->this$0:Lcom/android/systemui/media/MediaDataManager;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaDataManager;->getSmartspaceMediaData()Lcom/android/systemui/media/SmartspaceMediaData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/media/SmartspaceMediaData;->getTargetId()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/media/MediaDataManager;->dismissSmartspaceRecommendation(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method
