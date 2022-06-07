.class public final synthetic Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:[Lcom/android/internal/view/AppearanceRegion;

.field public final synthetic f$3:Z

.field public final synthetic f$4:I

.field public final synthetic f$5:Landroid/view/InsetsVisibilities;

.field public final synthetic f$6:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(II[Lcom/android/internal/view/AppearanceRegion;ZILandroid/view/InsetsVisibilities;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda17;->f$0:I

    iput p2, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda17;->f$1:I

    iput-object p3, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda17;->f$2:[Lcom/android/internal/view/AppearanceRegion;

    iput-boolean p4, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda17;->f$3:Z

    iput p5, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda17;->f$4:I

    iput-object p6, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda17;->f$5:Landroid/view/InsetsVisibilities;

    iput-object p7, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda17;->f$6:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget v0, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda17;->f$0:I

    iget v1, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda17;->f$1:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda17;->f$2:[Lcom/android/internal/view/AppearanceRegion;

    iget-boolean v3, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda17;->f$3:Z

    iget v4, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda17;->f$4:I

    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda17;->f$5:Landroid/view/InsetsVisibilities;

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda17;->f$6:Ljava/lang/String;

    move-object v7, p1

    check-cast v7, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static/range {v0 .. v7}, Lcom/android/server/wm/DisplayPolicy;->lambda$updateSystemBarAttributes$21(II[Lcom/android/internal/view/AppearanceRegion;ZILandroid/view/InsetsVisibilities;Ljava/lang/String;Lcom/android/server/statusbar/StatusBarManagerInternal;)V

    return-void
.end method
