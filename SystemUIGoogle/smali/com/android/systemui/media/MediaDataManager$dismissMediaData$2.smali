.class public final Lcom/android/systemui/media/MediaDataManager$dismissMediaData$2;
.super Ljava/lang/Object;
.source "MediaDataManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $key:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/systemui/media/MediaDataManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaDataManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaDataManager$dismissMediaData$2;->this$0:Lcom/android/systemui/media/MediaDataManager;

    iput-object p2, p0, Lcom/android/systemui/media/MediaDataManager$dismissMediaData$2;->$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/media/MediaDataManager$dismissMediaData$2;->this$0:Lcom/android/systemui/media/MediaDataManager;

    iget-object p0, p0, Lcom/android/systemui/media/MediaDataManager$dismissMediaData$2;->$key:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaData;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/android/systemui/media/MediaDataManager;->logger:Lcom/android/systemui/media/MediaUiEventLogger;

    iget v3, v1, Lcom/android/systemui/media/MediaData;->appUid:I

    iget-object v4, v1, Lcom/android/systemui/media/MediaData;->packageName:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/systemui/media/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v2, v2, Lcom/android/systemui/media/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v5, Lcom/android/systemui/media/MediaUiEvent;->MEDIA_REMOVED:Lcom/android/systemui/media/MediaUiEvent;

    invoke-interface {v2, v5, v3, v4, v1}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/media/MediaDataManager;->notifyMediaDataRemoved(Ljava/lang/String;)V

    return-void
.end method
