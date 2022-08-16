.class public final Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "ScreenStateAdjustment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment$1;->this$0:Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinishedGoingToSleep(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment$1;->this$0:Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment;

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/sensors/config/Adjustment;->mCallback:Ljava/util/function/Consumer;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment$1;->this$0:Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment;

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/sensors/config/Adjustment;->mCallback:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
