.class public final Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher_Factory;
.super Ljava/lang/Object;
.source "KeyguardLifecyclesDispatcher_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final screenLifecycleProvider:Ljavax/inject/Provider;

.field public final wakefulnessLifecycleProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher_Factory;->screenLifecycleProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher_Factory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher_Factory;->screenLifecycleProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher_Factory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/app/AssistUtils;

    new-instance v1, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;

    invoke-direct {v1, v0, p0}, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;-><init>(Landroid/content/Context;Lcom/android/internal/app/AssistUtils;)V

    return-object v1

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher_Factory;->screenLifecycleProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher_Factory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;-><init>(Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V

    return-object v1

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher_Factory;->screenLifecycleProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher_Factory;->wakefulnessLifecycleProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/ColumbusSettings;

    new-instance v1, Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;

    invoke-direct {v1, v0, p0}, Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;-><init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/ColumbusSettings;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
