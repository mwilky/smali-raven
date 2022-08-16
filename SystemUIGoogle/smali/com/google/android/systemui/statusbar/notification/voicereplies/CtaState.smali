.class public final enum Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;
.super Ljava/lang/Enum;
.source "NotificationVoiceReplyManager.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;

.field public static final enum HOTWORD:Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;

.field public static final enum NONE:Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;

.field public static final enum QUICK_PHRASE:Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;->NONE:Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;

    new-instance v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;

    const/4 v3, 0x1

    const-string v4, "HOTWORD"

    invoke-direct {v2, v3, v4}, Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;->HOTWORD:Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;

    new-instance v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;

    const/4 v5, 0x2

    const-string v6, "QUICK_PHRASE"

    invoke-direct {v4, v5, v6}, Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;-><init>(ILjava/lang/String;)V

    sput-object v4, Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;->QUICK_PHRASE:Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;

    aput-object v0, v6, v1

    aput-object v2, v6, v3

    aput-object v4, v6, v5

    sput-object v6, Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;->$VALUES:[Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;
    .locals 1

    const-class v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;

    return-object p0
.end method

.method public static values()[Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;
    .locals 1

    sget-object v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;->$VALUES:[Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;

    return-object v0
.end method
