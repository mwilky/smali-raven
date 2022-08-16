.class public final Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController$PendingTaskRecord;
.super Ljava/lang/Object;
.source "ForcedResizableInfoActivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PendingTaskRecord"
.end annotation


# instance fields
.field public mReason:I

.field public mTaskId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController$PendingTaskRecord;->mTaskId:I

    iput p2, p0, Lcom/android/wm/shell/legacysplitscreen/ForcedResizableInfoActivityController$PendingTaskRecord;->mReason:I

    return-void
.end method
