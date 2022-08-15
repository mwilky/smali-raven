.class public final synthetic Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskPositioningController;

.field public final synthetic f$1:Lcom/android/server/wm/DisplayContent;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskPositioningController;Lcom/android/server/wm/DisplayContent;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/TaskPositioningController;

    iput-object p2, p0, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/wm/DisplayContent;

    iput p3, p0, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda1;->f$2:I

    iput p4, p0, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda1;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/wm/TaskPositioningController;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/wm/DisplayContent;

    iget v2, p0, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda1;->f$2:I

    iget p0, p0, Lcom/android/server/wm/TaskPositioningController$$ExternalSyntheticLambda1;->f$3:I

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/wm/TaskPositioningController;->$r8$lambda$m2iIkiA8DBKYGOpL7kFqkIODyW4(Lcom/android/server/wm/TaskPositioningController;Lcom/android/server/wm/DisplayContent;II)V

    return-void
.end method
