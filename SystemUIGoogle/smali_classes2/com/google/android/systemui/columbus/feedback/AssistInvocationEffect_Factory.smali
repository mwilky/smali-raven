.class public final Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect_Factory;
.super Ljava/lang/Object;
.source "AssistInvocationEffect_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;",
        ">;"
    }
.end annotation


# instance fields
.field private final assistManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistManager;",
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
            "Lcom/android/systemui/assist/AssistManager;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect_Factory;->assistManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;)",
            "Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect_Factory;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/assist/AssistManager;)Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;
    .locals 1

    new-instance v0, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect_Factory;->assistManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistManager;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect_Factory;->newInstance(Lcom/android/systemui/assist/AssistManager;)Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect_Factory;->get()Lcom/google/android/systemui/columbus/feedback/AssistInvocationEffect;

    move-result-object p0

    return-object p0
.end method
