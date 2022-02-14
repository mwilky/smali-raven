.class final Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;
.super Landroid/media/ISpatializerHeadTrackingCallback$Stub;
.source "SpatializerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/SpatializerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SpatializerHeadTrackingCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/SpatializerHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/audio/SpatializerHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    invoke-direct {p0}, Landroid/media/ISpatializerHeadTrackingCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/audio/SpatializerHelper;Lcom/android/server/audio/SpatializerHelper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;-><init>(Lcom/android/server/audio/SpatializerHelper;)V

    return-void
.end method


# virtual methods
.method public onHeadToSoundStagePoseUpdated([F)V
    .locals 3

    const-string v0, "AS.SpatializerHelper"

    if-nez p1, :cond_0

    const-string v1, "SpatializerHeadTrackingCallback.onHeadToStagePoseUpdatednull transform"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    array-length v1, p1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpatializerHeadTrackingCallback.onHeadToStagePoseUpdated invalid transform length"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    invoke-static {v0, p1}, Lcom/android/server/audio/SpatializerHelper;->access$1000(Lcom/android/server/audio/SpatializerHelper;[F)V

    return-void
.end method

.method public onHeadTrackingModeChanged(B)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpatializerHeadTrackingCallback.onHeadTrackingModeChanged mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->access$100(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    invoke-static {v0}, Lcom/android/server/audio/SpatializerHelper;->access$700(Lcom/android/server/audio/SpatializerHelper;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    invoke-static {p1}, Lcom/android/server/audio/SpatializerHelper;->access$800(B)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/audio/SpatializerHelper;->access$702(Lcom/android/server/audio/SpatializerHelper;I)I

    iget-object v1, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    invoke-static {v1}, Lcom/android/server/audio/SpatializerHelper;->access$700(Lcom/android/server/audio/SpatializerHelper;)I

    move-result v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/SpatializerHelper$SpatializerHeadTrackingCallback;->this$0:Lcom/android/server/audio/SpatializerHelper;

    invoke-static {v2, v1}, Lcom/android/server/audio/SpatializerHelper;->access$900(Lcom/android/server/audio/SpatializerHelper;I)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
