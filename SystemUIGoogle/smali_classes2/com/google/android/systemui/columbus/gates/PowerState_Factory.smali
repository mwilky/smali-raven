.class public final Lcom/google/android/systemui/columbus/gates/PowerState_Factory;
.super Ljava/lang/Object;
.source "PowerState_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/columbus/gates/PowerState;",
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

.field private final wakefulnessLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/PowerState_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/gates/PowerState_Factory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/columbus/gates/PowerState_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;)",
            "Lcom/google/android/systemui/columbus/gates/PowerState_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/columbus/gates/PowerState_Factory;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/columbus/gates/PowerState_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Ldagger/Lazy;)Lcom/google/android/systemui/columbus/gates/PowerState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            ">;)",
            "Lcom/google/android/systemui/columbus/gates/PowerState;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/columbus/gates/PowerState;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/columbus/gates/PowerState;-><init>(Landroid/content/Context;Ldagger/Lazy;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/columbus/gates/PowerState;
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/PowerState_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/PowerState_Factory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/android/systemui/columbus/gates/PowerState_Factory;->newInstance(Landroid/content/Context;Ldagger/Lazy;)Lcom/google/android/systemui/columbus/gates/PowerState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/gates/PowerState_Factory;->get()Lcom/google/android/systemui/columbus/gates/PowerState;

    move-result-object p0

    return-object p0
.end method
