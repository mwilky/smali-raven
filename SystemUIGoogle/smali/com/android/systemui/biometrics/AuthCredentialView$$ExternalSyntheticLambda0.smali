.class public final synthetic Lcom/android/systemui/biometrics/AuthCredentialView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/biometrics/AuthCredentialView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/biometrics/AuthCredentialView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthCredentialView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/biometrics/AuthCredentialView;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthCredentialView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/biometrics/AuthCredentialView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mContainerView:Lcom/android/systemui/biometrics/AuthContainerView;

    const/4 p1, 0x1

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/biometrics/AuthContainerView;->animateAway(IZ)V

    return-void
.end method
