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
.field private static final synthetic $VALUES:[Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;

.field public static final enum HOTWORD:Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;

.field public static final enum NONE:Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;

.field public static final enum QUICK_PHRASE:Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;->NONE:Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;

    new-instance v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;

    const-string v3, "HOTWORD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;->HOTWORD:Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;

    new-instance v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;

    const-string v5, "QUICK_PHRASE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;->QUICK_PHRASE:Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;->$VALUES:[Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;
    .locals 1

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;

    return-object p0
.end method

.method public static values()[Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;
    .locals 4

    sget-object v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;->$VALUES:[Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;

    array-length v1, v0

    new-array v1, v1, [Lcom/google/android/systemui/statusbar/notification/voicereplies/CtaState;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
