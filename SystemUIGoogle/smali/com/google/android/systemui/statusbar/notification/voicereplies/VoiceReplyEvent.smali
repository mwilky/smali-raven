.class final enum Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;
.super Ljava/lang/Enum;
.source "NotificationVoiceReplyLogger.kt"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

.field public static final enum MSG_SEND_AUTH_BYPASSED:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

.field public static final enum MSG_SEND_BOUNCED:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

.field public static final enum MSG_SEND_DELAYED:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

.field public static final enum MSG_SEND_UNLOCKED:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

.field public static final enum SESSION_ENDED:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

.field public static final enum SESSION_FAILED_BAD_NOTIF_STATE:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

.field public static final enum SESSION_FAILED_BAD_REMOTE_INPUT_STATE:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

.field public static final enum SESSION_FAILED_BAD_SHADE_STATE:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

.field public static final enum SESSION_FAILED_BAD_WINDOW_STATE:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

.field public static final enum STATE_IN_SESSION_HAS_START_TEXT:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

.field public static final enum STATE_IN_SESSION_NO_START_TEXT:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

.field public static final enum STATE_NEW_CANDIDATE_CTA_OFF:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

.field public static final enum STATE_NEW_CANDIDATE_CTA_PULSE:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

.field public static final enum STATE_NEW_CANDIDATE_NO_CTA:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

.field public static final enum STATE_NO_CANDIDATE:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;


# instance fields
.field private final _id:I


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    new-instance v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    const-string v1, "MSG_SEND_AUTH_BYPASSED"

    const/4 v2, 0x0

    const/16 v3, 0x30b

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;->MSG_SEND_AUTH_BYPASSED:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    new-instance v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    const-string v3, "MSG_SEND_UNLOCKED"

    const/4 v4, 0x1

    const/16 v5, 0x30c

    invoke-direct {v1, v3, v4, v5}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;->MSG_SEND_UNLOCKED:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    new-instance v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    const-string v5, "MSG_SEND_BOUNCED"

    const/4 v6, 0x2

    const/16 v7, 0x30d

    invoke-direct {v3, v5, v6, v7}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;->MSG_SEND_BOUNCED:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    new-instance v5, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    const-string v7, "MSG_SEND_DELAYED"

    const/4 v8, 0x3

    const/16 v9, 0x30e

    invoke-direct {v5, v7, v8, v9}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;->MSG_SEND_DELAYED:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    new-instance v7, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    const-string v9, "STATE_NO_CANDIDATE"

    const/4 v10, 0x4

    const/16 v11, 0x30f

    invoke-direct {v7, v9, v10, v11}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;->STATE_NO_CANDIDATE:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    new-instance v9, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    const-string v11, "STATE_NEW_CANDIDATE_NO_CTA"

    const/4 v12, 0x5

    const/16 v13, 0x310

    invoke-direct {v9, v11, v12, v13}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;->STATE_NEW_CANDIDATE_NO_CTA:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    new-instance v11, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    const-string v13, "STATE_NEW_CANDIDATE_CTA_OFF"

    const/4 v14, 0x6

    const/16 v15, 0x311

    invoke-direct {v11, v13, v14, v15}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;->STATE_NEW_CANDIDATE_CTA_OFF:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    new-instance v13, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    const-string v15, "STATE_NEW_CANDIDATE_CTA_PULSE"

    const/4 v14, 0x7

    const/16 v12, 0x312

    invoke-direct {v13, v15, v14, v12}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;->STATE_NEW_CANDIDATE_CTA_PULSE:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    new-instance v12, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    const-string v15, "STATE_NEW_CANDIDATE_CTA_LOCKSCREEN"

    const/16 v14, 0x8

    const/16 v10, 0x313

    invoke-direct {v12, v15, v14, v10}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;-><init>(Ljava/lang/String;II)V

    new-instance v10, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    const-string v15, "STATE_IN_SESSION_NO_START_TEXT"

    const/16 v14, 0x9

    const/16 v8, 0x314

    invoke-direct {v10, v15, v14, v8}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;->STATE_IN_SESSION_NO_START_TEXT:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    new-instance v8, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    const-string v15, "STATE_IN_SESSION_HAS_START_TEXT"

    const/16 v14, 0xa

    const/16 v6, 0x315

    invoke-direct {v8, v15, v14, v6}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;->STATE_IN_SESSION_HAS_START_TEXT:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    new-instance v6, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    const-string v15, "SESSION_FAILED_BAD_NOTIF_STATE"

    const/16 v14, 0xb

    const/16 v4, 0x316

    invoke-direct {v6, v15, v14, v4}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;->SESSION_FAILED_BAD_NOTIF_STATE:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    new-instance v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    const-string v15, "SESSION_FAILED_BAD_SHADE_STATE"

    const/16 v14, 0xc

    const/16 v2, 0x317

    invoke-direct {v4, v15, v14, v2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;->SESSION_FAILED_BAD_SHADE_STATE:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    new-instance v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    const-string v15, "SESSION_FAILED_BAD_REMOTE_INPUT_STATE"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const/16 v4, 0x318

    invoke-direct {v2, v15, v14, v4}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;->SESSION_FAILED_BAD_REMOTE_INPUT_STATE:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    new-instance v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    const-string v15, "SESSION_ENDED"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const/16 v2, 0x319

    invoke-direct {v4, v15, v14, v2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;->SESSION_ENDED:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    new-instance v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    const-string v15, "SESSION_FAILED_BAD_WINDOW_STATE"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const/16 v4, 0x33a

    invoke-direct {v2, v15, v14, v4}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;->SESSION_FAILED_BAD_WINDOW_STATE:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    const/16 v4, 0x10

    new-array v4, v4, [Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

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

    aput-object v2, v4, v14

    sput-object v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;->$VALUES:[Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

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

    iput p3, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;->_id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;
    .locals 1

    const-class v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    return-object p0
.end method

.method public static values()[Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;
    .locals 1

    sget-object v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;->$VALUES:[Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyEvent;->_id:I

    return p0
.end method
