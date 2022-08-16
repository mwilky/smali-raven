.class public final Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;
.super Lcom/google/android/systemui/elmyra/gates/Gate;
.source "TelephonyActivity.java"


# instance fields
.field public mIsCallBlocked:Z

.field public final mPhoneStateListener:Lcom/google/android/systemui/elmyra/gates/TelephonyActivity$1;

.field public final mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/telephony/TelephonyListenerManager;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/gates/Gate;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity$1;-><init>(Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;->mPhoneStateListener:Lcom/google/android/systemui/elmyra/gates/TelephonyActivity$1;

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;->mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

    return-void
.end method


# virtual methods
.method public final isBlocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;->mIsCallBlocked:Z

    return p0
.end method

.method public final onActivate()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;->mIsCallBlocked:Z

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;->mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;->mPhoneStateListener:Lcom/google/android/systemui/elmyra/gates/TelephonyActivity$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/telephony/TelephonyListenerManager;->addCallStateListener(Landroid/telephony/TelephonyCallback$CallStateListener;)V

    return-void
.end method

.method public final onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;->mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/TelephonyActivity;->mPhoneStateListener:Lcom/google/android/systemui/elmyra/gates/TelephonyActivity$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/telephony/TelephonyListenerManager;->removeCallStateListener(Landroid/telephony/TelephonyCallback$CallStateListener;)V

    return-void
.end method
