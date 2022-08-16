.class final Lcom/android/systemui/media/MediaDataManager$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MediaDataManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/String;",
        "Landroid/media/session/PlaybackState;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/MediaDataManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaDataManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaDataManager$2;->this$0:Lcom/android/systemui/media/MediaDataManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    move-object/from16 v1, p2

    check-cast v1, Landroid/media/session/PlaybackState;

    move-object/from16 v2, p0

    iget-object v2, v2, Lcom/android/systemui/media/MediaDataManager$2;->this$0:Lcom/android/systemui/media/MediaDataManager;

    iget-object v3, v2, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/media/MediaData;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v4, Lcom/android/systemui/media/MediaData;->token:Landroid/media/session/MediaSession$Token;

    const-string v15, "MediaDataManager"

    if-nez v3, :cond_1

    const-string v0, "State updated, but token was null"

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v5, v4, Lcom/android/systemui/media/MediaData;->packageName:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/systemui/media/MediaDataManager;->mediaControllerFactory:Lcom/android/systemui/media/MediaControllerFactory;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Landroid/media/session/MediaController;

    iget-object v6, v6, Lcom/android/systemui/media/MediaControllerFactory;->mContext:Landroid/content/Context;

    invoke-direct {v7, v6, v3}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    new-instance v3, Landroid/os/UserHandle;

    iget v6, v4, Lcom/android/systemui/media/MediaData;->userId:I

    invoke-direct {v3, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v5, v7, v3}, Lcom/android/systemui/media/MediaDataManager;->createActionsFromState(Ljava/lang/String;Landroid/media/session/MediaController;Landroid/os/UserHandle;)Lcom/android/systemui/media/MediaButton;

    move-result-object v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isPlayingState(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/4 v1, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x1effdff

    move-object v3, v15

    move v15, v1

    invoke-static/range {v4 .. v18}, Lcom/android/systemui/media/MediaData;->copy$default(Lcom/android/systemui/media/MediaData;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/media/MediaButton;Ljava/lang/String;Lcom/android/systemui/media/MediaDeviceData;ZLcom/android/systemui/media/MediaResumeListener$getResumeAction$1;ZZLjava/lang/Boolean;ZLcom/android/internal/logging/InstanceId;II)Lcom/android/systemui/media/MediaData;

    move-result-object v1

    const-string v4, "State updated outside of notification"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v0, v0, v1}, Lcom/android/systemui/media/MediaDataManager;->onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V

    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
