.class public final Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect_Factory;
.super Ljava/lang/Object;
.source "AssistInvocationEffect_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;",
        ">;"
    }
.end annotation


# instance fields
.field private final assistManagerGoogleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/AssistManagerGoogle;",
            ">;"
        }
    .end annotation
.end field

.field private final opaHomeButtonProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/feedback/OpaHomeButton;",
            ">;"
        }
    .end annotation
.end field

.field private final opaLockscreenProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/AssistManagerGoogle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/feedback/OpaHomeButton;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect_Factory;->assistManagerGoogleProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect_Factory;->opaHomeButtonProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect_Factory;->opaLockscreenProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/assist/AssistManagerGoogle;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/feedback/OpaHomeButton;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;",
            ">;)",
            "Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/google/android/systemui/assist/AssistManagerGoogle;Lcom/google/android/systemui/elmyra/feedback/OpaHomeButton;Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;)Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;
    .locals 1

    new-instance v0, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;-><init>(Lcom/google/android/systemui/assist/AssistManagerGoogle;Lcom/google/android/systemui/elmyra/feedback/OpaHomeButton;Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect_Factory;->assistManagerGoogleProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/assist/AssistManagerGoogle;

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect_Factory;->opaHomeButtonProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/elmyra/feedback/OpaHomeButton;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect_Factory;->opaLockscreenProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;

    invoke-static {v0, v1, p0}, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect_Factory;->newInstance(Lcom/google/android/systemui/assist/AssistManagerGoogle;Lcom/google/android/systemui/elmyra/feedback/OpaHomeButton;Lcom/google/android/systemui/elmyra/feedback/OpaLockscreen;)Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect_Factory;->get()Lcom/google/android/systemui/elmyra/feedback/AssistInvocationEffect;

    move-result-object p0

    return-object p0
.end method
