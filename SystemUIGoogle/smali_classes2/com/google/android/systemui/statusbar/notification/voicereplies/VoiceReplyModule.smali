.class public interface abstract Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyModule;
.super Ljava/lang/Object;
.source "NotificationVoiceReplyManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyModule$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyModule$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyModule$Companion;->$$INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyModule$Companion;

    sput-object v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyModule;->Companion:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyModule$Companion;

    return-void
.end method

.method public static provideNotificationVoiceReplyClient(Ljavax/inject/Provider;)Ljava/util/Optional;
    .locals 1
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

    sget-object v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyModule;->Companion:Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyModule$Companion;

    invoke-virtual {v0, p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyModule$Companion;->provideNotificationVoiceReplyClient(Ljavax/inject/Provider;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
