.class public final synthetic Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->$r8$lambda$Kb4rO8_YC-_VtwcQOA-PFjkxu2k(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/statusbar/phone/BiometricUnlockController$PendingAuthenticated;)V

    return-void
.end method
