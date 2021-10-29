.class final Lcom/google/android/systemui/statusbar/notification/voicereplies/NoCandidate;
.super Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyState;
.source "NotificationVoiceReplyManager.kt"


# static fields
.field public static final INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NoCandidate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NoCandidate;

    invoke-direct {v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NoCandidate;-><init>()V

    sput-object v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NoCandidate;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NoCandidate;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
