.class public final Lcom/google/android/systemui/gamedashboard/ScreenRecordController_Factory;
.super Ljava/lang/Object;
.source "ScreenRecordController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/gamedashboard/ScreenRecordController;",
        ">;"
    }
.end annotation


# instance fields
.field private final controllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/screenrecord/RecordingController;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardDismissUtilProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;",
            ">;"
        }
    .end annotation
.end field

.field private final mainHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final toastProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/gamedashboard/ToastController;",
            ">;"
        }
    .end annotation
.end field

.field private final userContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/UserContextProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/screenrecord/RecordingController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/UserContextProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/gamedashboard/ToastController;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController_Factory;->controllerProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController_Factory;->keyguardDismissUtilProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController_Factory;->userContextProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController_Factory;->toastProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/gamedashboard/ScreenRecordController_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/screenrecord/RecordingController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/Handler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/settings/UserContextProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/gamedashboard/ToastController;",
            ">;)",
            "Lcom/google/android/systemui/gamedashboard/ScreenRecordController_Factory;"
        }
    .end annotation

    new-instance v6, Lcom/google/android/systemui/gamedashboard/ScreenRecordController_Factory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static newInstance(Lcom/android/systemui/screenrecord/RecordingController;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;Lcom/android/systemui/settings/UserContextProvider;Lcom/google/android/systemui/gamedashboard/ToastController;)Lcom/google/android/systemui/gamedashboard/ScreenRecordController;
    .locals 7

    new-instance v6, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;-><init>(Lcom/android/systemui/screenrecord/RecordingController;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;Lcom/android/systemui/settings/UserContextProvider;Lcom/google/android/systemui/gamedashboard/ToastController;)V

    return-object v6
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/gamedashboard/ScreenRecordController;
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController_Factory;->controllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/screenrecord/RecordingController;

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController_Factory;->keyguardDismissUtilProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    iget-object v3, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController_Factory;->userContextProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/settings/UserContextProvider;

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController_Factory;->toastProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/gamedashboard/ToastController;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController_Factory;->newInstance(Lcom/android/systemui/screenrecord/RecordingController;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;Lcom/android/systemui/settings/UserContextProvider;Lcom/google/android/systemui/gamedashboard/ToastController;)Lcom/google/android/systemui/gamedashboard/ScreenRecordController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController_Factory;->get()Lcom/google/android/systemui/gamedashboard/ScreenRecordController;

    move-result-object p0

    return-object p0
.end method
