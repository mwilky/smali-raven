.class public final synthetic Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;->this$0:Lcom/android/systemui/biometrics/AuthContainerView;

    sget v0, Lcom/android/systemui/biometrics/AuthContainerView;->$r8$clinit:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/biometrics/AuthContainerView;->addCredentialView(ZZ)V

    return-void
.end method
