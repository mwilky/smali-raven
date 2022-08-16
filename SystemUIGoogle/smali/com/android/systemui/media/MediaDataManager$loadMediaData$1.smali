.class public final Lcom/android/systemui/media/MediaDataManager$loadMediaData$1;
.super Ljava/lang/Object;
.source "MediaDataManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $key:Ljava/lang/String;

.field public final synthetic $logEvent:Z

.field public final synthetic $oldKey:Ljava/lang/String;

.field public final synthetic $sbn:Landroid/service/notification/StatusBarNotification;

.field public final synthetic this$0:Lcom/android/systemui/media/MediaDataManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaDataManager;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaDataManager$loadMediaData$1;->this$0:Lcom/android/systemui/media/MediaDataManager;

    iput-object p2, p0, Lcom/android/systemui/media/MediaDataManager$loadMediaData$1;->$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/media/MediaDataManager$loadMediaData$1;->$sbn:Landroid/service/notification/StatusBarNotification;

    iput-object p4, p0, Lcom/android/systemui/media/MediaDataManager$loadMediaData$1;->$oldKey:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/systemui/media/MediaDataManager$loadMediaData$1;->$logEvent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 30

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaData$1;->this$0:Lcom/android/systemui/media/MediaDataManager;

    iget-object v2, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaData$1;->$key:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaData$1;->$sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v3, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaData$1;->$oldKey:Ljava/lang/String;

    iget-boolean v5, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaData$1;->$logEvent:Z

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-class v6, Landroid/media/session/MediaSession$Token;

    const-string v7, "android.mediaSession"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/media/session/MediaSession$Token;

    if-nez v13, :cond_0

    goto/16 :goto_21

    :cond_0
    iget-object v0, v1, Lcom/android/systemui/media/MediaDataManager;->mediaControllerFactory:Lcom/android/systemui/media/MediaControllerFactory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Landroid/media/session/MediaController;

    iget-object v0, v0, Lcom/android/systemui/media/MediaControllerFactory;->mContext:Landroid/content/Context;

    invoke-direct {v6, v0, v13}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    invoke-virtual {v6}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v14

    const-string v7, "MediaDataManager"

    const/4 v8, 0x3

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v9, Lcom/android/systemui/media/MediaDataManagerKt;->ART_URIS:[Ljava/lang/String;

    const/4 v10, 0x0

    :cond_2
    if-ge v10, v8, :cond_3

    aget-object v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v0, v11}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/android/systemui/media/MediaDataManager;->loadBitmapFromUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v12

    if-eqz v12, :cond_2

    const-string v8, "loaded art from "

    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v12, 0x0

    :goto_1
    if-nez v12, :cond_5

    if-nez v0, :cond_4

    const/4 v12, 0x0

    goto :goto_2

    :cond_4
    const-string v8, "android.media.metadata.ART"

    invoke-virtual {v0, v8}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    :cond_5
    :goto_2
    if-nez v12, :cond_7

    if-nez v0, :cond_6

    const/4 v12, 0x0

    goto :goto_3

    :cond_6
    const-string v8, "android.media.metadata.ALBUM_ART"

    invoke-virtual {v0, v8}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    :cond_7
    :goto_3
    if-nez v12, :cond_8

    invoke-virtual {v14}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v8

    goto :goto_4

    :cond_8
    invoke-static {v12}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v8

    :goto_4
    move-object v9, v8

    iget-object v8, v1, Lcom/android/systemui/media/MediaDataManager;->context:Landroid/content/Context;

    invoke-static {v8, v14}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification$Builder;->loadHeaderAppName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v10

    new-instance v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    if-nez v0, :cond_9

    const/4 v12, 0x0

    goto :goto_5

    :cond_9
    const-string v12, "android.media.metadata.DISPLAY_TITLE"

    invoke-virtual {v0, v12}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :goto_5
    iput-object v12, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v12, :cond_b

    if-nez v0, :cond_a

    const/4 v12, 0x0

    goto :goto_6

    :cond_a
    const-string v12, "android.media.metadata.TITLE"

    invoke-virtual {v0, v12}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :goto_6
    iput-object v12, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_b
    iget-object v12, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v12, :cond_d

    iget-object v12, v14, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v15, "android.title"

    invoke-virtual {v12, v15}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v12

    if-nez v12, :cond_c

    iget-object v12, v14, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v15, "android.title.big"

    invoke-virtual {v12, v15}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v12

    :cond_c
    iput-object v12, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_d
    new-instance v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    if-nez v0, :cond_e

    const/4 v0, 0x0

    goto :goto_7

    :cond_e
    const-string v15, "android.media.metadata.ARTIST"

    invoke-virtual {v0, v15}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    iput-object v0, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v0, :cond_10

    iget-object v0, v14, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v15, "android.text"

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_f

    iget-object v0, v14, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v15, "android.bigText"

    invoke-virtual {v0, v15}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_f
    iput-object v0, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_10
    new-instance v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 p0, v14

    const-string v14, "android.mediaRemoteDevice"

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v16, v13

    const/4 v13, 0x0

    invoke-virtual {v0, v14, v13}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    move-object/from16 v24, v9

    const-string v9, "android.mediaRemoteIcon"

    move-object/from16 v25, v11

    const/4 v11, -0x1

    invoke-virtual {v0, v9, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    const-class v11, Landroid/app/PendingIntent;

    move-object/from16 v26, v12

    const-string v12, "android.mediaRemoteIntent"

    invoke-virtual {v0, v12, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/app/PendingIntent;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " is RCN for "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-eqz v13, :cond_13

    if-le v9, v0, :cond_13

    if-eqz v21, :cond_11

    invoke-virtual/range {v21 .. v21}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_8

    :cond_11
    const/4 v0, 0x0

    :goto_8
    move/from16 v18, v0

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iget-object v9, v1, Lcom/android/systemui/media/MediaDataManager;->context:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    new-instance v0, Lcom/android/systemui/media/MediaDeviceData;

    const/16 v22, 0x0

    const/16 v23, 0x10

    move-object/from16 v17, v0

    move-object/from16 v20, v13

    invoke-direct/range {v17 .. v23}, Lcom/android/systemui/media/MediaDeviceData;-><init>(ZLandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    iput-object v0, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_9

    :cond_12
    move-object/from16 v24, v9

    move-object/from16 v25, v11

    move-object/from16 v26, v12

    move-object/from16 v16, v13

    :cond_13
    :goto_9
    new-instance v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object v0, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    new-instance v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v0, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v1, v0, v6, v9}, Lcom/android/systemui/media/MediaDataManager;->createActionsFromState(Ljava/lang/String;Landroid/media/session/MediaController;Landroid/os/UserHandle;)Lcom/android/systemui/media/MediaButton;

    move-result-object v13

    if-nez v13, :cond_1f

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v15

    iget-object v15, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v20, v13

    const-string v13, "android.compactActions"

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    if-nez v0, :cond_14

    const/4 v0, 0x0

    move-object/from16 v22, v8

    move-object/from16 v21, v10

    goto :goto_b

    :cond_14
    new-instance v13, Ljava/util/ArrayList;

    move-object/from16 v21, v10

    array-length v10, v0

    invoke-direct {v13, v10}, Ljava/util/ArrayList;-><init>(I)V

    array-length v10, v0

    const/16 v18, 0x0

    move-object/from16 v22, v8

    move/from16 v8, v18

    :goto_a
    if-ge v8, v10, :cond_15

    aget v18, v0, v8

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v19

    goto :goto_a

    :cond_15
    move-object v0, v13

    :goto_b
    if-nez v0, :cond_16

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_16
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    const/4 v10, 0x3

    if-le v8, v10, :cond_17

    const-string v8, "Too many compact actions for "

    invoke-static {v8}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ",limiting to first "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    invoke-interface {v0, v8, v10}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :cond_17
    if-eqz v15, :cond_1e

    array-length v8, v15

    const/4 v10, 0x0

    :goto_c
    if-ge v10, v8, :cond_1e

    aget-object v13, v15, v10

    add-int/lit8 v18, v10, 0x1

    move/from16 v19, v8

    sget v8, Lcom/android/systemui/media/MediaDataManager;->MAX_NOTIFICATION_ACTIONS:I

    if-ne v10, v8, :cond_18

    const-string v10, "Too many notification actions for "

    invoke-static {v10}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ", limiting to first "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    :cond_18
    invoke-virtual {v13}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v8

    if-nez v8, :cond_19

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v15

    const-string v15, "No icon for action "

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v15, 0x20

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v13, v13, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object/from16 v27, v3

    goto :goto_11

    :cond_19
    move-object/from16 v23, v15

    iget-object v8, v13, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-eqz v8, :cond_1a

    new-instance v8, Lcom/android/systemui/media/MediaDataManager$createActionsFromNotification$runnable$1;

    invoke-direct {v8, v13, v1}, Lcom/android/systemui/media/MediaDataManager$createActionsFromNotification$runnable$1;-><init>(Landroid/app/Notification$Action;Lcom/android/systemui/media/MediaDataManager;)V

    goto :goto_d

    :cond_1a
    const/4 v8, 0x0

    :goto_d
    invoke-virtual {v13}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v10

    if-nez v10, :cond_1b

    goto :goto_e

    :cond_1b
    invoke-virtual {v10}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v10

    const/4 v15, 0x2

    if-ne v10, v15, :cond_1c

    const/4 v10, 0x1

    goto :goto_f

    :cond_1c
    :goto_e
    const/4 v10, 0x0

    :goto_f
    if-eqz v10, :cond_1d

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v15

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v15}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v15

    invoke-static {v10, v15}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v10

    goto :goto_10

    :cond_1d
    invoke-virtual {v13}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v10

    :goto_10
    iget v15, v1, Lcom/android/systemui/media/MediaDataManager;->themeText:I

    invoke-virtual {v10, v15}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    move-result-object v10

    iget-object v15, v1, Lcom/android/systemui/media/MediaDataManager;->context:Landroid/content/Context;

    invoke-virtual {v10, v15}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    new-instance v15, Lcom/android/systemui/media/MediaAction;

    iget-object v13, v13, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    move-object/from16 v27, v3

    const/4 v3, 0x0

    invoke-direct {v15, v10, v8, v13, v3}, Lcom/android/systemui/media/MediaAction;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_11
    move/from16 v10, v18

    move/from16 v8, v19

    move-object/from16 v15, v23

    move-object/from16 v3, v27

    goto/16 :goto_c

    :cond_1e
    :goto_12
    move-object/from16 v27, v3

    const/4 v3, 0x0

    new-instance v8, Lkotlin/Pair;

    invoke-direct {v8, v9, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v8}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v8}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_13

    :cond_1f
    move-object/from16 v27, v3

    move-object/from16 v22, v8

    move-object/from16 v21, v10

    move-object/from16 v20, v13

    move-object/from16 v17, v15

    const/4 v3, 0x0

    :goto_13
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x2

    :goto_14
    move v15, v0

    goto :goto_17

    :cond_20
    invoke-virtual {v6}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    if-nez v0, :cond_21

    goto :goto_15

    :cond_21
    invoke-virtual {v0}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v0

    const/4 v8, 0x1

    if-ne v0, v8, :cond_22

    const/4 v0, 0x1

    goto :goto_16

    :cond_22
    :goto_15
    const/4 v0, 0x0

    :goto_16
    if-eqz v0, :cond_23

    const/4 v0, 0x0

    goto :goto_14

    :cond_23
    const/4 v0, 0x1

    goto :goto_14

    :goto_17
    invoke-virtual {v6}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-nez v0, :cond_24

    move-object/from16 v23, v3

    goto :goto_18

    :cond_24
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isPlayingState(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object/from16 v23, v0

    :goto_18
    iget-object v0, v1, Lcom/android/systemui/media/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/media/MediaData;

    if-nez v6, :cond_25

    move-object v0, v3

    goto :goto_19

    :cond_25
    iget-object v0, v6, Lcom/android/systemui/media/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    :goto_19
    if-nez v0, :cond_26

    iget-object v0, v1, Lcom/android/systemui/media/MediaDataManager;->logger:Lcom/android/systemui/media/MediaUiEventLogger;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaUiEventLogger;->getNewInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v0

    :cond_26
    move-object v14, v0

    :try_start_0
    iget-object v0, v1, Lcom/android/systemui/media/MediaDataManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v0, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_27

    goto :goto_1a

    :cond_27
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_1a
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1c

    :catch_0
    move-exception v0

    goto :goto_1b

    :catch_1
    move-exception v0

    const/4 v9, 0x0

    :goto_1b
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v8, "Could not get app UID for "

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, -0x1

    :goto_1c
    move v13, v0

    const-string v0, "Unknown playback location"

    if-eqz v5, :cond_2b

    iget-object v3, v1, Lcom/android/systemui/media/MediaDataManager;->logger:Lcom/android/systemui/media/MediaUiEventLogger;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-eqz v15, :cond_2a

    const/4 v6, 0x1

    if-eq v15, v6, :cond_29

    const/4 v6, 0x2

    if-ne v15, v6, :cond_28

    sget-object v0, Lcom/android/systemui/media/MediaUiEvent;->REMOTE_MEDIA_ADDED:Lcom/android/systemui/media/MediaUiEvent;

    goto :goto_1d

    :cond_28
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_29
    sget-object v0, Lcom/android/systemui/media/MediaUiEvent;->CAST_MEDIA_ADDED:Lcom/android/systemui/media/MediaUiEvent;

    goto :goto_1d

    :cond_2a
    sget-object v0, Lcom/android/systemui/media/MediaUiEvent;->LOCAL_MEDIA_ADDED:Lcom/android/systemui/media/MediaUiEvent;

    :goto_1d
    iget-object v3, v3, Lcom/android/systemui/media/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {v3, v0, v13, v5, v14}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    goto :goto_20

    :cond_2b
    if-nez v6, :cond_2c

    goto :goto_1e

    :cond_2c
    iget v3, v6, Lcom/android/systemui/media/MediaData;->playbackLocation:I

    if-ne v15, v3, :cond_2d

    const/4 v9, 0x1

    :cond_2d
    :goto_1e
    if-nez v9, :cond_31

    iget-object v3, v1, Lcom/android/systemui/media/MediaDataManager;->logger:Lcom/android/systemui/media/MediaUiEventLogger;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-eqz v15, :cond_30

    const/4 v6, 0x1

    if-eq v15, v6, :cond_2f

    const/4 v6, 0x2

    if-ne v15, v6, :cond_2e

    sget-object v0, Lcom/android/systemui/media/MediaUiEvent;->TRANSFER_TO_REMOTE:Lcom/android/systemui/media/MediaUiEvent;

    goto :goto_1f

    :cond_2e
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2f
    sget-object v0, Lcom/android/systemui/media/MediaUiEvent;->TRANSFER_TO_CAST:Lcom/android/systemui/media/MediaUiEvent;

    goto :goto_1f

    :cond_30
    sget-object v0, Lcom/android/systemui/media/MediaUiEvent;->TRANSFER_TO_LOCAL:Lcom/android/systemui/media/MediaUiEvent;

    :goto_1f
    iget-object v3, v3, Lcom/android/systemui/media/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {v3, v0, v13, v5, v14}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    :cond_31
    :goto_20
    iget-object v0, v1, Lcom/android/systemui/media/MediaDataManager;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v0}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    iget-object v10, v1, Lcom/android/systemui/media/MediaDataManager;->foregroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v9, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;

    move-object v0, v9

    move-object/from16 v3, v27

    move-object/from16 v5, v22

    move-object/from16 v6, v21

    move-object/from16 v7, v26

    move-object/from16 v8, v25

    move-object/from16 v28, v9

    move-object/from16 v9, v24

    move-object/from16 v29, v10

    move-object v10, v11

    move-object v11, v12

    move-object/from16 v12, v20

    move/from16 v21, v13

    move-object/from16 v13, v16

    move-object/from16 v20, v14

    move-object/from16 v14, p0

    move/from16 v16, v15

    move-object/from16 v15, v17

    move-object/from16 v17, v23

    invoke-direct/range {v0 .. v21}, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;-><init>(Lcom/android/systemui/media/MediaDataManager;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Landroid/graphics/drawable/Icon;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/graphics/drawable/Icon;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/systemui/media/MediaButton;Landroid/media/session/MediaSession$Token;Landroid/app/Notification;Lkotlin/jvm/internal/Ref$ObjectRef;ILjava/lang/Boolean;JLcom/android/internal/logging/InstanceId;I)V

    move-object/from16 v1, v28

    move-object/from16 v0, v29

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_21
    return-void
.end method
