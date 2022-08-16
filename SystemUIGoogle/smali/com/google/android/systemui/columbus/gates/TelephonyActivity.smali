.class public final Lcom/google/android/systemui/columbus/gates/TelephonyActivity;
.super Lcom/google/android/systemui/columbus/gates/Gate;
.source "TelephonyActivity.kt"


# instance fields
.field public isCallBlocked:Z

.field public final phoneStateListener:Lcom/google/android/systemui/columbus/gates/TelephonyActivity$phoneStateListener$1;

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
.method public constructor <init>(Landroid/content/Context;Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldagger/Lazy<",
            "Landroid/telephony/TelephonyManager;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/telephony/TelephonyListenerManager;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/gates/Gate;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/gates/TelephonyActivity;->telephonyManager:Ldagger/Lazy;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/gates/TelephonyActivity;->telephonyListenerManager:Ldagger/Lazy;

    new-instance p1, Lcom/google/android/systemui/columbus/gates/TelephonyActivity$phoneStateListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/gates/TelephonyActivity$phoneStateListener$1;-><init>(Lcom/google/android/systemui/columbus/gates/TelephonyActivity;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/TelephonyActivity;->phoneStateListener:Lcom/google/android/systemui/columbus/gates/TelephonyActivity$phoneStateListener$1;

    return-void
.end method


# virtual methods
.method public final onActivate()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/TelephonyActivity;->telephonyManager:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/TelephonyActivity;->isCallBlocked:Z

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/TelephonyActivity;->telephonyListenerManager:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/telephony/TelephonyListenerManager;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/TelephonyActivity;->phoneStateListener:Lcom/google/android/systemui/columbus/gates/TelephonyActivity$phoneStateListener$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/telephony/TelephonyListenerManager;->addCallStateListener(Landroid/telephony/TelephonyCallback$CallStateListener;)V

    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/TelephonyActivity;->isCallBlocked:Z

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/gates/Gate;->setBlocking(Z)V

    return-void
.end method

.method public final onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/TelephonyActivity;->telephonyListenerManager:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/telephony/TelephonyListenerManager;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/TelephonyActivity;->phoneStateListener:Lcom/google/android/systemui/columbus/gates/TelephonyActivity$phoneStateListener$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/telephony/TelephonyListenerManager;->removeCallStateListener(Landroid/telephony/TelephonyCallback$CallStateListener;)V

    return-void
.end method
