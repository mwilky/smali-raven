.class Lcom/android/systemui/wmshell/WMShell$7;
.super Ljava/lang/Object;
.source "WMShell.java"

# interfaces
.implements Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wmshell/WMShell;->initOneHanded(Lcom/android/wm/shell/onehanded/OneHanded;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wmshell/WMShell;


# direct methods
.method public static synthetic $r8$lambda$9DsFkX2Gl0jvZ1dfGbzhemzTMUk(Lcom/android/systemui/wmshell/WMShell$7;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wmshell/WMShell$7;->lambda$onStartTransition$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$OPrcpkH2JsmKn5zBZTSMJPj0hoA(Lcom/android/systemui/wmshell/WMShell$7;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wmshell/WMShell$7;->lambda$onStartFinished$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$n5PR_ps3QVV9wdIROF6rRtSpQig(Lcom/android/systemui/wmshell/WMShell$7;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wmshell/WMShell$7;->lambda$onStopFinished$2()V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/wmshell/WMShell;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShell$7;->this$0:Lcom/android/systemui/wmshell/WMShell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onStartFinished$1()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$7;->this$0:Lcom/android/systemui/wmshell/WMShell;

    invoke-static {p0}, Lcom/android/systemui/wmshell/WMShell;->access$100(Lcom/android/systemui/wmshell/WMShell;)Lcom/android/systemui/model/SysUiState;

    move-result-object p0

    const/high16 v0, 0x10000

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    return-void
.end method

.method private synthetic lambda$onStartTransition$0()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$7;->this$0:Lcom/android/systemui/wmshell/WMShell;

    invoke-static {p0}, Lcom/android/systemui/wmshell/WMShell;->access$100(Lcom/android/systemui/wmshell/WMShell;)Lcom/android/systemui/model/SysUiState;

    move-result-object p0

    const/high16 v0, 0x10000

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    return-void
.end method

.method private synthetic lambda$onStopFinished$2()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$7;->this$0:Lcom/android/systemui/wmshell/WMShell;

    invoke-static {p0}, Lcom/android/systemui/wmshell/WMShell;->access$100(Lcom/android/systemui/wmshell/WMShell;)Lcom/android/systemui/model/SysUiState;

    move-result-object p0

    const/high16 v0, 0x10000

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    return-void
.end method


# virtual methods
.method public onStartFinished(Landroid/graphics/Rect;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/wmshell/WMShell$7;->this$0:Lcom/android/systemui/wmshell/WMShell;

    invoke-static {p1}, Lcom/android/systemui/wmshell/WMShell;->access$000(Lcom/android/systemui/wmshell/WMShell;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/wmshell/WMShell$7$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/wmshell/WMShell$7$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wmshell/WMShell$7;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStartTransition(Z)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/wmshell/WMShell$7;->this$0:Lcom/android/systemui/wmshell/WMShell;

    invoke-static {p1}, Lcom/android/systemui/wmshell/WMShell;->access$000(Lcom/android/systemui/wmshell/WMShell;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/wmshell/WMShell$7$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/wmshell/WMShell$7$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wmshell/WMShell$7;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onStopFinished(Landroid/graphics/Rect;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/wmshell/WMShell$7;->this$0:Lcom/android/systemui/wmshell/WMShell;

    invoke-static {p1}, Lcom/android/systemui/wmshell/WMShell;->access$000(Lcom/android/systemui/wmshell/WMShell;)Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/wmshell/WMShell$7$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/systemui/wmshell/WMShell$7$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wmshell/WMShell$7;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
