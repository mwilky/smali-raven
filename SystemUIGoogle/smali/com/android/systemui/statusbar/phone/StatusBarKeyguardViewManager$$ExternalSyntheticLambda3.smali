.class public final synthetic Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public final synthetic f$1:Landroid/hardware/biometrics/BiometricSourceType;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$$ExternalSyntheticLambda3;->f$1:Landroid/hardware/biometrics/BiometricSourceType;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$$ExternalSyntheticLambda3;->f$1:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->$r8$lambda$Ck6RpPvpyZoDBwqW39ub7mIjSZw(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Landroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method
