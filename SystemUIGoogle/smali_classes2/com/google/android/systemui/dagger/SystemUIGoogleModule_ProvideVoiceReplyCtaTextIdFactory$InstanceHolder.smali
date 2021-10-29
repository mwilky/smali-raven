.class final Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideVoiceReplyCtaTextIdFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "SystemUIGoogleModule_ProvideVoiceReplyCtaTextIdFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideVoiceReplyCtaTextIdFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideVoiceReplyCtaTextIdFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideVoiceReplyCtaTextIdFactory;

    invoke-direct {v0}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideVoiceReplyCtaTextIdFactory;-><init>()V

    sput-object v0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideVoiceReplyCtaTextIdFactory$InstanceHolder;->INSTANCE:Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideVoiceReplyCtaTextIdFactory;

    return-void
.end method

.method static synthetic access$000()Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideVoiceReplyCtaTextIdFactory;
    .locals 1

    sget-object v0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideVoiceReplyCtaTextIdFactory$InstanceHolder;->INSTANCE:Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideVoiceReplyCtaTextIdFactory;

    return-object v0
.end method
