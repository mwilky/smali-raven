.class public final Lcom/android/wm/shell/compatui/CompatUIController$CompatUIImpl;
.super Ljava/lang/Object;
.source "CompatUIController.java"

# interfaces
.implements Lcom/android/wm/shell/compatui/CompatUI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/compatui/CompatUIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CompatUIImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/compatui/CompatUIController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/compatui/CompatUIController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/compatui/CompatUIController$CompatUIImpl;->this$0:Lcom/android/wm/shell/compatui/CompatUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyguardShowingChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/compatui/CompatUIController$CompatUIImpl;->this$0:Lcom/android/wm/shell/compatui/CompatUIController;

    iget-object v0, v0, Lcom/android/wm/shell/compatui/CompatUIController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/compatui/CompatUIController$CompatUIImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/compatui/CompatUIController$CompatUIImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/compatui/CompatUIController$CompatUIImpl;Z)V

    invoke-interface {v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
