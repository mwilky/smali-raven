.class public final synthetic Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl;

.field public final synthetic f$1:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl;

    iput-object p2, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl$$ExternalSyntheticLambda1;->f$1:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl;

    iget-object p0, p0, Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl$$ExternalSyntheticLambda1;->f$1:Ljava/io/PrintWriter;

    iget-object v0, v0, Lcom/android/wm/shell/ShellCommandHandlerImpl$HandlerImpl;->this$0:Lcom/android/wm/shell/ShellCommandHandlerImpl;

    iget-object v1, v0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    const-string v2, ""

    invoke-virtual {v1, p0, v2}, Lcom/android/wm/shell/ShellTaskOrganizer;->dump$1(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    iget-object v1, v0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mPipOptional:Ljava/util/Optional;

    new-instance v3, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda2;

    const/4 v4, 0x2

    invoke-direct {v3, v4, p0}, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, v0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mLegacySplitScreenOptional:Ljava/util/Optional;

    new-instance v3, Lcom/android/systemui/tuner/ShortcutPicker$$ExternalSyntheticLambda2;

    invoke-direct {v3, v4, p0}, Lcom/android/systemui/tuner/ShortcutPicker$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, v0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mOneHandedOptional:Ljava/util/Optional;

    new-instance v3, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda4;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p0}, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda4;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, v0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mHideDisplayCutout:Ljava/util/Optional;

    new-instance v3, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0}, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    iget-object v1, v0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mAppPairsOptional:Ljava/util/Optional;

    new-instance v3, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v3, v4, p0}, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    iget-object v1, v0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mSplitScreenOptional:Ljava/util/Optional;

    new-instance v3, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v3, v4, p0}, Lcom/android/wm/shell/ShellCommandHandlerImpl$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    iget-object v1, v0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mRecentTasks:Ljava/util/Optional;

    new-instance v3, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda8;

    const/4 v4, 0x4

    invoke-direct {v3, v4, p0}, Lcom/android/systemui/doze/DozeTriggers$$ExternalSyntheticLambda8;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    iget-object v0, v0, Lcom/android/wm/shell/ShellCommandHandlerImpl;->mKidsModeTaskOrganizer:Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;

    invoke-virtual {v0, p0, v2}, Lcom/android/wm/shell/kidsmode/KidsModeTaskOrganizer;->dump$1(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method
