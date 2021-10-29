.class public final Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyModule$Companion;
.super Ljava/lang/Object;
.source "NotificationVoiceReplyManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyModule$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyModule$Companion;

    invoke-direct {v0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyModule$Companion;-><init>()V

    sput-object v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyModule$Companion;->$$INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyModule$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideNotificationVoiceReplyClient(Ljavax/inject/Provider;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient;",
            ">;)",
            "Ljava/util/Optional<",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyClient;",
            ">;"
        }
    .end annotation

    const-string p0, "debugClient"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    const-string p1, "empty()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
