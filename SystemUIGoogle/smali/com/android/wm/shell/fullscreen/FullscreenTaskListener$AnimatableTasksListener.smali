.class public final Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$AnimatableTasksListener;
.super Ljava/lang/Object;
.source "FullscreenTaskListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimatableTasksListener"
.end annotation


# instance fields
.field public final mTaskIds:Landroid/util/SparseBooleanArray;

.field public final synthetic this$0:Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$AnimatableTasksListener;->this$0:Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$AnimatableTasksListener;->mTaskIds:Landroid/util/SparseBooleanArray;

    return-void
.end method
