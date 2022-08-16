.class public final Lcom/android/keyguard/ActiveUnlockConfig_Factory;
.super Ljava/lang/Object;
.source "ActiveUnlockConfig_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final contentResolverProvider:Ljavax/inject/Provider;

.field public final dumpManagerProvider:Ljavax/inject/Provider;

.field public final handlerProvider:Ljavax/inject/Provider;

.field public final secureSettingsProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p5, p0, Lcom/android/keyguard/ActiveUnlockConfig_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/keyguard/ActiveUnlockConfig_Factory;->handlerProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/keyguard/ActiveUnlockConfig_Factory;->secureSettingsProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/keyguard/ActiveUnlockConfig_Factory;->contentResolverProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/keyguard/ActiveUnlockConfig_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/android/keyguard/ActiveUnlockConfig_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/ActiveUnlockConfig_Factory;->handlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/android/keyguard/ActiveUnlockConfig_Factory;->secureSettingsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    iget-object v2, p0, Lcom/android/keyguard/ActiveUnlockConfig_Factory;->contentResolverProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    iget-object p0, p0, Lcom/android/keyguard/ActiveUnlockConfig_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    new-instance v3, Lcom/android/systemui/dagger/ContextComponentResolver;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/android/systemui/dagger/ContextComponentResolver;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-object v3

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/ActiveUnlockConfig_Factory;->handlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/ActiveUnlockConfig_Factory;->secureSettingsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/settings/SecureSettings;

    iget-object v2, p0, Lcom/android/keyguard/ActiveUnlockConfig_Factory;->contentResolverProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/keyguard/ActiveUnlockConfig_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dump/DumpManager;

    new-instance v3, Lcom/android/keyguard/ActiveUnlockConfig;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/android/keyguard/ActiveUnlockConfig;-><init>(Landroid/os/Handler;Lcom/android/systemui/util/settings/SecureSettings;Landroid/content/ContentResolver;Lcom/android/systemui/dump/DumpManager;)V

    return-object v3

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/ActiveUnlockConfig_Factory;->handlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/keyguard/ActiveUnlockConfig_Factory;->secureSettingsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;

    iget-object v2, p0, Lcom/android/keyguard/ActiveUnlockConfig_Factory;->contentResolverProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    iget-object p0, p0, Lcom/android/keyguard/ActiveUnlockConfig_Factory;->dumpManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    new-instance v3, Lcom/google/android/systemui/assist/uihints/TranscriptionController;

    check-cast v2, Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;

    invoke-direct {v3, v0, v1, v2, p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionController;-><init>(Landroid/view/ViewGroup;Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;Lcom/google/android/systemui/assist/uihints/FlingVelocityWrapper;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
