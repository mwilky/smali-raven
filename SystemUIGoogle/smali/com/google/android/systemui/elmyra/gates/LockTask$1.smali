.class public final Lcom/google/android/systemui/elmyra/gates/LockTask$1;
.super Ljava/lang/Object;
.source "LockTask.java"

# interfaces
.implements Lcom/android/systemui/shared/system/TaskStackChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/gates/LockTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/elmyra/gates/LockTask;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/elmyra/gates/LockTask;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/LockTask$1;->this$0:Lcom/google/android/systemui/elmyra/gates/LockTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLockTaskModeChanged(I)V
    .locals 2

    const-string v0, "Mode: "

    const-string v1, "Elmyra/LockTask"

    invoke-static {v0, p1, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline1;->m(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/elmyra/gates/LockTask$1;->this$0:Lcom/google/android/systemui/elmyra/gates/LockTask;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/google/android/systemui/elmyra/gates/LockTask;->mIsBlocked:Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/elmyra/gates/LockTask$1;->this$0:Lcom/google/android/systemui/elmyra/gates/LockTask;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/google/android/systemui/elmyra/gates/LockTask;->mIsBlocked:Z

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/LockTask$1;->this$0:Lcom/google/android/systemui/elmyra/gates/LockTask;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->notifyListener()V

    return-void
.end method
