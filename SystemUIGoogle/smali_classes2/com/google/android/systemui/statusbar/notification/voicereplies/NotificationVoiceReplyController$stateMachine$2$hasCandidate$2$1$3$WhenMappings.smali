.class public final synthetic Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2$1$3$WhenMappings;
.super Ljava/lang/Object;
.source "NotificationVoiceReplyManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2$1$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;->values()[Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;->NONE:Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;->HOTWORD:Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;->QUICK_PHRASE:Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyController$stateMachine$2$hasCandidate$2$1$3$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
