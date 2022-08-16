.class public Lcom/android/systemui/biometrics/AuthCredentialView$ErrorTimer;
.super Landroid/os/CountDownTimer;
.source "AuthCredentialView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/AuthCredentialView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorTimer"
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mErrorView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLandroid/widget/TextView;)V
    .locals 2

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    iput-object p4, p0, Lcom/android/systemui/biometrics/AuthCredentialView$ErrorTimer;->mErrorView:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthCredentialView$ErrorTimer;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onTick(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    long-to-int p1, p1

    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthCredentialView$ErrorTimer;->mErrorView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthCredentialView$ErrorTimer;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const p1, 0x7f130136

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
