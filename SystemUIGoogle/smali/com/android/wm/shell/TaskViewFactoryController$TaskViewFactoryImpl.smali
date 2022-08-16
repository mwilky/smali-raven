.class Lcom/android/wm/shell/TaskViewFactoryController$TaskViewFactoryImpl;
.super Ljava/lang/Object;
.source "TaskViewFactoryController.java"

# interfaces
.implements Lcom/android/wm/shell/TaskViewFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/TaskViewFactoryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TaskViewFactoryImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/TaskViewFactoryController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/TaskViewFactoryController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/TaskViewFactoryController$TaskViewFactoryImpl;->this$0:Lcom/android/wm/shell/TaskViewFactoryController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1$1$1;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/TaskViewFactoryController$TaskViewFactoryImpl;->this$0:Lcom/android/wm/shell/TaskViewFactoryController;

    iget-object v0, v0, Lcom/android/wm/shell/TaskViewFactoryController;->mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/TaskViewFactoryController$TaskViewFactoryImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/wm/shell/TaskViewFactoryController$TaskViewFactoryImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/TaskViewFactoryController$TaskViewFactoryImpl;Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$showDetail$1$1$1;)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
