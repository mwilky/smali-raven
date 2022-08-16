.class public final Lcom/android/systemui/media/MediaData;
.super Ljava/lang/Object;
.source "MediaData.kt"


# instance fields
.field public final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/media/MediaAction;",
            ">;"
        }
    .end annotation
.end field

.field public final actionsToShowInCompact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public active:Z

.field public final app:Ljava/lang/String;

.field public final appIcon:Landroid/graphics/drawable/Icon;

.field public final appUid:I

.field public final artist:Ljava/lang/CharSequence;

.field public final artwork:Landroid/graphics/drawable/Icon;

.field public final clickIntent:Landroid/app/PendingIntent;

.field public final device:Lcom/android/systemui/media/MediaDeviceData;

.field public hasCheckedForResume:Z

.field public final initialized:Z

.field public final instanceId:Lcom/android/internal/logging/InstanceId;

.field public final isClearable:Z

.field public final isPlaying:Ljava/lang/Boolean;

.field public lastActive:J

.field public final notificationKey:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public playbackLocation:I

.field public resumeAction:Ljava/lang/Runnable;

.field public resumption:Z

.field public final semanticActions:Lcom/android/systemui/media/MediaButton;

.field public final song:Ljava/lang/CharSequence;

.field public final token:Landroid/media/session/MediaSession$Token;

.field public final userId:I


