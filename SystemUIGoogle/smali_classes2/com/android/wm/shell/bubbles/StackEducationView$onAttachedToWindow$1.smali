.class public final Lcom/android/wm/shell/bubbles/StackEducationView$onAttachedToWindow$1;
.super Ljava/lang/Object;
.source "StackEducationView.kt"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/bubbles/StackEducationView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/bubbles/StackEducationView;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/bubbles/StackEducationView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/StackEducationView$onAttachedToWindow$1;->this$0:Lcom/android/wm/shell/bubbles/StackEducationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const-string p1, "event"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/bubbles/StackEducationView$onAttachedToWindow$1;->this$0:Lcom/android/wm/shell/bubbles/StackEducationView;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/StackEducationView;->access$isHiding$p(Lcom/android/wm/shell/bubbles/StackEducationView;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/StackEducationView$onAttachedToWindow$1;->this$0:Lcom/android/wm/shell/bubbles/StackEducationView;

    invoke-virtual {p0, p3}, Lcom/android/wm/shell/bubbles/StackEducationView;->hide(Z)V

    return v0

    :cond_0
    return p3
.end method
