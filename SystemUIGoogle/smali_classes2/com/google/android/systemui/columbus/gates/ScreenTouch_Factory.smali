.class public final Lcom/google/android/systemui/columbus/gates/ScreenTouch_Factory;
.super Ljava/lang/Object;
.source "ScreenTouch_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/columbus/gates/ScreenTouch;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final handlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final powerStateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/PowerState;",
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
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/PowerState;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch_Factory;->powerStateProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch_Factory;->handlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/columbus/gates/ScreenTouch_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/PowerState;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;)",
            "Lcom/google/android/systemui/columbus/gates/ScreenTouch_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/columbus/gates/ScreenTouch_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/systemui/columbus/gates/ScreenTouch_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/google/android/systemui/columbus/gates/PowerState;Landroid/os/Handler;)Lcom/google/android/systemui/columbus/gates/ScreenTouch;
    .locals 1

    new-instance v0, Lcom/google/android/systemui/columbus/gates/ScreenTouch;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/systemui/columbus/gates/ScreenTouch;-><init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/gates/PowerState;Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/columbus/gates/ScreenTouch;
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch_Factory;->powerStateProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/columbus/gates/PowerState;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/ScreenTouch_Factory;->handlerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    invoke-static {v0, v1, p0}, Lcom/google/android/systemui/columbus/gates/ScreenTouch_Factory;->newInstance(Landroid/content/Context;Lcom/google/android/systemui/columbus/gates/PowerState;Landroid/os/Handler;)Lcom/google/android/systemui/columbus/gates/ScreenTouch;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/gates/ScreenTouch_Factory;->get()Lcom/google/android/systemui/columbus/gates/ScreenTouch;

    move-result-object p0

    return-object p0
.end method