# direct methods
.method public constructor <init>(IZLjava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/media/MediaButton;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Lcom/android/systemui/media/MediaDeviceData;ZLjava/lang/Runnable;IZLjava/lang/String;ZLjava/lang/Boolean;ZJLcom/android/internal/logging/InstanceId;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Icon;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Landroid/graphics/drawable/Icon;",
            "Ljava/util/List<",
            "Lcom/android/systemui/media/MediaAction;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/systemui/media/MediaButton;",
            "Ljava/lang/String;",
            "Landroid/media/session/MediaSession$Token;",
            "Landroid/app/PendingIntent;",
            "Lcom/android/systemui/media/MediaDeviceData;",
            "Z",
            "Ljava/lang/Runnable;",
            "IZ",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Boolean;",
            "ZJ",
            "Lcom/android/internal/logging/InstanceId;",
            "I)V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    iput v1, v0, Lcom/android/systemui/media/MediaData;->userId:I

    move v1, p2

    iput-boolean v1, v0, Lcom/android/systemui/media/MediaData;->initialized:Z

    move-object v1, p3

    iput-object v1, v0, Lcom/android/systemui/media/MediaData;->app:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/systemui/media/MediaData;->appIcon:Landroid/graphics/drawable/Icon;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/systemui/media/MediaData;->artist:Ljava/lang/CharSequence;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/systemui/media/MediaData;->song:Ljava/lang/CharSequence;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/systemui/media/MediaData;->artwork:Landroid/graphics/drawable/Icon;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/systemui/media/MediaData;->actions:Ljava/util/List;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/systemui/media/MediaData;->actionsToShowInCompact:Ljava/util/List;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/systemui/media/MediaData;->semanticActions:Lcom/android/systemui/media/MediaButton;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/systemui/media/MediaData;->packageName:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/systemui/media/MediaData;->token:Landroid/media/session/MediaSession$Token;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/android/systemui/media/MediaData;->clickIntent:Landroid/app/PendingIntent;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/media/MediaData;->device:Lcom/android/systemui/media/MediaDeviceData;

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/android/systemui/media/MediaData;->active:Z

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/systemui/media/MediaData;->resumeAction:Ljava/lang/Runnable;

    move/from16 v1, p17

    iput v1, v0, Lcom/android/systemui/media/MediaData;->playbackLocation:I

    move/from16 v1, p18

    iput-boolean v1, v0, Lcom/android/systemui/media/MediaData;->resumption:Z

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/systemui/media/MediaData;->notificationKey:Ljava/lang/String;

    move/from16 v1, p20

    iput-boolean v1, v0, Lcom/android/systemui/media/MediaData;->hasCheckedForResume:Z

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/android/systemui/media/MediaData;->isPlaying:Ljava/lang/Boolean;

    move/from16 v1, p22

    iput-boolean v1, v0, Lcom/android/systemui/media/MediaData;->isClearable:Z

    move-wide/from16 v1, p23

    iput-wide v1, v0, Lcom/android/systemui/media/MediaData;->lastActive:J

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/android/systemui/media/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    move/from16 v1, p26

    iput v1, v0, Lcom/android/systemui/media/MediaData;->appUid:I

    return-void
.end method

.method public synthetic constructor <init>(IZLjava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/media/MediaButton;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Lcom/android/systemui/media/MediaDeviceData;ZLjava/lang/Runnable;IZLjava/lang/String;ZLjava/lang/Boolean;ZJLcom/android/internal/logging/InstanceId;II)V
    .locals 30

    move/from16 v0, p27

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move/from16 v5, p2

    :goto_0
    and-int/lit16 v1, v0, 0x200

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move-object v13, v3

    goto :goto_1

    :cond_1
    move-object/from16 v13, p10

    :goto_1
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    move/from16 v20, v2

    goto :goto_2

    :cond_2
    move/from16 v20, p17

    :goto_2
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_3

    move/from16 v21, v2

    goto :goto_3

    :cond_3
    move/from16 v21, p18

    :goto_3
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_4

    move-object/from16 v22, v3

    goto :goto_4

    :cond_4
    move-object/from16 v22, p19

    :goto_4
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_5

    move/from16 v23, v2

    goto :goto_5

    :cond_5
    move/from16 v23, p20

    :goto_5
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_6

    move-object/from16 v24, v3

    goto :goto_6

    :cond_6
    move-object/from16 v24, p21

    :goto_6
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    move/from16 v25, v1

    goto :goto_7

    :cond_7
    move/from16 v25, p22

    :goto_7
    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_8

    const-wide/16 v0, 0x0

    move-wide/from16 v26, v0

    goto :goto_8

    :cond_8
    move-wide/from16 v26, p23

    :goto_8
    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move-object/from16 v17, p14

    move/from16 v18, p15

    move-object/from16 v19, p16

    move-object/from16 v28, p25

    move/from16 v29, p26

    invoke-direct/range {v3 .. v29}, Lcom/android/systemui/media/MediaData;-><init>(IZLjava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/media/MediaButton;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Lcom/android/systemui/media/MediaDeviceData;ZLjava/lang/Runnable;IZLjava/lang/String;ZLjava/lang/Boolean;ZJLcom/android/internal/logging/InstanceId;I)V

    return-void
.end method

.method public static copy$default(Lcom/android/systemui/media/MediaData;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/media/MediaButton;Ljava/lang/String;Lcom/android/systemui/media/MediaDeviceData;ZLcom/android/systemui/media/MediaResumeListener$getResumeAction$1;ZZLjava/lang/Boolean;ZLcom/android/internal/logging/InstanceId;II)Lcom/android/systemui/media/MediaData;
    .locals 31

    move-object/from16 v0, p0

    move/from16 v1, p14

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/android/systemui/media/MediaData;->userId:I

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lcom/android/systemui/media/MediaData;->initialized:Z

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/systemui/media/MediaData;->app:Ljava/lang/String;

    move-object v7, v2

    goto :goto_2

    :cond_2
    move-object v7, v4

    :goto_2
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/android/systemui/media/MediaData;->appIcon:Landroid/graphics/drawable/Icon;

    move-object v8, v2

    goto :goto_3

    :cond_3
    move-object v8, v4

    :goto_3
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/android/systemui/media/MediaData;->artist:Ljava/lang/CharSequence;

    move-object v9, v2

    goto :goto_4

    :cond_4
    move-object v9, v4

    :goto_4
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/android/systemui/media/MediaData;->song:Ljava/lang/CharSequence;

    move-object v10, v2

    goto :goto_5

    :cond_5
    move-object v10, v4

    :goto_5
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/android/systemui/media/MediaData;->artwork:Landroid/graphics/drawable/Icon;

    move-object v11, v2

    goto :goto_6

    :cond_6
    move-object v11, v4

    :goto_6
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/android/systemui/media/MediaData;->actions:Ljava/util/List;

    move-object v12, v2

    goto :goto_7

    :cond_7
    move-object/from16 v12, p1

    :goto_7
    and-int/lit16 v2, v1, 0x100

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/android/systemui/media/MediaData;->actionsToShowInCompact:Ljava/util/List;

    move-object v13, v2

    goto :goto_8

    :cond_8
    move-object/from16 v13, p2

    :goto_8
    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/android/systemui/media/MediaData;->semanticActions:Lcom/android/systemui/media/MediaButton;

    move-object v14, v2

    goto :goto_9

    :cond_9
    move-object/from16 v14, p3

    :goto_9
    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/android/systemui/media/MediaData;->packageName:Ljava/lang/String;

    move-object v15, v2

    goto :goto_a

    :cond_a
    move-object/from16 v15, p4

    :goto_a
    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/android/systemui/media/MediaData;->token:Landroid/media/session/MediaSession$Token;

    move-object/from16 v16, v2

    goto :goto_b

    :cond_b
    move-object/from16 v16, v4

    :goto_b
    and-int/lit16 v2, v1, 0x1000

    if-eqz v2, :cond_c

    iget-object v2, v0, Lcom/android/systemui/media/MediaData;->clickIntent:Landroid/app/PendingIntent;

    move-object/from16 v17, v2

    goto :goto_c

    :cond_c
    move-object/from16 v17, v4

    :goto_c
    and-int/lit16 v2, v1, 0x2000

    if-eqz v2, :cond_d

    iget-object v2, v0, Lcom/android/systemui/media/MediaData;->device:Lcom/android/systemui/media/MediaDeviceData;

    move-object/from16 v18, v2

    goto :goto_d

    :cond_d
    move-object/from16 v18, p5

    :goto_d
    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    iget-boolean v2, v0, Lcom/android/systemui/media/MediaData;->active:Z

    move/from16 v19, v2

    goto :goto_e

    :cond_e
    move/from16 v19, p6

    :goto_e
    const v2, 0x8000

    and-int/2addr v2, v1

    if-eqz v2, :cond_f

    iget-object v2, v0, Lcom/android/systemui/media/MediaData;->resumeAction:Ljava/lang/Runnable;

    move-object/from16 v20, v2

    goto :goto_f

    :cond_f
    move-object/from16 v20, p7

    :goto_f
    const/high16 v2, 0x10000

    and-int/2addr v2, v1

    if-eqz v2, :cond_10

    iget v3, v0, Lcom/android/systemui/media/MediaData;->playbackLocation:I

    :cond_10
    move/from16 v21, v3

    const/high16 v2, 0x20000

    and-int/2addr v2, v1

    if-eqz v2, :cond_11

    iget-boolean v2, v0, Lcom/android/systemui/media/MediaData;->resumption:Z

    move/from16 v22, v2

    goto :goto_10

    :cond_11
    move/from16 v22, p8

    :goto_10
    const/high16 v2, 0x40000

    and-int/2addr v2, v1

    if-eqz v2, :cond_12

    iget-object v2, v0, Lcom/android/systemui/media/MediaData;->notificationKey:Ljava/lang/String;

    move-object/from16 v23, v2

    goto :goto_11

    :cond_12
    move-object/from16 v23, v4

    :goto_11
    const/high16 v2, 0x80000

    and-int/2addr v2, v1

    if-eqz v2, :cond_13

    iget-boolean v2, v0, Lcom/android/systemui/media/MediaData;->hasCheckedForResume:Z

    move/from16 v24, v2

    goto :goto_12

    :cond_13
    move/from16 v24, p9

    :goto_12
    const/high16 v2, 0x100000

    and-int/2addr v2, v1

    if-eqz v2, :cond_14

    iget-object v2, v0, Lcom/android/systemui/media/MediaData;->isPlaying:Ljava/lang/Boolean;

    move-object/from16 v25, v2

    goto :goto_13

    :cond_14
    move-object/from16 v25, p10

    :goto_13
    const/high16 v2, 0x200000

    and-int/2addr v2, v1

    if-eqz v2, :cond_15

    iget-boolean v2, v0, Lcom/android/systemui/media/MediaData;->isClearable:Z

    move/from16 v26, v2

    goto :goto_14

    :cond_15
    move/from16 v26, p11

    :goto_14
    const/high16 v2, 0x400000

    and-int/2addr v2, v1

    if-eqz v2, :cond_16

    iget-wide v2, v0, Lcom/android/systemui/media/MediaData;->lastActive:J

    goto :goto_15

    :cond_16
    const-wide/16 v2, 0x0

    :goto_15
    move-wide/from16 v27, v2

    const/high16 v2, 0x800000

    and-int/2addr v2, v1

    if-eqz v2, :cond_17

    iget-object v2, v0, Lcom/android/systemui/media/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    move-object/from16 v29, v2

    goto :goto_16

    :cond_17
    move-object/from16 v29, p12

    :goto_16
    const/high16 v2, 0x1000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_18

    iget v1, v0, Lcom/android/systemui/media/MediaData;->appUid:I

    move/from16 v30, v1

    goto :goto_17

    :cond_18
    move/from16 v30, p13

    :goto_17
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/media/MediaData;

    move-object v4, v0

    invoke-direct/range {v4 .. v30}, Lcom/android/systemui/media/MediaData;-><init>(IZLjava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/media/MediaButton;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Lcom/android/systemui/media/MediaDeviceData;ZLjava/lang/Runnable;IZLjava/lang/String;ZLjava/lang/Boolean;ZJLcom/android/internal/logging/InstanceId;I)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/media/MediaData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/media/MediaData;

    iget v1, p0, Lcom/android/systemui/media/MediaData;->userId:I

    iget v3, p1, Lcom/android/systemui/media/MediaData;->userId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/media/MediaData;->initialized:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/MediaData;->initialized:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/media/MediaData;->app:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/media/MediaData;->app:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/media/MediaData;->appIcon:Landroid/graphics/drawable/Icon;

    iget-object v3, p1, Lcom/android/systemui/media/MediaData;->appIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/media/MediaData;->artist:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/media/MediaData;->artist:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/media/MediaData;->song:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/media/MediaData;->song:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/media/MediaData;->artwork:Landroid/graphics/drawable/Icon;

    iget-object v3, p1, Lcom/android/systemui/media/MediaData;->artwork:Landroid/graphics/drawable/Icon;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/media/MediaData;->actions:Ljava/util/List;

    iget-object v3, p1, Lcom/android/systemui/media/MediaData;->actions:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/android/systemui/media/MediaData;->actionsToShowInCompact:Ljava/util/List;

    iget-object v3, p1, Lcom/android/systemui/media/MediaData;->actionsToShowInCompact:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/android/systemui/media/MediaData;->semanticActions:Lcom/android/systemui/media/MediaButton;

    iget-object v3, p1, Lcom/android/systemui/media/MediaData;->semanticActions:Lcom/android/systemui/media/MediaButton;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/android/systemui/media/MediaData;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/media/MediaData;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/android/systemui/media/MediaData;->token:Landroid/media/session/MediaSession$Token;

    iget-object v3, p1, Lcom/android/systemui/media/MediaData;->token:Landroid/media/session/MediaSession$Token;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/android/systemui/media/MediaData;->clickIntent:Landroid/app/PendingIntent;

    iget-object v3, p1, Lcom/android/systemui/media/MediaData;->clickIntent:Landroid/app/PendingIntent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/android/systemui/media/MediaData;->device:Lcom/android/systemui/media/MediaDeviceData;

    iget-object v3, p1, Lcom/android/systemui/media/MediaData;->device:Lcom/android/systemui/media/MediaDeviceData;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-boolean v1, p0, Lcom/android/systemui/media/MediaData;->active:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/MediaData;->active:Z

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/android/systemui/media/MediaData;->resumeAction:Ljava/lang/Runnable;

    iget-object v3, p1, Lcom/android/systemui/media/MediaData;->resumeAction:Ljava/lang/Runnable;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget v1, p0, Lcom/android/systemui/media/MediaData;->playbackLocation:I

    iget v3, p1, Lcom/android/systemui/media/MediaData;->playbackLocation:I

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget-boolean v1, p0, Lcom/android/systemui/media/MediaData;->resumption:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/MediaData;->resumption:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/android/systemui/media/MediaData;->notificationKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/media/MediaData;->notificationKey:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-boolean v1, p0, Lcom/android/systemui/media/MediaData;->hasCheckedForResume:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/MediaData;->hasCheckedForResume:Z

    if-eq v1, v3, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/android/systemui/media/MediaData;->isPlaying:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/android/systemui/media/MediaData;->isPlaying:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-boolean v1, p0, Lcom/android/systemui/media/MediaData;->isClearable:Z

    iget-boolean v3, p1, Lcom/android/systemui/media/MediaData;->isClearable:Z

    if-eq v1, v3, :cond_17

    return v2

    :cond_17
    iget-wide v3, p0, Lcom/android/systemui/media/MediaData;->lastActive:J

    iget-wide v5, p1, Lcom/android/systemui/media/MediaData;->lastActive:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lcom/android/systemui/media/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v3, p1, Lcom/android/systemui/media/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget p0, p0, Lcom/android/systemui/media/MediaData;->appUid:I

    iget p1, p1, Lcom/android/systemui/media/MediaData;->appUid:I

    if-eq p0, p1, :cond_1a

    return v2

    :cond_1a
    return v0
.end method

.method public final hashCode()I
    .locals 5

    iget v0, p0, Lcom/android/systemui/media/MediaData;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/systemui/media/MediaData;->initialized:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/media/MediaData;->app:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/media/MediaData;->appIcon:Landroid/graphics/drawable/Icon;

    if-nez v1, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/media/MediaData;->artist:Ljava/lang/CharSequence;

    if-nez v1, :cond_3

    move v1, v3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/media/MediaData;->song:Ljava/lang/CharSequence;

    if-nez v1, :cond_4

    move v1, v3

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/media/MediaData;->artwork:Landroid/graphics/drawable/Icon;

    if-nez v1, :cond_5

    move v1, v3

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/media/MediaData;->actions:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/android/systemui/media/MediaData;->actionsToShowInCompact:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/media/MediaData;->semanticActions:Lcom/android/systemui/media/MediaButton;

    if-nez v1, :cond_6

    move v1, v3

    goto :goto_5

    :cond_6
    invoke-virtual {v1}, Lcom/android/systemui/media/MediaButton;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/media/MediaData;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/android/systemui/media/MediaData;->token:Landroid/media/session/MediaSession$Token;

    if-nez v0, :cond_7

    move v0, v3

    goto :goto_6

    :cond_7
    invoke-virtual {v0}, Landroid/media/session/MediaSession$Token;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/android/systemui/media/MediaData;->clickIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_8

    move v0, v3

    goto :goto_7

    :cond_8
    invoke-virtual {v0}, Landroid/app/PendingIntent;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/android/systemui/media/MediaData;->device:Lcom/android/systemui/media/MediaDeviceData;

    if-nez v0, :cond_9

    move v0, v3

    goto :goto_8

    :cond_9
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaDeviceData;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/android/systemui/media/MediaData;->active:Z

    if-eqz v0, :cond_a

    move v0, v2

    :cond_a
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/android/systemui/media/MediaData;->resumeAction:Ljava/lang/Runnable;

    if-nez v0, :cond_b

    move v0, v3

    goto :goto_9

    :cond_b
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/android/systemui/media/MediaData;->playbackLocation:I

    const/16 v4, 0x1f

    invoke-static {v0, v1, v4}, Lcom/android/keyguard/FontInterpolator$VarFontKey$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/media/MediaData;->resumption:Z

    if-eqz v1, :cond_c

    move v1, v2

    :cond_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/media/MediaData;->notificationKey:Ljava/lang/String;

    if-nez v1, :cond_d

    move v1, v3

    goto :goto_a

    :cond_d
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/systemui/media/MediaData;->hasCheckedForResume:Z

    if-eqz v1, :cond_e

    move v1, v2

    :cond_e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/media/MediaData;->isPlaying:Ljava/lang/Boolean;

    if-nez v1, :cond_f

    goto :goto_b

    :cond_f
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_b
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/systemui/media/MediaData;->isClearable:Z

    if-eqz v1, :cond_10

    goto :goto_c

    :cond_10
    move v2, v1

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/android/systemui/media/MediaData;->lastActive:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/android/systemui/media/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    invoke-virtual {v0}, Lcom/android/internal/logging/InstanceId;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/systemui/media/MediaData;->appUid:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const-string v0, "MediaData(userId="

    invoke-static {v0}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/media/MediaData;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", initialized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/media/MediaData;->initialized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/MediaData;->app:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", appIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/MediaData;->appIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", artist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/MediaData;->artist:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", song="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/MediaData;->song:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", artwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/MediaData;->artwork:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", actions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/MediaData;->actions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", actionsToShowInCompact="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/MediaData;->actionsToShowInCompact:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", semanticActions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/MediaData;->semanticActions:Lcom/android/systemui/media/MediaButton;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/MediaData;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/MediaData;->token:Landroid/media/session/MediaSession$Token;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clickIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/MediaData;->clickIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/MediaData;->device:Lcom/android/systemui/media/MediaDeviceData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/media/MediaData;->active:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", resumeAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/MediaData;->resumeAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", playbackLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/media/MediaData;->playbackLocation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resumption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/media/MediaData;->resumption:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", notificationKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/MediaData;->notificationKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasCheckedForResume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/media/MediaData;->hasCheckedForResume:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPlaying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/MediaData;->isPlaying:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isClearable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/media/MediaData;->isClearable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lastActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/media/MediaData;->lastActive:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", instanceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/media/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", appUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/media/MediaData;->appUid:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
