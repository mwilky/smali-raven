.class public final Lcom/android/systemui/biometrics/AuthCredentialView$2;
.super Lcom/android/systemui/biometrics/AuthCredentialView$ErrorTimer;
.source "AuthCredentialView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/biometrics/AuthCredentialView;->onCredentialVerified(Lcom/android/internal/widget/VerifyCredentialResponse;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/AuthCredentialView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/AuthCredentialView;Landroid/content/Context;JLandroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthCredentialView$2;->this$0:Lcom/android/systemui/biometrics/AuthCredentialView;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/biometrics/AuthCredentialView$ErrorTimer;-><init>(Landroid/content/Context;JLandroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthCredentialView$2;->this$0:Lcom/android/systemui/biometrics/AuthCredentialView;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthCredentialView;->onErrorTimeoutFinish()V

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthCredentialView$2;->this$0:Lcom/android/systemui/biometrics/AuthCredentialView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mClearErrorRunnable:Lcom/android/systemui/biometrics/AuthCredentialView$1;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthCredentialView$1;->run()V

    return-void
.end method
