.class public final synthetic Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor <init>(ILandroid/util/ArraySet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda4;->f$0:I

    iput-object p2, p0, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda4;->f$1:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda4;->f$0:I

    iget-object p0, p0, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda4;->f$1:Landroid/util/ArraySet;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/AppTransitionController;->$r8$lambda$YbL_X3FWkxFPNaX2LfKwb1x2Rvo(ILandroid/util/ArraySet;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method
