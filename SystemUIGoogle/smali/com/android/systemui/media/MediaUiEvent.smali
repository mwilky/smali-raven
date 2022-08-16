.class public final enum Lcom/android/systemui/media/MediaUiEvent;
.super Ljava/lang/Enum;
.source "MediaUiEventLogger.kt"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/media/MediaUiEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/media/MediaUiEvent;

.field public static final enum ACTION_SEEK:Lcom/android/systemui/media/MediaUiEvent;

.field public static final enum ACTIVE_TO_RESUME:Lcom/android/systemui/media/MediaUiEvent;

.field public static final enum CAROUSEL_PAGE:Lcom/android/systemui/media/MediaUiEvent;

.field public static final enum CAST_MEDIA_ADDED:Lcom/android/systemui/media/MediaUiEvent;

.field public static final enum DISMISS_LONG_PRESS:Lcom/android/systemui/media/MediaUiEvent;

.field public static final enum DISMISS_SWIPE:Lcom/android/systemui/media/MediaUiEvent;

.field public static final enum LOCAL_MEDIA_ADDED:Lcom/android/systemui/media/MediaUiEvent;

.field public static final enum MEDIA_CAROUSEL_LOCATION_DREAM:Lcom/android/systemui/media/MediaUiEvent;

.field public static final enum MEDIA_CAROUSEL_LOCATION_LOCKSCREEN:Lcom/android/systemui/media/MediaUiEvent;

.field public static final enum MEDIA_CAROUSEL_LOCATION_QQS:Lcom/android/systemui/media/MediaUiEvent;

.field public static final enum MEDIA_CAROUSEL_LOCATION_QS:Lcom/android/systemui/media/MediaUiEvent;

.field public static final enum MEDIA_RECOMMENDATION_ACTIVATED:Lcom/android/systemui/media/MediaUiEvent;

.field public static final enum MEDIA_RECOMMENDATION_ADDED:Lcom/android/systemui/media/MediaUiEvent;

.field public static final enum MEDIA_RECOMMENDATION_CARD_TAP:Lcom/android/systemui/media/MediaUiEvent;

.field public static final enum MEDIA_RECOMMENDATION_ITEM_TAP:Lcom/android/systemui/media/MediaUiEvent;

.field public static final enum MEDIA_RECOMMENDATION_REMOVED:Lcom/android/systemui/media/MediaUiEvent;

.field public static final enum MEDIA_REMOVED:Lcom/android/systemui/media/MediaUiEvent;

.field public static final enum MEDIA_TAP_CONTENT_VIEW:Lcom/android/systemui/media/MediaUiEvent;

.field public static final enum MEDIA_TIMEOUT:Lcom/android/systemui/media/MediaUiEvent;

.field public static final enum OPEN_LONG_PRESS:Lcom/android/systemui/media/MediaUiEvent;

.field public static final enum OPEN_OUTPUT_SWITCHER:Lcom/android/systemui/media/MediaUiEvent;

.field public static final enum OPEN_SETTINGS_CAROUSEL:Lcom/android/systemui/media/MediaUiEvent;

.field public static final enum OPEN_SETTINGS_LONG_PRESS:Lcom/android/systemui/media/MediaUiEvent;

.field public static final enum REMOTE_MEDIA_ADDED:Lcom/android/systemui/media/MediaUiEvent;

.field public static final enum RESUME_MEDIA_ADDED:Lcom/android/systemui/media/MediaUiEvent;

.field public static final enum TAP_ACTION_NEXT:Lcom/android/systemui/media/MediaUiEvent;

.field public static final enum TAP_ACTION_OTHER:Lcom/android/systemui/media/MediaUiEvent;

.field public static final enum TAP_ACTION_PLAY_PAUSE:Lcom/android/systemui/media/MediaUiEvent;

.field public static final enum TAP_ACTION_PREV:Lcom/android/systemui/media/MediaUiEvent;

.field public static final enum TRANSFER_TO_CAST:Lcom/android/systemui/media/MediaUiEvent;

.field public static final enum TRANSFER_TO_LOCAL:Lcom/android/systemui/media/MediaUiEvent;

