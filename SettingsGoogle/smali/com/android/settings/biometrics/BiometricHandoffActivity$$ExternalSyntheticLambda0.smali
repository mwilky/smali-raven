.class public final synthetic Lcom/android/settings/biometrics/BiometricHandoffActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/biometrics/BiometricHandoffActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics/BiometricHandoffActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricHandoffActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/biometrics/BiometricHandoffActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricHandoffActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/biometrics/BiometricHandoffActivity;

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricHandoffActivity;->onNextButtonClick(Landroid/view/View;)V

    return-void
.end method
