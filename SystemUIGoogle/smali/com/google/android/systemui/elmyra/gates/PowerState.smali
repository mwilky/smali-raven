.class public Lcom/google/android/systemui/elmyra/gates/PowerState;
.super Lcom/google/android/systemui/elmyra/gates/Gate;
.source "PowerState.java"


# instance fields
.field public final mKeyguardUpdateMonitorCallback:Lcom/google/android/systemui/elmyra/gates/PowerState$1;

.field public final mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/gates/Gate;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/systemui/elmyra/gates/PowerState$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/elmyra/gates/PowerState$1;-><init>(Lcom/google/android/systemui/elmyra/gates/PowerState;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/gates/PowerState;->mKeyguardUpdateMonitorCallback:Lcom/google/android/systemui/elmyra/gates/PowerState$1;

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/PowerState;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method


# virtual methods
.method public isBlocked()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/PowerState;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onActivate()V
    .locals 1

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/PowerState;->mKeyguardUpdateMonitorCallback:Lcom/google/android/systemui/elmyra/gates/PowerState$1;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public onDeactivate()V
    .locals 1

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/PowerState;->mKeyguardUpdateMonitorCallback:Lcom/google/android/systemui/elmyra/gates/PowerState$1;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method
