.class public final Lcom/android/keyguard/KeyguardSimPinViewController$3;
.super Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;
.source "KeyguardSimPinViewController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSimPinViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSimPinViewController;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPinViewController;

    const-string v0, ""

    invoke-direct {p0, p1, v0, p2}, Lcom/android/keyguard/KeyguardSimPinViewController$CheckSimPin;-><init>(Lcom/android/keyguard/KeyguardSimPinViewController;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final onSimCheckResponse(Landroid/telephony/PinResult;)V
    .locals 2

    const-string/jumbo v0, "onSimCheckResponse  empty One result "

    invoke-static {v0}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/PinResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSimPinView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPinViewController;

    invoke-virtual {p1}, Landroid/telephony/PinResult;->getAttemptsRemaining()I

    move-result p1

    iput p1, v0, Lcom/android/keyguard/KeyguardSimPinViewController;->mRemainingAttempts:I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPinViewController$3;->this$0:Lcom/android/keyguard/KeyguardSimPinViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinViewController;->setLockedSimMessage()V

    :cond_0
    return-void
.end method
