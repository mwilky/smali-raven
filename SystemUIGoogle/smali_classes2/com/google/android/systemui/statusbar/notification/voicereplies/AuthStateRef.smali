.class final Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;
.super Ljava/lang/Object;
.source "NotificationVoiceReplyManager.kt"


# instance fields
.field private value:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;->value:I

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;->value:I

    return p0
.end method

.method public final setValue(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/AuthStateRef;->value:I

    return-void
.end method
