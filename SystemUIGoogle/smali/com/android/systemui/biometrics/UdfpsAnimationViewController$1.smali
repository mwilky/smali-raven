.class Lcom/android/systemui/biometrics/UdfpsAnimationViewController$1;
.super Ljava/lang/Object;
.source "UdfpsAnimationViewController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/StatusBar$ExpansionChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/UdfpsAnimationViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/biometrics/UdfpsAnimationViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController$1;->this$0:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpansionChanged(FZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController$1;->this$0:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    iput-boolean p2, v0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->mNotificationShadeExpanded:Z

    invoke-static {v0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->access$000(Lcom/android/systemui/biometrics/UdfpsAnimationViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/biometrics/UdfpsAnimationView;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->onExpansionChanged(FZ)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController$1;->this$0:Lcom/android/systemui/biometrics/UdfpsAnimationViewController;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->updatePauseAuth()V

    return-void
.end method
