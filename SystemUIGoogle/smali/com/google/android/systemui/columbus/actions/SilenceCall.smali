.class public final Lcom/google/android/systemui/columbus/actions/SilenceCall;
.super Lcom/google/android/systemui/columbus/actions/Action;
.source "SilenceCall.kt"


# instance fields
.field public isPhoneRinging:Z

.field public final phoneStateListener:Lcom/google/android/systemui/columbus/actions/SilenceCall$phoneStateListener$1;

.field public final silenceAlertsDisabled:Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;

.field public final tag:Ljava/lang/String;

.field public final telecomManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Landroid/telecom/TelecomManager;",
            ">;"
        }
    .end annotation
.end field

.field public final telephonyListenerManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/telephony/TelephonyListenerManager;",
            ">;"
        }
    .end annotation
.end field

.field public final telephonyManager:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Landroid/telephony/TelephonyManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;",
            "Ldagger/Lazy<",
            "Landroid/telecom/TelecomManager;",
            ">;",
            "Ldagger/Lazy<",
            "Landroid/telephony/TelephonyManager;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/telephony/TelephonyListenerManager;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/columbus/actions/Action;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/actions/SilenceCall;->silenceAlertsDisabled:Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/actions/SilenceCall;->telecomManager:Ldagger/Lazy;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/actions/SilenceCall;->telephonyManager:Ldagger/Lazy;

    iput-object p5, p0, Lcom/google/android/systemui/columbus/actions/SilenceCall;->telephonyListenerManager:Ldagger/Lazy;

    const-string p1, "Columbus/SilenceCall"

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/SilenceCall;->tag:Ljava/lang/String;

    new-instance p1, Lcom/google/android/systemui/columbus/actions/SilenceCall$phoneStateListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/actions/SilenceCall$phoneStateListener$1;-><init>(Lcom/google/android/systemui/columbus/actions/SilenceCall;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/SilenceCall;->phoneStateListener:Lcom/google/android/systemui/columbus/actions/SilenceCall$phoneStateListener$1;

    new-instance p1, Lcom/google/android/systemui/columbus/actions/SilenceCall$gateListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/actions/SilenceCall$gateListener$1;-><init>(Lcom/google/android/systemui/columbus/actions/SilenceCall;)V

    invoke-virtual {p2, p1}, Lcom/google/android/systemui/columbus/gates/Gate;->registerListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/SilenceCall;->updatePhoneStateListener()V

    return-void
.end method


# virtual methods
.method public final getTag$vendor__unbundled_google__packages__SystemUIGoogle__android_common__sysuig()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/SilenceCall;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public final onTrigger(Lcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/SilenceCall;->telecomManager:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telecom/TelecomManager;

    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->silenceRinger()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/systemui/columbus/actions/Action;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [isPhoneRinging -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/google/android/systemui/columbus/actions/SilenceCall;->isPhoneRinging:Z

    const/16 v1, 0x5d

    invoke-static {v0, p0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager$AnchorInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updatePhoneStateListener()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/SilenceCall;->silenceAlertsDisabled:Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/gates/Gate;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/SilenceCall;->telephonyListenerManager:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/telephony/TelephonyListenerManager;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/SilenceCall;->phoneStateListener:Lcom/google/android/systemui/columbus/actions/SilenceCall$phoneStateListener$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/telephony/TelephonyListenerManager;->removeCallStateListener(Landroid/telephony/TelephonyCallback$CallStateListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/SilenceCall;->telephonyListenerManager:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/telephony/TelephonyListenerManager;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/SilenceCall;->phoneStateListener:Lcom/google/android/systemui/columbus/actions/SilenceCall$phoneStateListener$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/telephony/TelephonyListenerManager;->addCallStateListener(Landroid/telephony/TelephonyCallback$CallStateListener;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/SilenceCall;->telephonyManager:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/actions/SilenceCall;->isPhoneRinging:Z

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/SilenceCall;->silenceAlertsDisabled:Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/gates/Gate;->isBlocking()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/actions/SilenceCall;->isPhoneRinging:Z

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Lcom/google/android/systemui/columbus/actions/Action;->setAvailable(Z)V

    return-void
.end method
