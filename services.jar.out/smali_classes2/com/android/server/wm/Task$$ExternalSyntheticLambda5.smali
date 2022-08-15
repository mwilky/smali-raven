.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic f$1:[I

.field public final synthetic f$2:[Landroid/content/Intent;

.field public final synthetic f$3:[Lcom/android/server/uri/NeededUriGrants;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityRecord;[I[Landroid/content/Intent;[Lcom/android/server/uri/NeededUriGrants;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/ActivityRecord;

    iput-object p2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda5;->f$1:[I

    iput-object p3, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda5;->f$2:[Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda5;->f$3:[Lcom/android/server/uri/NeededUriGrants;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda5;->f$1:[I

    iget-object v2, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda5;->f$2:[Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda5;->f$3:[Lcom/android/server/uri/NeededUriGrants;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/server/wm/Task;->$r8$lambda$Y0F8cOtPmGMgZhLlbasy9l96Dhk(Lcom/android/server/wm/ActivityRecord;[I[Landroid/content/Intent;[Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method
