.class public final Lcom/google/android/systemui/columbus/actions/OpenNotificationShade_Factory;
.super Ljava/lang/Object;
.source "OpenNotificationShade_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/columbus/actions/OpenNotificationShade;",
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

.field private final notificationShadeWindowControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;"
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
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/OpenNotificationShade_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/actions/OpenNotificationShade_Factory;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/actions/OpenNotificationShade_Factory;->statusBarProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/actions/OpenNotificationShade_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/columbus/actions/OpenNotificationShade_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;)",
            "Lcom/google/android/systemui/columbus/actions/OpenNotificationShade_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/columbus/actions/OpenNotificationShade_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/systemui/columbus/actions/OpenNotificationShade_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/internal/logging/UiEventLogger;)Lcom/google/android/systemui/columbus/actions/OpenNotificationShade;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/NotificationShadeWindowController;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Lcom/android/internal/logging/UiEventLogger;",
            ")",
            "Lcom/google/android/systemui/columbus/actions/OpenNotificationShade;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/columbus/actions/OpenNotificationShade;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/systemui/columbus/actions/OpenNotificationShade;-><init>(Landroid/content/Context;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/internal/logging/UiEventLogger;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/columbus/actions/OpenNotificationShade;
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/OpenNotificationShade_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/OpenNotificationShade_Factory;->notificationShadeWindowControllerProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/systemui/columbus/actions/OpenNotificationShade_Factory;->statusBarProvider:Ljavax/inject/Provider;

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v2

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/OpenNotificationShade_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/logging/UiEventLogger;

    invoke-static {v0, v1, v2, p0}, Lcom/google/android/systemui/columbus/actions/OpenNotificationShade_Factory;->newInstance(Landroid/content/Context;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/internal/logging/UiEventLogger;)Lcom/google/android/systemui/columbus/actions/OpenNotificationShade;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/OpenNotificationShade_Factory;->get()Lcom/google/android/systemui/columbus/actions/OpenNotificationShade;

    move-result-object p0

    return-object p0
.end method
