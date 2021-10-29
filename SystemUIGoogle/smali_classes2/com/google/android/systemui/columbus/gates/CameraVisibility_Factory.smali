.class public final Lcom/google/android/systemui/columbus/gates/CameraVisibility_Factory;
.super Ljava/lang/Object;
.source "CameraVisibility_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/columbus/gates/CameraVisibility;",
        ">;"
    }
.end annotation


# instance fields
.field private final activityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/IActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final exceptionsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/columbus/actions/Action;",
            ">;>;"
        }
    .end annotation
.end field

.field private final keyguardGateProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;",
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

.field private final updateHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/columbus/actions/Action;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/PowerState;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/IActivityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility_Factory;->exceptionsProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility_Factory;->keyguardGateProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility_Factory;->powerStateProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility_Factory;->activityManagerProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility_Factory;->updateHandlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/columbus/gates/CameraVisibility_Factory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/columbus/actions/Action;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/gates/PowerState;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/IActivityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;)",
            "Lcom/google/android/systemui/columbus/gates/CameraVisibility_Factory;"
        }
    .end annotation

    new-instance v7, Lcom/google/android/systemui/columbus/gates/CameraVisibility_Factory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/systemui/columbus/gates/CameraVisibility_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static newInstance(Landroid/content/Context;Ljava/util/List;Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;Lcom/google/android/systemui/columbus/gates/PowerState;Landroid/app/IActivityManager;Landroid/os/Handler;)Lcom/google/android/systemui/columbus/gates/CameraVisibility;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/columbus/actions/Action;",
            ">;",
            "Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;",
            "Lcom/google/android/systemui/columbus/gates/PowerState;",
            "Landroid/app/IActivityManager;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/google/android/systemui/columbus/gates/CameraVisibility;"
        }
    .end annotation

    new-instance v7, Lcom/google/android/systemui/columbus/gates/CameraVisibility;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/systemui/columbus/gates/CameraVisibility;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;Lcom/google/android/systemui/columbus/gates/PowerState;Landroid/app/IActivityManager;Landroid/os/Handler;)V

    return-object v7
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/columbus/gates/CameraVisibility;
    .locals 7

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility_Factory;->exceptionsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility_Factory;->keyguardGateProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility_Factory;->powerStateProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/systemui/columbus/gates/PowerState;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility_Factory;->activityManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/app/IActivityManager;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/CameraVisibility_Factory;->updateHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Landroid/os/Handler;

    invoke-static/range {v1 .. v6}, Lcom/google/android/systemui/columbus/gates/CameraVisibility_Factory;->newInstance(Landroid/content/Context;Ljava/util/List;Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;Lcom/google/android/systemui/columbus/gates/PowerState;Landroid/app/IActivityManager;Landroid/os/Handler;)Lcom/google/android/systemui/columbus/gates/CameraVisibility;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/gates/CameraVisibility_Factory;->get()Lcom/google/android/systemui/columbus/gates/CameraVisibility;

    move-result-object p0

    return-object p0
.end method
