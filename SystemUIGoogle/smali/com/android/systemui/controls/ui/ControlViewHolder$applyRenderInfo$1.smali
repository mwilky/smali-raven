.class final Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ControlViewHolder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $control:Landroid/service/controls/Control;

.field public final synthetic $enabled:Z

.field public final synthetic $fg:Landroid/content/res/ColorStateList;

.field public final synthetic $newText:Ljava/lang/CharSequence;

.field public final synthetic $ri:Lcom/android/systemui/controls/ui/RenderInfo;

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ControlViewHolder;ZLjava/lang/CharSequence;Lcom/android/systemui/controls/ui/RenderInfo;Landroid/content/res/ColorStateList;Landroid/service/controls/Control;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iput-boolean p2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$enabled:Z

    iput-object p3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$newText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$ri:Lcom/android/systemui/controls/ui/RenderInfo;

    iput-object p5, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$fg:Landroid/content/res/ColorStateList;

    iput-object p6, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$control:Landroid/service/controls/Control;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->this$0:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iget-boolean v1, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$enabled:Z

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$newText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$ri:Lcom/android/systemui/controls/ui/RenderInfo;

    iget-object v3, v3, Lcom/android/systemui/controls/ui/RenderInfo;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$fg:Landroid/content/res/ColorStateList;

    iget-object v5, p0, Lcom/android/systemui/controls/ui/ControlViewHolder$applyRenderInfo$1;->$control:Landroid/service/controls/Control;

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/controls/ui/ControlViewHolder;->updateStatusRow$frameworks__base__packages__SystemUI__android_common__SystemUI_core(ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/service/controls/Control;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
