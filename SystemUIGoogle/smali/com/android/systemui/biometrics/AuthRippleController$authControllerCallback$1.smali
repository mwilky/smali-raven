.class public final Lcom/android/systemui/biometrics/AuthRippleController$authControllerCallback$1;
.super Ljava/lang/Object;
.source "AuthRippleController.kt"

# interfaces
.implements Lcom/android/systemui/biometrics/AuthController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/biometrics/AuthRippleController;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Context;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/commandline/CommandRegistry;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Ljavax/inject/Provider;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/biometrics/AuthRippleView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/biometrics/AuthRippleController;


# direct methods
.method constructor <init>(Lcom/android/systemui/biometrics/AuthRippleController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleController$authControllerCallback$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllAuthenticatorsRegistered()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController$authControllerCallback$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleController;

    invoke-static {v0}, Lcom/android/systemui/biometrics/AuthRippleController;->access$updateUdfpsDependentParams(Lcom/android/systemui/biometrics/AuthRippleController;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleController$authControllerCallback$1;->this$0:Lcom/android/systemui/biometrics/AuthRippleController;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthRippleController;->updateSensorLocation()V

    return-void
.end method

.method public onEnrollmentsChanged()V
    .locals 0

    return-void
.end method
