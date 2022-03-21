.class final Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;
.super Ljava/lang/Object;
.source "KeyguardBypassController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBypassController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingUnlock"
.end annotation


# instance fields
.field private final isStrongBiometric:Z

.field private final pendingUnlockType:Landroid/hardware/biometrics/BiometricSourceType;


# direct methods
.method public constructor <init>(Landroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 1

    const-string v0, "pendingUnlockType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;->pendingUnlockType:Landroid/hardware/biometrics/BiometricSourceType;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;->isStrongBiometric:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;->pendingUnlockType:Landroid/hardware/biometrics/BiometricSourceType;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;->pendingUnlockType:Landroid/hardware/biometrics/BiometricSourceType;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;->isStrongBiometric:Z

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;->isStrongBiometric:Z

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getPendingUnlockType()Landroid/hardware/biometrics/BiometricSourceType;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;->pendingUnlockType:Landroid/hardware/biometrics/BiometricSourceType;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;->pendingUnlockType:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricSourceType;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;->isStrongBiometric:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final isStrongBiometric()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;->isStrongBiometric:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PendingUnlock(pendingUnlockType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;->pendingUnlockType:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isStrongBiometric="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$PendingUnlock;->isStrongBiometric:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
