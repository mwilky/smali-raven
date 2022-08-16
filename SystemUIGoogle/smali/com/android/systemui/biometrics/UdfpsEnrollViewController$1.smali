.class public final Lcom/android/systemui/biometrics/UdfpsEnrollViewController$1;
.super Ljava/lang/Object;
.source "UdfpsEnrollViewController.java"

# interfaces
.implements Lcom/android/systemui/biometrics/UdfpsEnrollHelper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/UdfpsEnrollViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/UdfpsEnrollViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/UdfpsEnrollViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsEnrollViewController$1;->this$0:Lcom/android/systemui/biometrics/UdfpsEnrollViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEnrollmentHelp(II)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollViewController$1;->this$0:Lcom/android/systemui/biometrics/UdfpsEnrollViewController;

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/biometrics/UdfpsEnrollView;

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/biometrics/UdfpsEnrollView$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/systemui/biometrics/UdfpsEnrollView$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onEnrollmentProgress(II)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollViewController$1;->this$0:Lcom/android/systemui/biometrics/UdfpsEnrollViewController;

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/biometrics/UdfpsEnrollView;

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/biometrics/UdfpsEnrollView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsEnrollView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/UdfpsEnrollView;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onLastStepAcquired()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollViewController$1;->this$0:Lcom/android/systemui/biometrics/UdfpsEnrollViewController;

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/biometrics/UdfpsEnrollView;

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsEnrollView;->mFingerprintProgressDrawable:Lcom/android/systemui/biometrics/UdfpsEnrollProgressBarDrawable;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/qs/QSFooterView$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/android/systemui/qs/QSFooterView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
