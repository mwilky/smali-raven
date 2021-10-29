.class abstract Lcom/android/systemui/biometrics/UdfpsAnimationViewController;
.super Lcom/android/systemui/util/ViewController;
.source "UdfpsAnimationViewController.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/systemui/biometrics/UdfpsAnimationView;",
        ">",
        "Lcom/android/systemui/util/ViewController<",
        "TT;>;",
        "Lcom/android/systemui/Dumpable;"
    }
.end annotation


# instance fields
.field final mDumpManger:Lcom/android/systemui/dump/DumpManager;

.field mNotificationShadeExpanded:Z

.field final mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mStatusBarExpansionChangedListener:Lcom/android/systemui/statusbar/phone/StatusBar$ExpansionChangedListener;

.field final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/biometrics/UdfpsAnimationView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/dump/DumpManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            "Lcom/android/systemui/dump/DumpManager;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    new-instance p1, Lcom/android/systemui/biometrics/UdfpsAnimationViewController$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController$1;-><init>(Lcom/android/systemui/biometrics/UdfpsAnimationViewController;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->mStatusBarExpansionChangedListener:Lcom/android/systemui/statusbar/phone/StatusBar$ExpansionChangedListener;

    iput-object p2, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p3, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p4, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->mDumpManger:Lcom/android/systemui/dump/DumpManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/biometrics/UdfpsAnimationViewController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method private getDumpTag()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method dozeTimeTick()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/biometrics/UdfpsAnimationView;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->dozeTimeTick()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/biometrics/UdfpsAnimationView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mNotificationShadeExpanded="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->mNotificationShadeExpanded:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "shouldPauseAuth()="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->shouldPauseAuth()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isPauseAuth="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/biometrics/UdfpsAnimationView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->isPauseAuth()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method getPaddingX()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method getPaddingY()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method abstract getTag()Ljava/lang/String;
.end method

.method getTouchTranslation()Landroid/graphics/PointF;
    .locals 1

    new-instance p0, Landroid/graphics/PointF;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method listenForTouchesOutsideView()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method onIlluminationStarting()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/biometrics/UdfpsAnimationView;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->onIlluminationStarting()V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/biometrics/UdfpsAnimationView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidate()V

    return-void
.end method

.method onIlluminationStopped()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/biometrics/UdfpsAnimationView;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->onIlluminationStopped()V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/biometrics/UdfpsAnimationView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidate()V

    return-void
.end method

.method onSensorRectUpdated(Landroid/graphics/RectF;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/biometrics/UdfpsAnimationView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->onSensorRectUpdated(Landroid/graphics/RectF;)V

    return-void
.end method

.method onTouchOutsideView()V
    .locals 0

    return-void
.end method

.method protected onViewAttached()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->mStatusBarExpansionChangedListener:Lcom/android/systemui/statusbar/phone/StatusBar$ExpansionChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->addExpansionChangedListener(Lcom/android/systemui/statusbar/phone/StatusBar$ExpansionChangedListener;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->mDumpManger:Lcom/android/systemui/dump/DumpManager;

    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->getDumpTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->mStatusBarExpansionChangedListener:Lcom/android/systemui/statusbar/phone/StatusBar$ExpansionChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->removeExpansionChangedListener(Lcom/android/systemui/statusbar/phone/StatusBar$ExpansionChangedListener;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->mDumpManger:Lcom/android/systemui/dump/DumpManager;

    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->getDumpTag()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/dump/DumpManager;->unregisterDumpable(Ljava/lang/String;)V

    return-void
.end method

.method shouldPauseAuth()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->mNotificationShadeExpanded:Z

    return p0
.end method

.method updatePauseAuth()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/biometrics/UdfpsAnimationView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->shouldPauseAuth()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->setPauseAuth(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/biometrics/UdfpsAnimationView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->postInvalidate()V

    :cond_0
    return-void
.end method