.field public static final enum TRANSFER_TO_REMOTE:Lcom/android/systemui/media/MediaUiEvent;


# instance fields
.field private final metricId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 35

    new-instance v0, Lcom/android/systemui/media/MediaUiEvent;

    const-string v1, "LOCAL_MEDIA_ADDED"

    const/4 v2, 0x0

    const/16 v3, 0x405

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/media/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/media/MediaUiEvent;->LOCAL_MEDIA_ADDED:Lcom/android/systemui/media/MediaUiEvent;

    new-instance v1, Lcom/android/systemui/media/MediaUiEvent;

    const-string v3, "CAST_MEDIA_ADDED"

    const/4 v4, 0x1

    const/16 v5, 0x406

    invoke-direct {v1, v3, v4, v5}, Lcom/android/systemui/media/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/systemui/media/MediaUiEvent;->CAST_MEDIA_ADDED:Lcom/android/systemui/media/MediaUiEvent;

    new-instance v3, Lcom/android/systemui/media/MediaUiEvent;

    const-string v5, "REMOTE_MEDIA_ADDED"

    const/4 v6, 0x2

    const/16 v7, 0x407

    invoke-direct {v3, v5, v6, v7}, Lcom/android/systemui/media/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/systemui/media/MediaUiEvent;->REMOTE_MEDIA_ADDED:Lcom/android/systemui/media/MediaUiEvent;

    new-instance v5, Lcom/android/systemui/media/MediaUiEvent;

    const-string v7, "TRANSFER_TO_LOCAL"

    const/4 v8, 0x3

    const/16 v9, 0x408

    invoke-direct {v5, v7, v8, v9}, Lcom/android/systemui/media/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/systemui/media/MediaUiEvent;->TRANSFER_TO_LOCAL:Lcom/android/systemui/media/MediaUiEvent;

    new-instance v7, Lcom/android/systemui/media/MediaUiEvent;

    const-string v9, "TRANSFER_TO_CAST"

    const/4 v10, 0x4

    const/16 v11, 0x409

    invoke-direct {v7, v9, v10, v11}, Lcom/android/systemui/media/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/systemui/media/MediaUiEvent;->TRANSFER_TO_CAST:Lcom/android/systemui/media/MediaUiEvent;

    new-instance v9, Lcom/android/systemui/media/MediaUiEvent;

    const-string v11, "TRANSFER_TO_REMOTE"

    const/4 v12, 0x5

    const/16 v13, 0x40a

    invoke-direct {v9, v11, v12, v13}, Lcom/android/systemui/media/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/systemui/media/MediaUiEvent;->TRANSFER_TO_REMOTE:Lcom/android/systemui/media/MediaUiEvent;

    new-instance v11, Lcom/android/systemui/media/MediaUiEvent;

    const-string v13, "RESUME_MEDIA_ADDED"

    const/4 v14, 0x6

    const/16 v15, 0x3f5

    invoke-direct {v11, v13, v14, v15}, Lcom/android/systemui/media/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/systemui/media/MediaUiEvent;->RESUME_MEDIA_ADDED:Lcom/android/systemui/media/MediaUiEvent;

    new-instance v13, Lcom/android/systemui/media/MediaUiEvent;

    const-string v15, "ACTIVE_TO_RESUME"

    const/4 v14, 0x7

    const/16 v12, 0x3f6

    invoke-direct {v13, v15, v14, v12}, Lcom/android/systemui/media/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/android/systemui/media/MediaUiEvent;->ACTIVE_TO_RESUME:Lcom/android/systemui/media/MediaUiEvent;

    new-instance v12, Lcom/android/systemui/media/MediaUiEvent;

    const-string v15, "MEDIA_TIMEOUT"

    const/16 v14, 0x8

    const/16 v10, 0x3f7

    invoke-direct {v12, v15, v14, v10}, Lcom/android/systemui/media/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/android/systemui/media/MediaUiEvent;->MEDIA_TIMEOUT:Lcom/android/systemui/media/MediaUiEvent;

    new-instance v10, Lcom/android/systemui/media/MediaUiEvent;

    const-string v15, "MEDIA_REMOVED"

    const/16 v14, 0x9

    const/16 v8, 0x3f8

    invoke-direct {v10, v15, v14, v8}, Lcom/android/systemui/media/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/android/systemui/media/MediaUiEvent;->MEDIA_REMOVED:Lcom/android/systemui/media/MediaUiEvent;

    new-instance v8, Lcom/android/systemui/media/MediaUiEvent;

    const-string v15, "CAROUSEL_PAGE"

    const/16 v14, 0xa

    const/16 v6, 0x3f9

    invoke-direct {v8, v15, v14, v6}, Lcom/android/systemui/media/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/systemui/media/MediaUiEvent;->CAROUSEL_PAGE:Lcom/android/systemui/media/MediaUiEvent;

    new-instance v6, Lcom/android/systemui/media/MediaUiEvent;

    const-string v15, "DISMISS_SWIPE"

    const/16 v14, 0xb

    const/16 v4, 0x3fa

    invoke-direct {v6, v15, v14, v4}, Lcom/android/systemui/media/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/systemui/media/MediaUiEvent;->DISMISS_SWIPE:Lcom/android/systemui/media/MediaUiEvent;

    new-instance v4, Lcom/android/systemui/media/MediaUiEvent;

    const-string v15, "OPEN_LONG_PRESS"

    const/16 v14, 0xc

    const/16 v2, 0x3fb

    invoke-direct {v4, v15, v14, v2}, Lcom/android/systemui/media/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/systemui/media/MediaUiEvent;->OPEN_LONG_PRESS:Lcom/android/systemui/media/MediaUiEvent;

    new-instance v2, Lcom/android/systemui/media/MediaUiEvent;

    const-string v15, "DISMISS_LONG_PRESS"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const/16 v4, 0x3fc

    invoke-direct {v2, v15, v14, v4}, Lcom/android/systemui/media/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/systemui/media/MediaUiEvent;->DISMISS_LONG_PRESS:Lcom/android/systemui/media/MediaUiEvent;

    new-instance v4, Lcom/android/systemui/media/MediaUiEvent;

    const-string v15, "OPEN_SETTINGS_LONG_PRESS"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const/16 v2, 0x3fd

    invoke-direct {v4, v15, v14, v2}, Lcom/android/systemui/media/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/systemui/media/MediaUiEvent;->OPEN_SETTINGS_LONG_PRESS:Lcom/android/systemui/media/MediaUiEvent;

    new-instance v2, Lcom/android/systemui/media/MediaUiEvent;

    const-string v15, "OPEN_SETTINGS_CAROUSEL"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const/16 v4, 0x3fe

    invoke-direct {v2, v15, v14, v4}, Lcom/android/systemui/media/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/systemui/media/MediaUiEvent;->OPEN_SETTINGS_CAROUSEL:Lcom/android/systemui/media/MediaUiEvent;

    new-instance v4, Lcom/android/systemui/media/MediaUiEvent;

    const-string v15, "TAP_ACTION_PLAY_PAUSE"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const/16 v2, 0x3ff

    invoke-direct {v4, v15, v14, v2}, Lcom/android/systemui/media/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/systemui/media/MediaUiEvent;->TAP_ACTION_PLAY_PAUSE:Lcom/android/systemui/media/MediaUiEvent;

    new-instance v2, Lcom/android/systemui/media/MediaUiEvent;

    const-string v15, "TAP_ACTION_PREV"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const/16 v4, 0x400

    invoke-direct {v2, v15, v14, v4}, Lcom/android/systemui/media/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/systemui/media/MediaUiEvent;->TAP_ACTION_PREV:Lcom/android/systemui/media/MediaUiEvent;

    new-instance v4, Lcom/android/systemui/media/MediaUiEvent;

    const-string v15, "TAP_ACTION_NEXT"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const/16 v2, 0x401

    invoke-direct {v4, v15, v14, v2}, Lcom/android/systemui/media/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/systemui/media/MediaUiEvent;->TAP_ACTION_NEXT:Lcom/android/systemui/media/MediaUiEvent;

    new-instance v2, Lcom/android/systemui/media/MediaUiEvent;

    const-string v15, "TAP_ACTION_OTHER"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const/16 v4, 0x402

    invoke-direct {v2, v15, v14, v4}, Lcom/android/systemui/media/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/systemui/media/MediaUiEvent;->TAP_ACTION_OTHER:Lcom/android/systemui/media/MediaUiEvent;

    new-instance v4, Lcom/android/systemui/media/MediaUiEvent;

    const-string v15, "ACTION_SEEK"

    const/16 v14, 0x14

    move-object/from16 v23, v2

    const/16 v2, 0x403

    invoke-direct {v4, v15, v14, v2}, Lcom/android/systemui/media/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/systemui/media/MediaUiEvent;->ACTION_SEEK:Lcom/android/systemui/media/MediaUiEvent;

    new-instance v2, Lcom/android/systemui/media/MediaUiEvent;

    const-string v15, "OPEN_OUTPUT_SWITCHER"

    const/16 v14, 0x15

    move-object/from16 v24, v4

    const/16 v4, 0x404

    invoke-direct {v2, v15, v14, v4}, Lcom/android/systemui/media/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/systemui/media/MediaUiEvent;->OPEN_OUTPUT_SWITCHER:Lcom/android/systemui/media/MediaUiEvent;

    new-instance v4, Lcom/android/systemui/media/MediaUiEvent;

    const-string v15, "MEDIA_TAP_CONTENT_VIEW"

    const/16 v14, 0x16

    move-object/from16 v25, v2

    const/16 v2, 0x40c

    invoke-direct {v4, v15, v14, v2}, Lcom/android/systemui/media/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/systemui/media/MediaUiEvent;->MEDIA_TAP_CONTENT_VIEW:Lcom/android/systemui/media/MediaUiEvent;

    new-instance v2, Lcom/android/systemui/media/MediaUiEvent;

    const-string v14, "MEDIA_CAROUSEL_LOCATION_QQS"

    const/16 v15, 0x17

    move-object/from16 v26, v4

    const/16 v4, 0x40d

    invoke-direct {v2, v14, v15, v4}, Lcom/android/systemui/media/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/systemui/media/MediaUiEvent;->MEDIA_CAROUSEL_LOCATION_QQS:Lcom/android/systemui/media/MediaUiEvent;

    new-instance v4, Lcom/android/systemui/media/MediaUiEvent;

    const-string v14, "MEDIA_CAROUSEL_LOCATION_QS"

    const/16 v15, 0x18

    move-object/from16 v27, v2

    const/16 v2, 0x40e

    invoke-direct {v4, v14, v15, v2}, Lcom/android/systemui/media/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/systemui/media/MediaUiEvent;->MEDIA_CAROUSEL_LOCATION_QS:Lcom/android/systemui/media/MediaUiEvent;

    new-instance v2, Lcom/android/systemui/media/MediaUiEvent;

    const-string v14, "MEDIA_CAROUSEL_LOCATION_LOCKSCREEN"

    const/16 v15, 0x19

    move-object/from16 v28, v4

    const/16 v4, 0x40f

    invoke-direct {v2, v14, v15, v4}, Lcom/android/systemui/media/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/systemui/media/MediaUiEvent;->MEDIA_CAROUSEL_LOCATION_LOCKSCREEN:Lcom/android/systemui/media/MediaUiEvent;

    new-instance v4, Lcom/android/systemui/media/MediaUiEvent;

    const-string v14, "MEDIA_CAROUSEL_LOCATION_DREAM"

    const/16 v15, 0x1a

    move-object/from16 v29, v2

    const/16 v2, 0x410

    invoke-direct {v4, v14, v15, v2}, Lcom/android/systemui/media/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/systemui/media/MediaUiEvent;->MEDIA_CAROUSEL_LOCATION_DREAM:Lcom/android/systemui/media/MediaUiEvent;

    new-instance v2, Lcom/android/systemui/media/MediaUiEvent;

    const-string v14, "MEDIA_RECOMMENDATION_ADDED"

    const/16 v15, 0x1b

    move-object/from16 v30, v4

    const/16 v4, 0x411

    invoke-direct {v2, v14, v15, v4}, Lcom/android/systemui/media/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/systemui/media/MediaUiEvent;->MEDIA_RECOMMENDATION_ADDED:Lcom/android/systemui/media/MediaUiEvent;

    new-instance v4, Lcom/android/systemui/media/MediaUiEvent;

    const-string v14, "MEDIA_RECOMMENDATION_REMOVED"

    const/16 v15, 0x1c

    move-object/from16 v31, v2

    const/16 v2, 0x412

    invoke-direct {v4, v14, v15, v2}, Lcom/android/systemui/media/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/systemui/media/MediaUiEvent;->MEDIA_RECOMMENDATION_REMOVED:Lcom/android/systemui/media/MediaUiEvent;

    new-instance v2, Lcom/android/systemui/media/MediaUiEvent;

    const-string v14, "MEDIA_RECOMMENDATION_ACTIVATED"

    const/16 v15, 0x1d

    move-object/from16 v32, v4

    const/16 v4, 0x413

    invoke-direct {v2, v14, v15, v4}, Lcom/android/systemui/media/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/systemui/media/MediaUiEvent;->MEDIA_RECOMMENDATION_ACTIVATED:Lcom/android/systemui/media/MediaUiEvent;

    new-instance v4, Lcom/android/systemui/media/MediaUiEvent;

    const-string v14, "MEDIA_RECOMMENDATION_ITEM_TAP"

    const/16 v15, 0x1e

    move-object/from16 v33, v2

    const/16 v2, 0x414

    invoke-direct {v4, v14, v15, v2}, Lcom/android/systemui/media/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/systemui/media/MediaUiEvent;->MEDIA_RECOMMENDATION_ITEM_TAP:Lcom/android/systemui/media/MediaUiEvent;

    new-instance v2, Lcom/android/systemui/media/MediaUiEvent;

    const-string v14, "MEDIA_RECOMMENDATION_CARD_TAP"

    const/16 v15, 0x1f

    move-object/from16 v34, v4

    const/16 v4, 0x415

    invoke-direct {v2, v14, v15, v4}, Lcom/android/systemui/media/MediaUiEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/systemui/media/MediaUiEvent;->MEDIA_RECOMMENDATION_CARD_TAP:Lcom/android/systemui/media/MediaUiEvent;

    const/16 v4, 0x20

    new-array v4, v4, [Lcom/android/systemui/media/MediaUiEvent;

    const/4 v14, 0x0

    aput-object v0, v4, v14

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v12, v4, v0

    const/16 v0, 0x9

    aput-object v10, v4, v0

    const/16 v0, 0xa

    aput-object v8, v4, v0

    const/16 v0, 0xb

    aput-object v6, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    const/16 v0, 0x13

    aput-object v23, v4, v0

    const/16 v0, 0x14

    aput-object v24, v4, v0

    const/16 v0, 0x15

    aput-object v25, v4, v0

    const/16 v0, 0x16

    aput-object v26, v4, v0

    const/16 v0, 0x17

    aput-object v27, v4, v0

    const/16 v0, 0x18

    aput-object v28, v4, v0

    const/16 v0, 0x19

    aput-object v29, v4, v0

    const/16 v0, 0x1a

    aput-object v30, v4, v0

    const/16 v0, 0x1b

    aput-object v31, v4, v0

    const/16 v0, 0x1c

    aput-object v32, v4, v0

    const/16 v0, 0x1d

    aput-object v33, v4, v0

    const/16 v0, 0x1e

    aput-object v34, v4, v0

    const/16 v0, 0x1f

    aput-object v2, v4, v0

    sput-object v4, Lcom/android/systemui/media/MediaUiEvent;->$VALUES:[Lcom/android/systemui/media/MediaUiEvent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/systemui/media/MediaUiEvent;->metricId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/media/MediaUiEvent;
    .locals 1

    const-class v0, Lcom/android/systemui/media/MediaUiEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/MediaUiEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/media/MediaUiEvent;
    .locals 1

    sget-object v0, Lcom/android/systemui/media/MediaUiEvent;->$VALUES:[Lcom/android/systemui/media/MediaUiEvent;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/media/MediaUiEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/MediaUiEvent;->metricId:I

    return p0
.end method
