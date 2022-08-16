.class public final Lcom/android/systemui/media/systemsounds/HomeSoundEffectController_Factory;
.super Ljava/lang/Object;
.source "HomeSoundEffectController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final activityManagerWrapperProvider:Ljavax/inject/Provider;

.field public final audioManagerProvider:Ljavax/inject/Provider;

.field public final contextProvider:Ljavax/inject/Provider;

.field public final packageManagerProvider:Ljavax/inject/Provider;

.field public final taskStackChangeListenersProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p6, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController_Factory;->audioManagerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController_Factory;->taskStackChangeListenersProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController_Factory;->activityManagerWrapperProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController_Factory;->packageManagerProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create$1(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ldagger/internal/InstanceFactory;)Lcom/android/systemui/media/systemsounds/HomeSoundEffectController_Factory;
    .locals 8

    new-instance v7, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController_Factory;

    const/4 v6, 0x1

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    return-object v7
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController_Factory;->audioManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController_Factory;->taskStackChangeListenersProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    iget-object v0, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController_Factory;->activityManagerWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    iget-object p0, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController_Factory;->packageManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Landroid/content/pm/PackageManager;

    new-instance p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Lcom/android/systemui/shared/system/TaskStackChangeListeners;Lcom/android/systemui/shared/system/ActivityManagerWrapper;Landroid/content/pm/PackageManager;)V

    return-object p0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController_Factory;->audioManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController_Factory;->taskStackChangeListenersProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController_Factory;->activityManagerWrapperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object p0, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController_Factory;->packageManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Ljava/lang/String;

    new-instance p0, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderNodeControllerImpl;-><init>(Ljava/lang/String;Landroid/view/LayoutInflater;ILcom/android/systemui/plugins/ActivityStarter;Ljava/lang/String;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
