.class public final Lcom/google/android/systemui/elmyra/actions/UnpinNotifications_Factory;
.super Ljava/lang/Object;
.source "UnpinNotifications_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;",
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

.field private final headsUpManagerOptionalProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager;",
            ">;>;"
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
            "Ljava/util/Optional<",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications_Factory;->headsUpManagerOptionalProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/elmyra/actions/UnpinNotifications_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager;",
            ">;>;)",
            "Lcom/google/android/systemui/elmyra/actions/UnpinNotifications_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications_Factory;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Ljava/util/Optional;)Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager;",
            ">;)",
            "Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;-><init>(Landroid/content/Context;Ljava/util/Optional;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications_Factory;->headsUpManagerOptionalProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Optional;

    invoke-static {v0, p0}, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications_Factory;->newInstance(Landroid/content/Context;Ljava/util/Optional;)Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications_Factory;->get()Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;

    move-result-object p0

    return-object p0
.end method
