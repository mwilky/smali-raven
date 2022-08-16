.class public final Lcom/android/systemui/controls/TooltipManager$dismissView$1$1;
.super Ljava/lang/Object;
.source "TooltipManager.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/TooltipManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/TooltipManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/TooltipManager$dismissView$1$1;->this$0:Lcom/android/systemui/controls/TooltipManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/TooltipManager$dismissView$1$1;->this$0:Lcom/android/systemui/controls/TooltipManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/TooltipManager;->hide(Z)V

    return-void
.end method
