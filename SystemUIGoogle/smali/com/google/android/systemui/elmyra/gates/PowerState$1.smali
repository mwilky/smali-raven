.class public final Lcom/google/android/systemui/elmyra/gates/PowerState$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "PowerState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/gates/PowerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/elmyra/gates/PowerState;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/elmyra/gates/PowerState;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/PowerState$1;->this$0:Lcom/google/android/systemui/elmyra/gates/PowerState;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinishedGoingToSleep(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/PowerState$1;->this$0:Lcom/google/android/systemui/elmyra/gates/PowerState;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->notifyListener()V

    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/PowerState$1;->this$0:Lcom/google/android/systemui/elmyra/gates/PowerState;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->notifyListener()V

    return-void
.end method
