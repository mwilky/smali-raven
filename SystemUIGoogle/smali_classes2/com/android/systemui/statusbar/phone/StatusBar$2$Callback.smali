.class Lcom/android/systemui/statusbar/phone/StatusBar$2$Callback;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/plugins/OverlayPlugin$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Callback"
.end annotation


# instance fields
.field private final mPlugin:Lcom/android/systemui/plugins/OverlayPlugin;

.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBar$2;


# direct methods
.method public static synthetic $r8$lambda$kn6f7W8NNcmDXKd0MvMCaG1Y-5o(ZLcom/android/systemui/plugins/OverlayPlugin;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$2$Callback;->lambda$onHoldStatusBarOpenChange$0(ZLcom/android/systemui/plugins/OverlayPlugin;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pm9ZH4Fa7lLHDWURxjtOEFvIwmE(Lcom/android/systemui/statusbar/phone/StatusBar$2$Callback;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$2$Callback;->lambda$onHoldStatusBarOpenChange$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$tvFgWpoCIetBub-IPX0LOP0zvOA(Lcom/android/systemui/statusbar/phone/StatusBar$2$Callback;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$2$Callback;->lambda$onHoldStatusBarOpenChange$2()V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$2;Lcom/android/systemui/plugins/OverlayPlugin;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$2$Callback;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$2$Callback;->mPlugin:Lcom/android/systemui/plugins/OverlayPlugin;

    return-void
.end method

.method private static synthetic lambda$onHoldStatusBarOpenChange$0(ZLcom/android/systemui/plugins/OverlayPlugin;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/OverlayPlugin;->setCollapseDesired(Z)V

    return-void
.end method

.method private synthetic lambda$onHoldStatusBarOpenChange$1(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$2$Callback;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$2;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$2;->access$300(Lcom/android/systemui/statusbar/phone/StatusBar$2;)Landroid/util/ArraySet;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBar$2$Callback$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$2$Callback$$ExternalSyntheticLambda2;-><init>(Z)V

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$onHoldStatusBarOpenChange$2()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$2$Callback;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$2$Callback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$2$Callback$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$2$Callback;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setStateListener(Lcom/android/systemui/statusbar/NotificationShadeWindowController$OtherwisedCollapsedListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$2$Callback;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$2;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar$2;->access$300(Lcom/android/systemui/statusbar/phone/StatusBar$2;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v0, p0}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setForcePluginOpen(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onHoldStatusBarOpenChange()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$2$Callback;->mPlugin:Lcom/android/systemui/plugins/OverlayPlugin;

    invoke-interface {v0}, Lcom/android/systemui/plugins/OverlayPlugin;->holdStatusBarOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$2$Callback;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$2;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar$2;->access$300(Lcom/android/systemui/statusbar/phone/StatusBar$2;)Landroid/util/ArraySet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$2$Callback;->mPlugin:Lcom/android/systemui/plugins/OverlayPlugin;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$2$Callback;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$2;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar$2;->access$300(Lcom/android/systemui/statusbar/phone/StatusBar$2;)Landroid/util/ArraySet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$2$Callback;->mPlugin:Lcom/android/systemui/plugins/OverlayPlugin;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$2$Callback;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$200(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$2$Callback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$2$Callback$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$2$Callback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
