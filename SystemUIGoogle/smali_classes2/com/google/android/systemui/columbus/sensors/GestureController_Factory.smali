.class public final Lcom/google/android/systemui/columbus/sensors/GestureController_Factory;
.super Ljava/lang/Object;
.source "GestureController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/columbus/sensors/GestureController;",
        ">;"
    }
.end annotation


# instance fields
.field private final commandRegistryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/commandline/CommandRegistry;",
            ">;"
        }
    .end annotation
.end field

.field private final gestureSensorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/sensors/GestureSensor;",
            ">;"
        }
    .end annotation
.end field

.field private final softGatesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/columbus/gates/Gate;",
            ">;>;"
        }
    .end annotation
.end field

.field private final uiEventLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/sensors/GestureSensor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/columbus/gates/Gate;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/commandline/CommandRegistry;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/sensors/GestureController_Factory;->gestureSensorProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/sensors/GestureController_Factory;->softGatesProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/sensors/GestureController_Factory;->commandRegistryProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/sensors/GestureController_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/columbus/sensors/GestureController_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/sensors/GestureSensor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/columbus/gates/Gate;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/commandline/CommandRegistry;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;)",
            "Lcom/google/android/systemui/columbus/sensors/GestureController_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/columbus/sensors/GestureController_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/systemui/columbus/sensors/GestureController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/google/android/systemui/columbus/sensors/GestureSensor;Ljava/util/Set;Lcom/android/systemui/statusbar/commandline/CommandRegistry;Lcom/android/internal/logging/UiEventLogger;)Lcom/google/android/systemui/columbus/sensors/GestureController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/columbus/sensors/GestureSensor;",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/columbus/gates/Gate;",
            ">;",
            "Lcom/android/systemui/statusbar/commandline/CommandRegistry;",
            "Lcom/android/internal/logging/UiEventLogger;",
            ")",
            "Lcom/google/android/systemui/columbus/sensors/GestureController;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/columbus/sensors/GestureController;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/systemui/columbus/sensors/GestureController;-><init>(Lcom/google/android/systemui/columbus/sensors/GestureSensor;Ljava/util/Set;Lcom/android/systemui/statusbar/commandline/CommandRegistry;Lcom/android/internal/logging/UiEventLogger;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/columbus/sensors/GestureController;
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController_Factory;->gestureSensorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/columbus/sensors/GestureSensor;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/GestureController_Factory;->softGatesProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    iget-object v2, p0, Lcom/google/android/systemui/columbus/sensors/GestureController_Factory;->commandRegistryProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/commandline/CommandRegistry;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/GestureController_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/logging/UiEventLogger;

    invoke-static {v0, v1, v2, p0}, Lcom/google/android/systemui/columbus/sensors/GestureController_Factory;->newInstance(Lcom/google/android/systemui/columbus/sensors/GestureSensor;Ljava/util/Set;Lcom/android/systemui/statusbar/commandline/CommandRegistry;Lcom/android/internal/logging/UiEventLogger;)Lcom/google/android/systemui/columbus/sensors/GestureController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/sensors/GestureController_Factory;->get()Lcom/google/android/systemui/columbus/sensors/GestureController;

    move-result-object p0

    return-object p0
.end method
