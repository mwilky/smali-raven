.class public final Lcom/android/systemui/privacy/logging/PrivacyLogger_Factory;
.super Ljava/lang/Object;
.source "PrivacyLogger_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/privacy/logging/PrivacyLogger;",
        ">;"
    }
.end annotation


# instance fields
.field private final bufferProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/LogBuffer;",
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
            "Lcom/android/systemui/log/LogBuffer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/privacy/logging/PrivacyLogger_Factory;->bufferProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/privacy/logging/PrivacyLogger_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/LogBuffer;",
            ">;)",
            "Lcom/android/systemui/privacy/logging/PrivacyLogger_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/privacy/logging/PrivacyLogger_Factory;

    invoke-direct {v0, p0}, Lcom/android/systemui/privacy/logging/PrivacyLogger_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/log/LogBuffer;)Lcom/android/systemui/privacy/logging/PrivacyLogger;
    .locals 1

    new-instance v0, Lcom/android/systemui/privacy/logging/PrivacyLogger;

    invoke-direct {v0, p0}, Lcom/android/systemui/privacy/logging/PrivacyLogger;-><init>(Lcom/android/systemui/log/LogBuffer;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/privacy/logging/PrivacyLogger;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/privacy/logging/PrivacyLogger_Factory;->bufferProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/log/LogBuffer;

    invoke-static {p0}, Lcom/android/systemui/privacy/logging/PrivacyLogger_Factory;->newInstance(Lcom/android/systemui/log/LogBuffer;)Lcom/android/systemui/privacy/logging/PrivacyLogger;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/privacy/logging/PrivacyLogger_Factory;->get()Lcom/android/systemui/privacy/logging/PrivacyLogger;

    move-result-object p0

    return-object p0
.end method
