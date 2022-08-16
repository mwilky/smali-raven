.class public final Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$stateChangeListener$1;
.super Ljava/lang/Object;
.source "DreamsSmartspaceController.kt"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;-><init>(Landroid/content/Context;Landroid/app/smartspace/SmartspaceManager;Lcom/android/systemui/util/concurrency/Execution;Ljava/util/concurrent/Executor;Lcom/android/systemui/smartspace/dagger/SmartspaceViewComponent$Factory;Lcom/android/systemui/smartspace/SmartspacePrecondition;Ljava/util/Optional;Ljava/util/Optional;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$stateChangeListener$1;->this$0:Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    check-cast p1, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;->setPrimaryTextColor(I)V

    iget-object v0, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$stateChangeListener$1;->this$0:Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;

    iget-object v0, v0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->smartspaceViews:Ljava/util/LinkedHashSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$stateChangeListener$1;->this$0:Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;

    invoke-virtual {p0}, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->connectSession()V

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;->setDozeAmount(F)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$stateChangeListener$1;->this$0:Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;

    iget-object v0, v0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->smartspaceViews:Ljava/util/LinkedHashSet;

    check-cast p1, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceView;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$stateChangeListener$1;->this$0:Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;

    iget-object p1, p1, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->smartspaceViews:Ljava/util/LinkedHashSet;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController$stateChangeListener$1;->this$0:Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;

    invoke-virtual {p0}, Lcom/android/systemui/dreams/smartspace/DreamsSmartspaceController;->disconnect()V

    :cond_0
    return-void
.end method
