.class public final Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;
.super Ljava/lang/Object;
.source "WakefulnessLifecycle_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final contextProvider:Ljavax/inject/Provider;

.field public final dumpManagerProvider:Ljavax/inject/Provider;

.field public final wallpaperManagerServiceProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p4, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;->wallpaperManagerServiceProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;->wallpaperManagerServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IWallpaperManager;

    iget-object p0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dump/DumpManager;

    new-instance v2, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;-><init>(Landroid/content/Context;Landroid/app/IWallpaperManager;Lcom/android/systemui/dump/DumpManager;)V

    return-object v2

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;->wallpaperManagerServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue;

    iget-object p0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    new-instance v2, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
