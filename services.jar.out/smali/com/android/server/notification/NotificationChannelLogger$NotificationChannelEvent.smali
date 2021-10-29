.class public final enum Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;
.super Ljava/lang/Enum;
.source "NotificationChannelLogger.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationChannelLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationChannelEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

.field public static final enum APP_NOTIFICATIONS_BLOCKED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

.field public static final enum APP_NOTIFICATIONS_UNBLOCKED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

.field public static final enum NOTIFICATION_CHANNEL_CONVERSATION_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

.field public static final enum NOTIFICATION_CHANNEL_CONVERSATION_DELETED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

.field public static final enum NOTIFICATION_CHANNEL_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

.field public static final enum NOTIFICATION_CHANNEL_DELETED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

.field public static final enum NOTIFICATION_CHANNEL_GROUP_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

.field public static final enum NOTIFICATION_CHANNEL_GROUP_DELETED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

.field public static final enum NOTIFICATION_CHANNEL_GROUP_UPDATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

.field public static final enum NOTIFICATION_CHANNEL_UPDATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

.field public static final enum NOTIFICATION_CHANNEL_UPDATED_BY_USER:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    const-string v1, "NOTIFICATION_CHANNEL_CREATED"

    const/4 v2, 0x0

    const/16 v3, 0xdb

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    new-instance v1, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    const-string v3, "NOTIFICATION_CHANNEL_UPDATED"

    const/4 v4, 0x1

    const/16 v5, 0xdc

    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_UPDATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    new-instance v3, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    const-string v5, "NOTIFICATION_CHANNEL_UPDATED_BY_USER"

    const/4 v6, 0x2

    const/16 v7, 0xdd

    invoke-direct {v3, v5, v6, v7}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_UPDATED_BY_USER:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    new-instance v5, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    const-string v7, "NOTIFICATION_CHANNEL_DELETED"

    const/4 v8, 0x3

    const/16 v9, 0xde

    invoke-direct {v5, v7, v8, v9}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_DELETED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    new-instance v7, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    const-string v9, "NOTIFICATION_CHANNEL_GROUP_CREATED"

    const/4 v10, 0x4

    const/16 v11, 0xdf

    invoke-direct {v7, v9, v10, v11}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_GROUP_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    new-instance v9, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    const-string v11, "NOTIFICATION_CHANNEL_GROUP_UPDATED"

    const/4 v12, 0x5

    const/16 v13, 0xe0

    invoke-direct {v9, v11, v12, v13}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_GROUP_UPDATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    new-instance v11, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    const-string v13, "NOTIFICATION_CHANNEL_GROUP_DELETED"

    const/4 v14, 0x6

    const/16 v15, 0xe2

    invoke-direct {v11, v13, v14, v15}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_GROUP_DELETED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    new-instance v13, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    const-string v15, "NOTIFICATION_CHANNEL_CONVERSATION_CREATED"

    const/4 v14, 0x7

    const/16 v12, 0x110

    invoke-direct {v13, v15, v14, v12}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_CONVERSATION_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    new-instance v12, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    const-string v15, "NOTIFICATION_CHANNEL_CONVERSATION_DELETED"

    const/16 v14, 0x8

    const/16 v10, 0x112

    invoke-direct {v12, v15, v14, v10}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_CONVERSATION_DELETED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    new-instance v10, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    const-string v15, "APP_NOTIFICATIONS_BLOCKED"

    const/16 v14, 0x9

    const/16 v8, 0x22d

    invoke-direct {v10, v15, v14, v8}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->APP_NOTIFICATIONS_BLOCKED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    new-instance v8, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    const-string v15, "APP_NOTIFICATIONS_UNBLOCKED"

    const/16 v14, 0xa

    const/16 v6, 0x22e

    invoke-direct {v8, v15, v14, v6}, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->APP_NOTIFICATIONS_UNBLOCKED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    const/16 v6, 0xb

    new-array v6, v6, [Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    aput-object v0, v6, v2

    aput-object v1, v6, v4

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v12, v6, v0

    const/16 v0, 0x9

    aput-object v10, v6, v0

    aput-object v8, v6, v14

    sput-object v6, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->$VALUES:[Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

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

    iput p3, p0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->mId:I

    return-void
.end method

.method public static getBlocked(Z)Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->APP_NOTIFICATIONS_UNBLOCKED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->APP_NOTIFICATIONS_BLOCKED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    :goto_0
    return-object v0
.end method

.method public static getCreated(Landroid/app/NotificationChannel;)Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;
    .locals 1

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_CONVERSATION_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    :goto_0
    return-object v0
.end method

.method public static getDeleted(Landroid/app/NotificationChannel;)Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;
    .locals 1

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_CONVERSATION_DELETED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_DELETED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    :goto_0
    return-object v0
.end method

.method public static getGroupUpdated(Z)Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_GROUP_CREATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_GROUP_DELETED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    :goto_0
    return-object v0
.end method

.method public static getUpdated(Z)Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_UPDATED_BY_USER:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->NOTIFICATION_CHANNEL_UPDATED:Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    :goto_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;
    .locals 1

    const-class v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    return-object v0
.end method

.method public static values()[Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;
    .locals 1

    sget-object v0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->$VALUES:[Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    invoke-virtual {v0}, [Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lcom/android/server/notification/NotificationChannelLogger$NotificationChannelEvent;->mId:I

    return v0
.end method
