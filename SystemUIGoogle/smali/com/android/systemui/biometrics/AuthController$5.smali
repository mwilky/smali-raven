.class public final Lcom/android/systemui/biometrics/AuthController$5;
.super Ljava/lang/Object;
.source "AuthController.java"

# interfaces
.implements Lcom/android/systemui/biometrics/UdfpsController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/AuthController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/AuthController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthController$5;->this$0:Lcom/android/systemui/biometrics/AuthController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFingerDown()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController$5;->this$0:Lcom/android/systemui/biometrics/AuthController;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/biometrics/AuthDialog;->onPointerDown()V

    :cond_0
    return-void
.end method

.method public final onFingerUp()V
    .locals 0

    return-void
.end method
