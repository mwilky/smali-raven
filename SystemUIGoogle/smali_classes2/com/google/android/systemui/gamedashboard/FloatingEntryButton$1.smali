.class Lcom/google/android/systemui/gamedashboard/FloatingEntryButton$1;
.super Ljava/lang/Object;
.source "FloatingEntryButton.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->show(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton$1;->this$0:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton$1;->this$0:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->access$000(Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton$1;->this$0:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->access$100(Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;)Ljava/util/function/Consumer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton$1;->this$0:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->access$100(Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;)Ljava/util/function/Consumer;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton$1;->this$0:Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->access$200(Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
