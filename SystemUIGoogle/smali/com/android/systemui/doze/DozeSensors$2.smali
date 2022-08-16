.class public final Lcom/android/systemui/doze/DozeSensors$2;
.super Ljava/lang/Object;
.source "DozeSensors.java"

# interfaces
.implements Lcom/android/systemui/biometrics/AuthController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeSensors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/doze/DozeSensors;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/DozeSensors;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors$2;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAllAuthenticatorsRegistered()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors$2;->updateUdfpsEnrolled()V

    return-void
.end method

.method public final onEnrollmentsChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors$2;->updateUdfpsEnrolled()V

    return-void
.end method

.method public final updateUdfpsEnrolled()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$2;->this$0:Lcom/android/systemui/doze/DozeSensors;

    iget-object v1, v0, Lcom/android/systemui/doze/DozeSensors;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/biometrics/AuthController;->isUdfpsEnrolled(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/doze/DozeSensors;->mUdfpsEnrolled:Z

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$2;->this$0:Lcom/android/systemui/doze/DozeSensors;

    iget-object v0, v0, Lcom/android/systemui/doze/DozeSensors;->mTriggerSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_7

    aget-object v4, v0, v3

    const/16 v5, 0xb

    iget v6, v4, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mPulseReason:I

    const/4 v7, 0x1

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/systemui/doze/DozeSensors$2;->this$0:Lcom/android/systemui/doze/DozeSensors;

    iget-boolean v6, v5, Lcom/android/systemui/doze/DozeSensors;->mUdfpsEnrolled:Z

    if-eqz v6, :cond_0

    iget-object v5, v5, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/hardware/display/AmbientDisplayConfiguration;->quickPickupSensorEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    move v7, v2

    :goto_1
    iget-boolean v5, v4, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mConfigured:Z

    if-ne v5, v7, :cond_1

    goto :goto_3

    :cond_1
    iput-boolean v7, v4, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mConfigured:Z

    invoke-virtual {v4}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->updateListening()V

    goto :goto_3

    :cond_2
    const/16 v5, 0xa

    if-ne v5, v6, :cond_6

    iget-object v5, p0, Lcom/android/systemui/doze/DozeSensors$2;->this$0:Lcom/android/systemui/doze/DozeSensors;

    iget-boolean v6, v5, Lcom/android/systemui/doze/DozeSensors;->mUdfpsEnrolled:Z

    if-eqz v6, :cond_3

    iget-object v6, v5, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    const/4 v8, -0x2

    invoke-virtual {v6, v8}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v6

    if-nez v6, :cond_4

    iget-boolean v5, v5, Lcom/android/systemui/doze/DozeSensors;->mScreenOffUdfpsEnabled:Z

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    move v7, v2

    :cond_4
    :goto_2
    iget-boolean v5, v4, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mConfigured:Z

    if-ne v5, v7, :cond_5

    goto :goto_3

    :cond_5
    iput-boolean v7, v4, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mConfigured:Z

    invoke-virtual {v4}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->updateListening()V

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method
