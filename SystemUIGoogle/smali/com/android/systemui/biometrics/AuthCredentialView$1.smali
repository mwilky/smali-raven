.class public final Lcom/android/systemui/biometrics/AuthCredentialView$1;
.super Ljava/lang/Object;
.source "AuthCredentialView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/AuthCredentialView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/AuthCredentialView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/AuthCredentialView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthCredentialView$1;->this$0:Lcom/android/systemui/biometrics/AuthCredentialView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthCredentialView$1;->this$0:Lcom/android/systemui/biometrics/AuthCredentialView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthCredentialView;->mErrorView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
