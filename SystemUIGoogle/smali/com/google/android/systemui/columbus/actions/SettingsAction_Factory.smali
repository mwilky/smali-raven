.class public final Lcom/google/android/systemui/columbus/actions/SettingsAction_Factory;
.super Ljava/lang/Object;
.source "SettingsAction_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final centralSurfacesProvider:Ljavax/inject/Provider;

.field public final contextProvider:Ljavax/inject/Provider;

.field public final uiEventLoggerProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p4, p0, Lcom/google/android/systemui/columbus/actions/SettingsAction_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/SettingsAction_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/actions/SettingsAction_Factory;->centralSurfacesProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/actions/SettingsAction_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/google/android/systemui/columbus/actions/SettingsAction_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/SettingsAction_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/SettingsAction_Factory;->centralSurfacesProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/SettingsAction_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/logging/UiEventLogger;

    new-instance v2, Lcom/google/android/systemui/columbus/actions/SettingsAction;

    invoke-direct {v2, v0, v1, p0}, Lcom/google/android/systemui/columbus/actions/SettingsAction;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/internal/logging/UiEventLogger;)V

    return-object v2

    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/SettingsAction_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/SettingsAction_Factory;->centralSurfacesProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/SettingsAction_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/settings/UserTracker;

    new-instance v2, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    invoke-direct {v2, v0, p0, v1}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method