.class public final enum Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;
.super Ljava/lang/Enum;
.source "NotificationRecordLogger.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationRecordLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_ACTION_CLICKED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_ACTION_CLICKED_0:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_ACTION_CLICKED_1:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_ACTION_CLICKED_2:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_ASSIST_ACTION_CLICKED_0:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_ASSIST_ACTION_CLICKED_1:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_ASSIST_ACTION_CLICKED_2:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_CLICKED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_CLOSE:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_CONTEXTUAL_ACTION_CLICKED_0:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_CONTEXTUAL_ACTION_CLICKED_1:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_CONTEXTUAL_ACTION_CLICKED_2:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_DETAIL_CLOSE_SYSTEM:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_DETAIL_CLOSE_USER:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_DETAIL_OPEN_SYSTEM:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_DETAIL_OPEN_USER:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_DIRECT_REPLIED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_NOT_POSTED_SNOOZED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_OPEN:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_SMART_REPLIED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_SMART_REPLY_VISIBLE:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

.field public static final enum NOTIFICATION_SNOOZED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;


# instance fields
.field private final mId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v1, "NOTIFICATION_OPEN"

    const/4 v2, 0x0

    const/16 v3, 0xc5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_OPEN:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    new-instance v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v3, "NOTIFICATION_CLOSE"

    const/4 v4, 0x1

    const/16 v5, 0xc6

    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_CLOSE:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    new-instance v3, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v5, "NOTIFICATION_SNOOZED"

    const/4 v6, 0x2

    const/16 v7, 0x13d

    invoke-direct {v3, v5, v6, v7}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_SNOOZED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    new-instance v5, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v7, "NOTIFICATION_NOT_POSTED_SNOOZED"

    const/4 v8, 0x3

    const/16 v9, 0x13f

    invoke-direct {v5, v7, v8, v9}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_NOT_POSTED_SNOOZED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    new-instance v7, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v9, "NOTIFICATION_CLICKED"

    const/4 v10, 0x4

    const/16 v11, 0x140

    invoke-direct {v7, v9, v10, v11}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_CLICKED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    new-instance v9, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v11, "NOTIFICATION_ACTION_CLICKED"

    const/4 v12, 0x5

    const/16 v13, 0x141

    invoke-direct {v9, v11, v12, v13}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ACTION_CLICKED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    new-instance v11, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v13, "NOTIFICATION_DETAIL_OPEN_SYSTEM"

    const/4 v14, 0x6

    const/16 v15, 0x147

    invoke-direct {v11, v13, v14, v15}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DETAIL_OPEN_SYSTEM:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    new-instance v13, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v15, "NOTIFICATION_DETAIL_CLOSE_SYSTEM"

    const/4 v14, 0x7

    const/16 v12, 0x148

    invoke-direct {v13, v15, v14, v12}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DETAIL_CLOSE_SYSTEM:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    new-instance v12, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v15, "NOTIFICATION_DETAIL_OPEN_USER"

    const/16 v14, 0x8

    const/16 v10, 0x149

    invoke-direct {v12, v15, v14, v10}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DETAIL_OPEN_USER:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    new-instance v10, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v15, "NOTIFICATION_DETAIL_CLOSE_USER"

    const/16 v14, 0x9

    const/16 v8, 0x14a

    invoke-direct {v10, v15, v14, v8}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DETAIL_CLOSE_USER:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    new-instance v8, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v15, "NOTIFICATION_DIRECT_REPLIED"

    const/16 v14, 0xa

    const/16 v6, 0x14b

    invoke-direct {v8, v15, v14, v6}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DIRECT_REPLIED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    new-instance v6, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v15, "NOTIFICATION_SMART_REPLIED"

    const/16 v14, 0xb

    const/16 v4, 0x14c

    invoke-direct {v6, v15, v14, v4}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_SMART_REPLIED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    new-instance v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v15, "NOTIFICATION_SMART_REPLY_VISIBLE"

    const/16 v14, 0xc

    const/16 v2, 0x14d

    invoke-direct {v4, v15, v14, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_SMART_REPLY_VISIBLE:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    new-instance v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v15, "NOTIFICATION_ACTION_CLICKED_0"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const/16 v4, 0x1c2

    invoke-direct {v2, v15, v14, v4}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ACTION_CLICKED_0:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    new-instance v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v15, "NOTIFICATION_ACTION_CLICKED_1"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const/16 v2, 0x1c3

    invoke-direct {v4, v15, v14, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ACTION_CLICKED_1:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    new-instance v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v15, "NOTIFICATION_ACTION_CLICKED_2"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const/16 v4, 0x1c4

    invoke-direct {v2, v15, v14, v4}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ACTION_CLICKED_2:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    new-instance v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v15, "NOTIFICATION_CONTEXTUAL_ACTION_CLICKED_0"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const/16 v2, 0x1c5

    invoke-direct {v4, v15, v14, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_CONTEXTUAL_ACTION_CLICKED_0:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    new-instance v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v15, "NOTIFICATION_CONTEXTUAL_ACTION_CLICKED_1"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const/16 v4, 0x1c6

    invoke-direct {v2, v15, v14, v4}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_CONTEXTUAL_ACTION_CLICKED_1:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    new-instance v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v15, "NOTIFICATION_CONTEXTUAL_ACTION_CLICKED_2"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const/16 v2, 0x1c7

    invoke-direct {v4, v15, v14, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_CONTEXTUAL_ACTION_CLICKED_2:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    new-instance v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v15, "NOTIFICATION_ASSIST_ACTION_CLICKED_0"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const/16 v4, 0x1c8

    invoke-direct {v2, v15, v14, v4}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ASSIST_ACTION_CLICKED_0:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    new-instance v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v15, "NOTIFICATION_ASSIST_ACTION_CLICKED_1"

    const/16 v14, 0x14

    move-object/from16 v23, v2

    const/16 v2, 0x1c9

    invoke-direct {v4, v15, v14, v2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ASSIST_ACTION_CLICKED_1:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    new-instance v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const-string v15, "NOTIFICATION_ASSIST_ACTION_CLICKED_2"

    const/16 v14, 0x15

    move-object/from16 v24, v4

    const/16 v4, 0x1ca

    invoke-direct {v2, v15, v14, v4}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ASSIST_ACTION_CLICKED_2:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const/16 v4, 0x16

    new-array v4, v4, [Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    const/4 v15, 0x0

    aput-object v0, v4, v15

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

    aput-object v2, v4, v14

    sput-object v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->$VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

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

    iput p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->mId:I

    return-void
.end method

.method public static fromAction(IZZ)Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;
    .locals 1

    if-ltz p0, :cond_3

    const/4 v0, 0x2

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->values()[Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    move-result-object p1

    sget-object p2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ASSIST_ACTION_CLICKED_0:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    add-int/2addr p2, p0

    aget-object p0, p1, p2

    return-object p0

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->values()[Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    move-result-object p1

    sget-object p2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_CONTEXTUAL_ACTION_CLICKED_0:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    add-int/2addr p2, p0

    aget-object p0, p1, p2

    return-object p0

    :cond_2
    invoke-static {}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->values()[Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    move-result-object p1

    sget-object p2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ACTION_CLICKED_0:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    add-int/2addr p2, p0

    aget-object p0, p1, p2

    return-object p0

    :cond_3
    :goto_0
    sget-object p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ACTION_CLICKED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    return-object p0
.end method

.method public static fromExpanded(ZZ)Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DETAIL_OPEN_USER:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DETAIL_CLOSE_USER:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    :goto_0
    return-object p0

    :cond_1
    if-eqz p0, :cond_2

    sget-object p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DETAIL_OPEN_SYSTEM:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DETAIL_CLOSE_SYSTEM:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    :goto_1
    return-object p0
.end method

.method public static fromVisibility(Z)Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_OPEN:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_CLOSE:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;
    .locals 1

    const-class v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;
    .locals 1

    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->$VALUES:[Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    invoke-virtual {v0}, [Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->mId:I

    return p0
.end method
