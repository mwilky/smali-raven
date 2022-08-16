.class public final Lcom/android/systemui/media/MediaDataManager$addResumptionControls$1;
.super Ljava/lang/Object;
.source "MediaDataManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $action:Ljava/lang/Runnable;

.field public final synthetic $appIntent:Landroid/app/PendingIntent;

.field public final synthetic $appName:Ljava/lang/String;

.field public final synthetic $desc:Landroid/media/MediaDescription;

.field public final synthetic $packageName:Ljava/lang/String;

.field public final synthetic $token:Landroid/media/session/MediaSession$Token;

.field public final synthetic $userId:I

.field public final synthetic this$0:Lcom/android/systemui/media/MediaDataManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaDataManager;ILandroid/media/MediaDescription;Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaDataManager$addResumptionControls$1;->this$0:Lcom/android/systemui/media/MediaDataManager;

    iput p2, p0, Lcom/android/systemui/media/MediaDataManager$addResumptionControls$1;->$userId:I

    iput-object p3, p0, Lcom/android/systemui/media/MediaDataManager$addResumptionControls$1;->$desc:Landroid/media/MediaDescription;

    iput-object p4, p0, Lcom/android/systemui/media/MediaDataManager$addResumptionControls$1;->$action:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/android/systemui/media/MediaDataManager$addResumptionControls$1;->$token:Landroid/media/session/MediaSession$Token;

    iput-object p6, p0, Lcom/android/systemui/media/MediaDataManager$addResumptionControls$1;->$appName:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/systemui/media/MediaDataManager$addResumptionControls$1;->$appIntent:Landroid/app/PendingIntent;

    iput-object p8, p0, Lcom/android/systemui/media/MediaDataManager$addResumptionControls$1;->$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/media/MediaDataManager$addResumptionControls$1;->this$0:Lcom/android/systemui/media/MediaDataManager;

    iget v3, v0, Lcom/android/systemui/media/MediaDataManager$addResumptionControls$1;->$userId:I

    iget-object v5, v0, Lcom/android/systemui/media/MediaDataManager$addResumptionControls$1;->$desc:Landroid/media/MediaDescription;

    iget-object v10, v0, Lcom/android/systemui/media/MediaDataManager$addResumptionControls$1;->$action:Ljava/lang/Runnable;

    iget-object v8, v0, Lcom/android/systemui/media/MediaDataManager$addResumptionControls$1;->$token:Landroid/media/session/MediaSession$Token;

    iget-object v4, v0, Lcom/android/systemui/media/MediaDataManager$addResumptionControls$1;->$appName:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/systemui/media/MediaDataManager$addResumptionControls$1;->$appIntent:Landroid/app/PendingIntent;

    iget-object v2, v0, Lcom/android/systemui/media/MediaDataManager$addResumptionControls$1;->$packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Landroid/media/MediaDescription;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v6, "MediaDataManager"

    if-eqz v0, :cond_0

    const-string v0, "Description incomplete"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adding track for "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " from browser: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/media/MediaDescription;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {v5}, Landroid/media/MediaDescription;->getIconUri()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Landroid/media/MediaDescription;->getIconUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/android/systemui/media/MediaDataManager;->loadBitmapFromUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    const/4 v6, 0x0

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    move-object v7, v0

    goto :goto_0

    :cond_2
    move-object v7, v6

    :goto_0
    iget-object v0, v1, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaData;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v6, v0, Lcom/android/systemui/media/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    :goto_1
    if-nez v6, :cond_4

    iget-object v6, v1, Lcom/android/systemui/media/MediaDataManager;->logger:Lcom/android/systemui/media/MediaUiEventLogger;

    invoke-virtual {v6}, Lcom/android/systemui/media/MediaUiEventLogger;->getNewInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v6

    :cond_4
    move-object v13, v6

    if-nez v0, :cond_5

    const/4 v0, -0x1

    goto :goto_2

    :cond_5
    iget v0, v0, Lcom/android/systemui/media/MediaData;->appUid:I

    :goto_2
    move v14, v0

    invoke-virtual {v1, v10}, Lcom/android/systemui/media/MediaDataManager;->getResumeMediaAction(Ljava/lang/Runnable;)Lcom/android/systemui/media/MediaAction;

    move-result-object v11

    iget-object v0, v1, Lcom/android/systemui/media/MediaDataManager;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v0}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    iget-object v12, v1, Lcom/android/systemui/media/MediaDataManager;->foregroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v6, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBgForResumption$1;

    move-object v0, v6

    move-object/from16 v17, v6

    move-object v6, v7

    move-object v7, v11

    move-object/from16 v18, v12

    move-wide v11, v15

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBgForResumption$1;-><init>(Lcom/android/systemui/media/MediaDataManager;Ljava/lang/String;ILjava/lang/String;Landroid/media/MediaDescription;Landroid/graphics/drawable/Icon;Lcom/android/systemui/media/MediaAction;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Ljava/lang/Runnable;JLcom/android/internal/logging/InstanceId;I)V

    move-object/from16 v1, v17

    move-object/from16 v0, v18

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_3
    return-void
.end method
