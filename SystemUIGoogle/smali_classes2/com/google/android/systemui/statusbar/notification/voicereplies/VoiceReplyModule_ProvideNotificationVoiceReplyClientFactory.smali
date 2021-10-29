.class public final Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyModule_ProvideNotificationVoiceReplyClientFactory;
.super Ljava/lang/Object;
.source "VoiceReplyModule_ProvideNotificationVoiceReplyClientFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/Optional<",
        "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyClient;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final debugClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyModule_ProvideNotificationVoiceReplyClientFactory;->debugClientProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyModule_ProvideNotificationVoiceReplyClientFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/DebugNotificationVoiceReplyClient;",
            ">;)",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyModule_ProvideNotificationVoiceReplyClientFactory;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyModule_ProvideNotificationVoiceReplyClientFactory;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyModule_ProvideNotificationVoiceReplyClientFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideNotificationVoiceReplyClient(Ljavax/inject/Provider;)Ljava/util/Optional;
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

    invoke-static {p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyModule;->provideNotificationVoiceReplyClient(Ljavax/inject/Provider;)Ljava/util/Optional;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyModule_ProvideNotificationVoiceReplyClientFactory;->get()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyClient;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyModule_ProvideNotificationVoiceReplyClientFactory;->debugClientProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/VoiceReplyModule_ProvideNotificationVoiceReplyClientFactory;->provideNotificationVoiceReplyClient(Ljavax/inject/Provider;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
