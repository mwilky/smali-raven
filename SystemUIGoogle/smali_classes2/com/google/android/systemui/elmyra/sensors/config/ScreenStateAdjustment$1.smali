.class Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "ScreenStateAdjustment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment$1;->this$0:Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment$1;->this$0:Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/sensors/config/Adjustment;->onSensitivityChanged()V

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment$1;->this$0:Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/sensors/config/Adjustment;->onSensitivityChanged()V

    return-void
.end method
