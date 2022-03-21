.class public final Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger_Factory;
.super Ljava/lang/Object;
.source "LSShadeTransitionLogger_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;",
        ">;"
    }
.end annotation


# instance fields
.field private final bufferProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/LogBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final displayMetricsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/util/DisplayMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private final lockscreenGestureLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;",
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
            "Lcom/android/systemui/log/LogBuffer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/util/DisplayMetrics;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger_Factory;->bufferProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger_Factory;->lockscreenGestureLoggerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger_Factory;->displayMetricsProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/log/LogBuffer;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/util/DisplayMetrics;",
            ">;)",
            "Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger_Factory;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;Landroid/util/DisplayMetrics;)Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;-><init>(Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;Landroid/util/DisplayMetrics;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger_Factory;->bufferProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/log/LogBuffer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger_Factory;->lockscreenGestureLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger_Factory;->displayMetricsProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/DisplayMetrics;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger_Factory;->newInstance(Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;Landroid/util/DisplayMetrics;)Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger_Factory;->get()Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

    move-result-object p0

    return-object p0
.end method
