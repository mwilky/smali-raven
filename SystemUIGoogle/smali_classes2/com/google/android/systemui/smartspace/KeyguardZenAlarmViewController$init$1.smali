.class public final Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$init$1;
.super Ljava/lang/Object;
.source "KeyguardZenAlarmViewController.kt"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$init$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$init$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    check-cast p1, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->setSmartspaceView(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;)V

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$init$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    invoke-static {p1}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->access$getZenModeController$p(Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$init$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    invoke-static {v0}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->access$getZenModeCallback$p(Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;)Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$zenModeCallback$1;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$init$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    invoke-static {p1}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->access$getNextAlarmController$p(Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;)Lcom/android/systemui/statusbar/policy/NextAlarmController;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$init$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    invoke-static {v0}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->access$getNextAlarmCallback$p(Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;)Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$init$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    invoke-static {p0}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->access$refresh(Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$init$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->setSmartspaceView(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;)V

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$init$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    invoke-static {p1}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->access$getZenModeController$p(Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;)Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$init$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    invoke-static {v0}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->access$getZenModeCallback$p(Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;)Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$zenModeCallback$1;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$init$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    invoke-static {p1}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->access$getNextAlarmController$p(Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;)Lcom/android/systemui/statusbar/policy/NextAlarmController;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController$init$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    invoke-static {p0}, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;->access$getNextAlarmCallback$p(Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;)Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method
