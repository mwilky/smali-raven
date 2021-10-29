.class Lcom/google/android/systemui/gamedashboard/ShortcutBarView$3;
.super Ljava/lang/Object;
.source "ShortcutBarView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/gamedashboard/ShortcutBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$3;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$3;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$1500(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)F

    move-result p1

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$3;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$1600(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)F

    move-result v0

    sub-int/2addr p4, p2

    int-to-float p2, p4

    sub-int/2addr p8, p6

    int-to-float p4, p8

    sub-int/2addr p5, p3

    int-to-float p3, p5

    sub-int/2addr p9, p7

    int-to-float p5, p9

    iget-object p6, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$3;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p6}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$1700(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)I

    move-result p6

    iget-object p7, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$3;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p7}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$1800(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)I

    move-result p7

    iget-object p8, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$3;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p8}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$1100(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Lcom/google/android/systemui/gamedashboard/RevealButton;

    move-result-object p8

    invoke-virtual {p8}, Landroid/view/View;->getVisibility()I

    move-result p8

    if-nez p8, :cond_1

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$3;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$1100(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Lcom/google/android/systemui/gamedashboard/RevealButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/systemui/gamedashboard/RevealButton;->isOnTheRight()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$3;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$1900(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p2, p1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    int-to-float p6, p6

    sub-float/2addr p2, p6

    mul-float/2addr p2, p1

    sub-float/2addr p4, p6

    div-float/2addr p2, p4

    :goto_0
    int-to-float p1, p7

    sub-float/2addr p3, p1

    mul-float/2addr p3, v0

    sub-float/2addr p5, p1

    div-float/2addr p3, p5

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$3;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p1, p2, p3}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$2000(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;FF)V

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$3;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$2100(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)V

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarView$3;->this$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-static {p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->access$2200(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
