.class public final Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$init$1;
.super Ljava/lang/Object;
.source "KeyguardMediaViewController.kt"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$init$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$init$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;

    check-cast p1, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->setSmartspaceView(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;)V

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$init$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;

    invoke-static {p1}, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->access$getMediaManager$p(Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;)Lcom/android/systemui/statusbar/NotificationMediaManager;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$init$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;

    invoke-static {p0}, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->access$getMediaListener$p(Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;)Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$mediaListener$1;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->addCallback(Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$init$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->setSmartspaceView(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;)V

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$init$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;

    invoke-static {p1}, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->access$getMediaManager$p(Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;)Lcom/android/systemui/statusbar/NotificationMediaManager;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$init$1;->this$0:Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;

    invoke-static {p0}, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;->access$getMediaListener$p(Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;)Lcom/google/android/systemui/smartspace/KeyguardMediaViewController$mediaListener$1;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->removeCallback(Lcom/android/systemui/statusbar/NotificationMediaManager$MediaListener;)V

    return-void
.end method
