.class public final Lcom/android/systemui/statusbar/notification/NotificationClicker_Builder_Factory;
.super Ljava/lang/Object;
.source "NotificationClicker_Builder_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public final loggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/usb/StorageNotification_Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker_Builder_Factory;->loggerProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationClicker_Builder_Factory;->loggerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;

    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/NotificationClicker$Builder;-><init>(Lcom/android/systemui/statusbar/notification/NotificationClickerLogger;)V

    return-object v0
.end method
