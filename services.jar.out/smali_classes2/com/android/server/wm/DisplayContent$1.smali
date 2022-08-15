.class public Lcom/android/server/wm/DisplayContent$1;
.super Ljava/lang/Object;
.source "DisplayContent.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/DisplayContent;->findScrollCaptureTargetWindow(Lcom/android/server/wm/WindowState;I)Lcom/android/server/wm/WindowState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Lcom/android/server/wm/WindowState;",
        ">;"
    }
.end annotation


# instance fields
.field public behindTopWindow:Z

.field public final synthetic this$0:Lcom/android/server/wm/DisplayContent;

.field public final synthetic val$searchBehind:Lcom/android/server/wm/WindowState;

.field public final synthetic val$taskId:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$1;->this$0:Lcom/android/server/wm/DisplayContent;

    iput-object p2, p0, Lcom/android/server/wm/DisplayContent$1;->val$searchBehind:Lcom/android/server/wm/WindowState;

    iput p3, p0, Lcom/android/server/wm/DisplayContent$1;->val$taskId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent$1;->behindTopWindow:Z

    return-void
.end method


# virtual methods
.method public test(Lcom/android/server/wm/WindowState;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent$1;->behindTopWindow:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$1;->val$searchBehind:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_0

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent$1;->behindTopWindow:Z

    :cond_0
    return v2

    :cond_1
    iget v0, p0, Lcom/android/server/wm/DisplayContent$1;->val$taskId:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_5

    iget p0, p0, Lcom/android/server/wm/DisplayContent$1;->val$taskId:I

    invoke-virtual {v0, p0}, Lcom/android/server/wm/Task;->isTaskId(I)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isSecureLocked()Z

    move-result p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v2
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent$1;->test(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method
