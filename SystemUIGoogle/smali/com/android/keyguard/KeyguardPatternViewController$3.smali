.class Lcom/android/keyguard/KeyguardPatternViewController$3;
.super Landroid/os/CountDownTimer;
.source "KeyguardPatternViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardPatternViewController;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPatternViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPatternViewController;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternViewController$3;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController$3;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternViewController;->access$000(Lcom/android/keyguard/KeyguardPatternViewController;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController$3;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardPatternViewController;->access$1200(Lcom/android/keyguard/KeyguardPatternViewController;)V

    return-void
.end method

.method public onTick(J)V
    .locals 4

    long-to-double p1, p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p1, p1

    iget-object p2, p0, Lcom/android/keyguard/KeyguardPatternViewController$3;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardPatternViewController;->access$200(Lcom/android/keyguard/KeyguardPatternViewController;)Lcom/android/keyguard/KeyguardMessageAreaController;

    move-result-object p2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController$3;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardPatternViewController;->access$1100(Lcom/android/keyguard/KeyguardPatternViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardPatternView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$plurals;->kg_too_many_failed_attempts_countdown:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method
