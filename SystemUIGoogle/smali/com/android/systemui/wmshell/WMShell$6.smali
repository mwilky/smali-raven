.class public final Lcom/android/systemui/wmshell/WMShell$6;
.super Ljava/lang/Object;
.source "WMShell.java"

# interfaces
.implements Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wmshell/WMShell;->initOneHanded(Lcom/android/wm/shell/onehanded/OneHanded;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wmshell/WMShell;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wmshell/WMShell;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShell$6;->this$0:Lcom/android/systemui/wmshell/WMShell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStartFinished(Landroid/graphics/Rect;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/wmshell/WMShell$6;->this$0:Lcom/android/systemui/wmshell/WMShell;

    iget-object p1, p1, Lcom/android/systemui/wmshell/WMShell;->mSysUiMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/systemui/wmshell/WMShell$6$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/wmshell/WMShell$6$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onStartTransition()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell$6;->this$0:Lcom/android/systemui/wmshell/WMShell;

    iget-object v0, v0, Lcom/android/systemui/wmshell/WMShell;->mSysUiMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/wmshell/WMShell$6$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/android/systemui/wmshell/WMShell$6$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onStopFinished(Landroid/graphics/Rect;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/wmshell/WMShell$6;->this$0:Lcom/android/systemui/wmshell/WMShell;

    iget-object p1, p1, Lcom/android/systemui/wmshell/WMShell;->mSysUiMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/systemui/wmshell/WMShell$6$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/wmshell/WMShell$6$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
