.class final enum Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;
.super Ljava/lang/Enum;
.source "NotificationVoiceReplyLogger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SendType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;

.field public static final enum BOUNCED:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;

.field public static final enum BYPASS:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;

.field public static final enum DELAYED:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;

.field public static final enum UNLOCKED:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;

    const/4 v1, 0x0

    const-string v2, "UNLOCKED"

    invoke-direct {v0, v1, v2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;->UNLOCKED:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;

    new-instance v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;

    const/4 v3, 0x1

    const-string v4, "BYPASS"

    invoke-direct {v2, v3, v4}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;->BYPASS:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;

    new-instance v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;

    const/4 v5, 0x2

    const-string v6, "DELAYED"

    invoke-direct {v4, v5, v6}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;-><init>(ILjava/lang/String;)V

    sput-object v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;->DELAYED:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;

    new-instance v6, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;

    const/4 v7, 0x3

    const-string v8, "BOUNCED"

    invoke-direct {v6, v7, v8}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;-><init>(ILjava/lang/String;)V

    sput-object v6, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;->BOUNCED:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;

    const/4 v8, 0x4

    new-array v8, v8, [Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;

    aput-object v0, v8, v1

    aput-object v2, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;->$VALUES:[Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;
    .locals 1

    const-class v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;

    return-object p0
.end method

.method public static values()[Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;
    .locals 1

    sget-object v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;->$VALUES:[Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyLogger$SendType;

    return-object v0
.end method
