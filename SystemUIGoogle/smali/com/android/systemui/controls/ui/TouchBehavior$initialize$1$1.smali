.class public final Lcom/android/systemui/controls/ui/TouchBehavior$initialize$1$1;
.super Ljava/lang/Object;
.source "TouchBehavior.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/controls/ui/TouchBehavior$initialize$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/TouchBehavior;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Lcom/android/systemui/controls/ui/TouchBehavior;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/controls/ui/TouchBehavior$initialize$1$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    iput-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior$initialize$1$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/controls/ui/TouchBehavior$initialize$1$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/controls/ui/TouchBehavior;->statelessTouch:Z

    iget-object v1, p0, Lcom/android/systemui/controls/ui/TouchBehavior$initialize$1$1;->$cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/TouchBehavior;->getEnabled()Z

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/TouchBehavior$initialize$1$1;->this$0:Lcom/android/systemui/controls/ui/TouchBehavior;

    iget p0, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->lastColorOffset:I

    sget-object v2, Lcom/android/systemui/controls/ui/ControlViewHolder;->FORCE_PANEL_DEVICES:Ljava/util/Set;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v0, v2}, Lcom/android/systemui/controls/ui/ControlViewHolder;->applyRenderInfo$frameworks__base__packages__SystemUI__android_common__SystemUI_core(IZZ)V

    return-void
.end method
