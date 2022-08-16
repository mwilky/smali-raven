.class public final Lcom/android/systemui/media/MediaDataManagerKt;
.super Ljava/lang/Object;
.source "MediaDataManager.kt"


# static fields
.field public static final ART_URIS:[Ljava/lang/String;

.field public static final EMPTY_SMARTSPACE_MEDIA_DATA:Lcom/android/systemui/media/SmartspaceMediaData;

.field public static final LOADING:Lcom/android/systemui/media/MediaData;


# direct methods
.method public static constructor <clinit>()V
    .locals 31

    const-string v0, "android.media.metadata.ALBUM_ART_URI"

    const-string v1, "android.media.metadata.ART_URI"

    const-string v2, "android.media.metadata.DISPLAY_ICON_URI"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/media/MediaDataManagerKt;->ART_URIS:[Ljava/lang/String;

    new-instance v0, Lcom/android/systemui/media/MediaData;

    move-object v1, v0

    sget-object v29, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    move-object/from16 v9, v29

    move-object/from16 v10, v29

    const/16 v30, -0x1

    invoke-static/range {v30 .. v30}, Lcom/android/internal/logging/InstanceId;->fakeInstanceId(I)Lcom/android/internal/logging/InstanceId;

    move-result-object v26

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const-string v12, "INVALID"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const/16 v27, -0x1

    const v28, 0x7f0200

    invoke-direct/range {v1 .. v28}, Lcom/android/systemui/media/MediaData;-><init>(IZLjava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/media/MediaButton;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Lcom/android/systemui/media/MediaDeviceData;ZLjava/lang/Runnable;IZLjava/lang/String;ZLjava/lang/Boolean;ZJLcom/android/internal/logging/InstanceId;II)V

    sput-object v0, Lcom/android/systemui/media/MediaDataManagerKt;->LOADING:Lcom/android/systemui/media/MediaData;

    new-instance v0, Lcom/android/systemui/media/SmartspaceMediaData;

    invoke-static/range {v30 .. v30}, Lcom/android/internal/logging/InstanceId;->fakeInstanceId(I)Lcom/android/internal/logging/InstanceId;

    move-result-object v10

    const-string v2, "INVALID"

    const-string v4, "INVALID"

    const-wide/16 v8, 0x0

    move-object v1, v0

    move-object/from16 v6, v29

    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/media/SmartspaceMediaData;-><init>(Ljava/lang/String;ZLjava/lang/String;Landroid/app/smartspace/SmartspaceAction;Ljava/util/List;Landroid/content/Intent;JLcom/android/internal/logging/InstanceId;)V

    sput-object v0, Lcom/android/systemui/media/MediaDataManagerKt;->EMPTY_SMARTSPACE_MEDIA_DATA:Lcom/android/systemui/media/SmartspaceMediaData;

    return-void
.end method

.method public static synthetic getEMPTY_SMARTSPACE_MEDIA_DATA$annotations()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method
