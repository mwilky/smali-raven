.class final Lcom/android/wm/shell/bubbles/StackEducationView$view$2;
.super Lkotlin/jvm/internal/Lambda;
.source "StackEducationView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/bubbles/StackEducationView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/bubbles/StackEducationView;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/bubbles/StackEducationView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/StackEducationView$view$2;->this$0:Lcom/android/wm/shell/bubbles/StackEducationView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/View;
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/StackEducationView$view$2;->this$0:Lcom/android/wm/shell/bubbles/StackEducationView;

    sget v0, Lcom/android/wm/shell/R$id;->stack_education_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/StackEducationView$view$2;->invoke()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
