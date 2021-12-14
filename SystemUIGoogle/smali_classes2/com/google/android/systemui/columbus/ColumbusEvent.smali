.class public final enum Lcom/google/android/systemui/columbus/ColumbusEvent;
.super Ljava/lang/Enum;
.source "ColumbusEvent.kt"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/systemui/columbus/ColumbusEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/systemui/columbus/ColumbusEvent;

.field public static final enum COLUMBUS_DOUBLE_TAP_DETECTED:Lcom/google/android/systemui/columbus/ColumbusEvent;

.field public static final enum COLUMBUS_INVOKED_ASSISTANT:Lcom/google/android/systemui/columbus/ColumbusEvent;

.field public static final enum COLUMBUS_INVOKED_LAUNCH_APP:Lcom/google/android/systemui/columbus/ColumbusEvent;

.field public static final enum COLUMBUS_INVOKED_LAUNCH_APP_SECURE:Lcom/google/android/systemui/columbus/ColumbusEvent;

.field public static final enum COLUMBUS_INVOKED_LAUNCH_SHORTCUT:Lcom/google/android/systemui/columbus/ColumbusEvent;

.field public static final enum COLUMBUS_INVOKED_NOTIFICATION_SHADE_CLOSE:Lcom/google/android/systemui/columbus/ColumbusEvent;

.field public static final enum COLUMBUS_INVOKED_NOTIFICATION_SHADE_OPEN:Lcom/google/android/systemui/columbus/ColumbusEvent;

.field public static final enum COLUMBUS_INVOKED_ON_SETTINGS:Lcom/google/android/systemui/columbus/ColumbusEvent;

.field public static final enum COLUMBUS_INVOKED_OVERVIEW:Lcom/google/android/systemui/columbus/ColumbusEvent;

.field public static final enum COLUMBUS_INVOKED_PAUSE_MEDIA:Lcom/google/android/systemui/columbus/ColumbusEvent;

.field public static final enum COLUMBUS_INVOKED_PLAY_MEDIA:Lcom/google/android/systemui/columbus/ColumbusEvent;

.field public static final enum COLUMBUS_INVOKED_SCREENSHOT:Lcom/google/android/systemui/columbus/ColumbusEvent;

.field public static final enum COLUMBUS_MODE_HIGH_POWER_ACTIVE:Lcom/google/android/systemui/columbus/ColumbusEvent;

.field public static final enum COLUMBUS_MODE_INACTIVE:Lcom/google/android/systemui/columbus/ColumbusEvent;

.field public static final enum COLUMBUS_MODE_LOW_POWER_ACTIVE:Lcom/google/android/systemui/columbus/ColumbusEvent;

.field public static final enum COLUMBUS_RETARGET_APPROVED:Lcom/google/android/systemui/columbus/ColumbusEvent;

.field public static final enum COLUMBUS_RETARGET_DIALOG_SHOWN:Lcom/google/android/systemui/columbus/ColumbusEvent;

.field public static final enum COLUMBUS_RETARGET_FOLLOW_ON_APPROVED:Lcom/google/android/systemui/columbus/ColumbusEvent;

.field public static final enum COLUMBUS_RETARGET_FOLLOW_ON_NOT_APPROVED:Lcom/google/android/systemui/columbus/ColumbusEvent;

.field public static final enum COLUMBUS_RETARGET_NOT_APPROVED:Lcom/google/android/systemui/columbus/ColumbusEvent;

