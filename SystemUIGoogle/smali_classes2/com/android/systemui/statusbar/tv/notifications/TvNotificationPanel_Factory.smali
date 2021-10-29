.class public final Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel_Factory;
.super Ljava/lang/Object;
.source "TvNotificationPanel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel;",
        ">;"
    }
.end annotation


# instance fields
.field private final commandQueueProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
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
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel_Factory;->commandQueueProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ">;)",
            "Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel_Factory;->commandQueueProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel_Factory;->newInstance(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel_Factory;->get()Lcom/android/systemui/statusbar/tv/notifications/TvNotificationPanel;

    move-result-object p0

    return-object p0
.end method
