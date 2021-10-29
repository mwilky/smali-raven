.class final Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideVoiceReplyCtaContainerIdFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "SystemUIGoogleModule_ProvideVoiceReplyCtaContainerIdFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideVoiceReplyCtaContainerIdFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideVoiceReplyCtaContainerIdFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideVoiceReplyCtaContainerIdFactory;

    invoke-direct {v0}, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideVoiceReplyCtaContainerIdFactory;-><init>()V

    sput-object v0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideVoiceReplyCtaContainerIdFactory$InstanceHolder;->INSTANCE:Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideVoiceReplyCtaContainerIdFactory;

    return-void
.end method

.method static synthetic access$000()Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideVoiceReplyCtaContainerIdFactory;
    .locals 1

    sget-object v0, Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideVoiceReplyCtaContainerIdFactory$InstanceHolder;->INSTANCE:Lcom/google/android/systemui/dagger/SystemUIGoogleModule_ProvideVoiceReplyCtaContainerIdFactory;

    return-object v0
.end method
