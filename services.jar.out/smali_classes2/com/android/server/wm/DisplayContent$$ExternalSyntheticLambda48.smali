.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda48;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayContent;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayContent;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda48;->f$0:Lcom/android/server/wm/DisplayContent;

    iput p2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda48;->f$1:I

    iput p3, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda48;->f$2:I

    iput p4, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda48;->f$3:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda48;->f$0:Lcom/android/server/wm/DisplayContent;

    iget v1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda48;->f$1:I

    iget v2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda48;->f$2:I

    iget p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda48;->f$3:I

    check-cast p1, Lcom/android/server/wm/TaskDisplayArea;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/server/wm/DisplayContent;->$r8$lambda$GNnY_hTDYtX7t9bg2NqTw6UhOH4(Lcom/android/server/wm/DisplayContent;IIILcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method