.field public static final enum COLUMBUS_UNKNOWN_EVENT:Lcom/google/android/systemui/columbus/ColumbusEvent;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 24

    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusEvent;

    const-string v1, "COLUMBUS_UNKNOWN_EVENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/systemui/columbus/ColumbusEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_UNKNOWN_EVENT:Lcom/google/android/systemui/columbus/ColumbusEvent;

    new-instance v1, Lcom/google/android/systemui/columbus/ColumbusEvent;

    const-string v3, "COLUMBUS_DOUBLE_TAP_DETECTED"

    const/4 v4, 0x1

    const/16 v5, 0x274

    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/systemui/columbus/ColumbusEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_DOUBLE_TAP_DETECTED:Lcom/google/android/systemui/columbus/ColumbusEvent;

    new-instance v3, Lcom/google/android/systemui/columbus/ColumbusEvent;

    const-string v5, "COLUMBUS_INVOKED_ASSISTANT"

    const/4 v6, 0x2

    const/16 v7, 0x275

    invoke-direct {v3, v5, v6, v7}, Lcom/google/android/systemui/columbus/ColumbusEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_ASSISTANT:Lcom/google/android/systemui/columbus/ColumbusEvent;

    new-instance v5, Lcom/google/android/systemui/columbus/ColumbusEvent;

    const-string v7, "COLUMBUS_INVOKED_SCREENSHOT"

    const/4 v8, 0x3

    const/16 v9, 0x276

    invoke-direct {v5, v7, v8, v9}, Lcom/google/android/systemui/columbus/ColumbusEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_SCREENSHOT:Lcom/google/android/systemui/columbus/ColumbusEvent;

    new-instance v7, Lcom/google/android/systemui/columbus/ColumbusEvent;

    const-string v9, "COLUMBUS_INVOKED_PLAY_MEDIA"

    const/4 v10, 0x4

    const/16 v11, 0x277

    invoke-direct {v7, v9, v10, v11}, Lcom/google/android/systemui/columbus/ColumbusEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_PLAY_MEDIA:Lcom/google/android/systemui/columbus/ColumbusEvent;

    new-instance v9, Lcom/google/android/systemui/columbus/ColumbusEvent;

    const-string v11, "COLUMBUS_INVOKED_PAUSE_MEDIA"

    const/4 v12, 0x5

    const/16 v13, 0x27f

    invoke-direct {v9, v11, v12, v13}, Lcom/google/android/systemui/columbus/ColumbusEvent;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_PAUSE_MEDIA:Lcom/google/android/systemui/columbus/ColumbusEvent;

    new-instance v11, Lcom/google/android/systemui/columbus/ColumbusEvent;

    const-string v13, "COLUMBUS_INVOKED_OVERVIEW"

    const/4 v14, 0x6

    const/16 v15, 0x278

    invoke-direct {v11, v13, v14, v15}, Lcom/google/android/systemui/columbus/ColumbusEvent;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_OVERVIEW:Lcom/google/android/systemui/columbus/ColumbusEvent;

    new-instance v13, Lcom/google/android/systemui/columbus/ColumbusEvent;

    const-string v15, "COLUMBUS_INVOKED_NOTIFICATION_SHADE_OPEN"

    const/4 v14, 0x7

    const/16 v12, 0x279

    invoke-direct {v13, v15, v14, v12}, Lcom/google/android/systemui/columbus/ColumbusEvent;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_NOTIFICATION_SHADE_OPEN:Lcom/google/android/systemui/columbus/ColumbusEvent;

    new-instance v12, Lcom/google/android/systemui/columbus/ColumbusEvent;

    const-string v15, "COLUMBUS_INVOKED_NOTIFICATION_SHADE_CLOSE"

    const/16 v14, 0x8

    const/16 v10, 0x27a

    invoke-direct {v12, v15, v14, v10}, Lcom/google/android/systemui/columbus/ColumbusEvent;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_NOTIFICATION_SHADE_CLOSE:Lcom/google/android/systemui/columbus/ColumbusEvent;

    new-instance v10, Lcom/google/android/systemui/columbus/ColumbusEvent;

    const-string v15, "COLUMBUS_INVOKED_LAUNCH_APP"

    const/16 v14, 0x9

    const/16 v8, 0x32f

    invoke-direct {v10, v15, v14, v8}, Lcom/google/android/systemui/columbus/ColumbusEvent;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_LAUNCH_APP:Lcom/google/android/systemui/columbus/ColumbusEvent;

    new-instance v8, Lcom/google/android/systemui/columbus/ColumbusEvent;

    const-string v15, "COLUMBUS_INVOKED_LAUNCH_SHORTCUT"

    const/16 v14, 0xa

    const/16 v6, 0x330

    invoke-direct {v8, v15, v14, v6}, Lcom/google/android/systemui/columbus/ColumbusEvent;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_LAUNCH_SHORTCUT:Lcom/google/android/systemui/columbus/ColumbusEvent;

    new-instance v6, Lcom/google/android/systemui/columbus/ColumbusEvent;

    const-string v15, "COLUMBUS_INVOKED_LAUNCH_APP_SECURE"

    const/16 v14, 0xb

    const/16 v4, 0x382

    invoke-direct {v6, v15, v14, v4}, Lcom/google/android/systemui/columbus/ColumbusEvent;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_LAUNCH_APP_SECURE:Lcom/google/android/systemui/columbus/ColumbusEvent;

    new-instance v4, Lcom/google/android/systemui/columbus/ColumbusEvent;

    const-string v15, "COLUMBUS_INVOKED_ON_SETTINGS"

    const/16 v14, 0xc

    const/16 v2, 0x331

    invoke-direct {v4, v15, v14, v2}, Lcom/google/android/systemui/columbus/ColumbusEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_ON_SETTINGS:Lcom/google/android/systemui/columbus/ColumbusEvent;

    new-instance v2, Lcom/google/android/systemui/columbus/ColumbusEvent;

    const-string v15, "COLUMBUS_MODE_LOW_POWER_ACTIVE"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const/16 v4, 0x27b

    invoke-direct {v2, v15, v14, v4}, Lcom/google/android/systemui/columbus/ColumbusEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_MODE_LOW_POWER_ACTIVE:Lcom/google/android/systemui/columbus/ColumbusEvent;

    new-instance v4, Lcom/google/android/systemui/columbus/ColumbusEvent;

    const-string v15, "COLUMBUS_MODE_HIGH_POWER_ACTIVE"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const/16 v2, 0x27c

    invoke-direct {v4, v15, v14, v2}, Lcom/google/android/systemui/columbus/ColumbusEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_MODE_HIGH_POWER_ACTIVE:Lcom/google/android/systemui/columbus/ColumbusEvent;

    new-instance v2, Lcom/google/android/systemui/columbus/ColumbusEvent;

    const-string v15, "COLUMBUS_MODE_INACTIVE"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const/16 v4, 0x27d

    invoke-direct {v2, v15, v14, v4}, Lcom/google/android/systemui/columbus/ColumbusEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_MODE_INACTIVE:Lcom/google/android/systemui/columbus/ColumbusEvent;

    new-instance v4, Lcom/google/android/systemui/columbus/ColumbusEvent;

    const-string v15, "COLUMBUS_RETARGET_DIALOG_SHOWN"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const/16 v2, 0x383

    invoke-direct {v4, v15, v14, v2}, Lcom/google/android/systemui/columbus/ColumbusEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_RETARGET_DIALOG_SHOWN:Lcom/google/android/systemui/columbus/ColumbusEvent;

    new-instance v2, Lcom/google/android/systemui/columbus/ColumbusEvent;

    const-string v15, "COLUMBUS_RETARGET_APPROVED"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const/16 v4, 0x384

    invoke-direct {v2, v15, v14, v4}, Lcom/google/android/systemui/columbus/ColumbusEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_RETARGET_APPROVED:Lcom/google/android/systemui/columbus/ColumbusEvent;

    new-instance v4, Lcom/google/android/systemui/columbus/ColumbusEvent;

    const-string v15, "COLUMBUS_RETARGET_NOT_APPROVED"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const/16 v2, 0x385

    invoke-direct {v4, v15, v14, v2}, Lcom/google/android/systemui/columbus/ColumbusEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_RETARGET_NOT_APPROVED:Lcom/google/android/systemui/columbus/ColumbusEvent;

    new-instance v2, Lcom/google/android/systemui/columbus/ColumbusEvent;

    const-string v15, "COLUMBUS_RETARGET_FOLLOW_ON_APPROVED"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const/16 v4, 0x386

    invoke-direct {v2, v15, v14, v4}, Lcom/google/android/systemui/columbus/ColumbusEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_RETARGET_FOLLOW_ON_APPROVED:Lcom/google/android/systemui/columbus/ColumbusEvent;

    new-instance v4, Lcom/google/android/systemui/columbus/ColumbusEvent;

    const-string v15, "COLUMBUS_RETARGET_FOLLOW_ON_NOT_APPROVED"

    const/16 v14, 0x14

    move-object/from16 v23, v2

    const/16 v2, 0x387

    invoke-direct {v4, v15, v14, v2}, Lcom/google/android/systemui/columbus/ColumbusEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_RETARGET_FOLLOW_ON_NOT_APPROVED:Lcom/google/android/systemui/columbus/ColumbusEvent;

    const/16 v2, 0x15

    new-array v2, v2, [Lcom/google/android/systemui/columbus/ColumbusEvent;

    const/4 v15, 0x0

    aput-object v0, v2, v15

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    aput-object v4, v2, v14

    sput-object v2, Lcom/google/android/systemui/columbus/ColumbusEvent;->$VALUES:[Lcom/google/android/systemui/columbus/ColumbusEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/systemui/columbus/ColumbusEvent;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/systemui/columbus/ColumbusEvent;
    .locals 1

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/google/android/systemui/columbus/ColumbusEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/ColumbusEvent;

    return-object p0
.end method

.method public static values()[Lcom/google/android/systemui/columbus/ColumbusEvent;
    .locals 4

    sget-object v0, Lcom/google/android/systemui/columbus/ColumbusEvent;->$VALUES:[Lcom/google/android/systemui/columbus/ColumbusEvent;

    array-length v1, v0

    new-array v1, v1, [Lcom/google/android/systemui/columbus/ColumbusEvent;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/columbus/ColumbusEvent;->id:I

    return p0
.end method
