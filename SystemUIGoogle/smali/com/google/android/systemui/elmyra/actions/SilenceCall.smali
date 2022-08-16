.class public final Lcom/google/android/systemui/elmyra/actions/SilenceCall;
.super Lcom/google/android/systemui/elmyra/actions/Action;
.source "SilenceCall.java"


# instance fields
.field public mIsPhoneRinging:Z

.field public final mPhoneStateListener:Lcom/google/android/systemui/elmyra/actions/SilenceCall$1;

.field public mSilenceSettingEnabled:Z

.field public final mTelecomManager:Landroid/telecom/TelecomManager;

.field public final mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/telephony/TelephonyListenerManager;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/elmyra/actions/Action;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    new-instance v0, Lcom/google/android/systemui/elmyra/actions/SilenceCall$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/elmyra/actions/SilenceCall$1;-><init>(Lcom/google/android/systemui/elmyra/actions/SilenceCall;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->mPhoneStateListener:Lcom/google/android/systemui/elmyra/actions/SilenceCall$1;

    const-class v0, Landroid/telecom/TelecomManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->mTelecomManager:Landroid/telecom/TelecomManager;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->updatePhoneStateListener()V

    new-instance p1, Lcom/google/android/systemui/elmyra/UserContentObserver;

    iget-object p2, p0, Lcom/google/android/systemui/elmyra/actions/Action;->mContext:Landroid/content/Context;

    const-string v0, "assist_gesture_silence_alerts_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/android/wm/shell/pip/phone/PipMotionHelper$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/google/android/systemui/elmyra/UserContentObserver;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/util/function/Consumer;Z)V

    return-void
.end method


# virtual methods
.method public final isAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->mSilenceSettingEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->mIsPhoneRinging:Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onTrigger(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->silenceRinger()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [mSilenceSettingEnabled -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->mSilenceSettingEnabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updatePhoneStateListener()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/Action;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assist_gesture_silence_alerts_enabled"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->mSilenceSettingEnabled:Z

    if-eq v0, v3, :cond_3

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->mSilenceSettingEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

    iget-object v3, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->mPhoneStateListener:Lcom/google/android/systemui/elmyra/actions/SilenceCall$1;

    invoke-virtual {v0, v3}, Lcom/android/systemui/telephony/TelephonyListenerManager;->addCallStateListener(Landroid/telephony/TelephonyCallback$CallStateListener;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

    iget-object v3, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->mPhoneStateListener:Lcom/google/android/systemui/elmyra/actions/SilenceCall$1;

    invoke-virtual {v0, v3}, Lcom/android/systemui/telephony/TelephonyListenerManager;->removeCallStateListener(Landroid/telephony/TelephonyCallback$CallStateListener;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    iput-boolean v2, p0, Lcom/google/android/systemui/elmyra/actions/SilenceCall;->mIsPhoneRinging:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->notifyListener()V

    :cond_3
    return-void
.end method
