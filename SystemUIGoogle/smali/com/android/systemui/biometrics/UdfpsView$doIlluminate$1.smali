.class public final Lcom/android/systemui/biometrics/UdfpsView$doIlluminate$1;
.super Ljava/lang/Object;
.source "UdfpsView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $onIlluminatedRunnable:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/systemui/biometrics/UdfpsView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda1;Lcom/android/systemui/biometrics/UdfpsView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsView$doIlluminate$1;->$onIlluminatedRunnable:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsView$doIlluminate$1;->this$0:Lcom/android/systemui/biometrics/UdfpsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsView$doIlluminate$1;->$onIlluminatedRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsView$doIlluminate$1;->this$0:Lcom/android/systemui/biometrics/UdfpsView;

    iget-boolean v1, p0, Lcom/android/systemui/biometrics/UdfpsView;->halControlsIllumination:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/android/systemui/biometrics/UdfpsView;->onIlluminatedDelayMs:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const-string p0, "UdfpsView"

    const-string v0, "doIlluminate | onIlluminatedRunnable is null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
