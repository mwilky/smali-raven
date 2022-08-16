.class public final synthetic Lcom/android/keyguard/KeyguardPinViewController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DevicePostureController$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardPinViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardPinViewController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPinViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardPinViewController;

    return-void
.end method


# virtual methods
.method public final onPostureChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardPinViewController;

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardPINView;

    iput p1, p0, Lcom/android/keyguard/KeyguardPINView;->mLastDevicePosture:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPINView;->updateMargins()V

    return-void
.end method
