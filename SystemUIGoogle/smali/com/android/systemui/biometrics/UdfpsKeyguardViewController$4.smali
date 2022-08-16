.class public final Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$4;
.super Ljava/lang/Object;
.source "UdfpsKeyguardViewController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$4;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$4;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    iget-object v0, p1, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/biometrics/UdfpsController;->mOverlayParams:Lcom/android/systemui/biometrics/UdfpsOverlayParams;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    iget v0, v0, Lcom/android/systemui/biometrics/UdfpsOverlayParams;->scaleFactor:F

    iput v0, v1, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mScaleFactor:F

    :cond_0
    iget-object p1, p1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    invoke-virtual {p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->updatePadding()V

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$4;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->updateColor()V

    return-void
.end method

.method public final onThemeChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$4;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->updateColor()V

    return-void
.end method

.method public final onUiModeChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$4;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->updateColor()V

    return-void
.end method
