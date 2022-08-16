.class public final synthetic Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p3, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda12;->$r8$classId:I

    iput-object p1, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda12;->f$1:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda12;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda12;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/TaskView;

    iget-object v1, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda12;->f$1:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    iget-object p0, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda12;->f$2:Ljava/lang/Object;

    check-cast p0, Landroid/app/ActivityOptions;

    invoke-static {v0, v1, p0}, Lcom/android/wm/shell/TaskView;->$r8$lambda$GN2DCVjyacAWE0TrNN18t7khmiQ(Lcom/android/wm/shell/TaskView;Landroid/content/pm/ShortcutInfo;Landroid/app/ActivityOptions;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda12;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/touch/TouchInsetManager;

    iget-object v1, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda12;->f$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/touch/TouchInsetManager$TouchInsetSession;

    iget-object p0, p0, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda12;->f$2:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Region;

    iget-object v2, v0, Lcom/android/systemui/touch/TouchInsetManager;->mDefinedRegions:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/systemui/touch/TouchInsetManager;->updateTouchInset()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
