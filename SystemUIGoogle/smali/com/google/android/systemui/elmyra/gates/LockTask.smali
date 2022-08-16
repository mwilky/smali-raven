.class public final Lcom/google/android/systemui/elmyra/gates/LockTask;
.super Lcom/google/android/systemui/elmyra/gates/Gate;
.source "LockTask.java"


# instance fields
.field public mIsBlocked:Z

.field public final mTaskStackListener:Lcom/google/android/systemui/elmyra/gates/LockTask$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/gates/Gate;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/google/android/systemui/elmyra/gates/LockTask$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/elmyra/gates/LockTask$1;-><init>(Lcom/google/android/systemui/elmyra/gates/LockTask;)V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/LockTask;->mTaskStackListener:Lcom/google/android/systemui/elmyra/gates/LockTask$1;

    return-void
.end method


# virtual methods
.method public final isBlocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/gates/LockTask;->mIsBlocked:Z

    return p0
.end method

.method public final onActivate()V
    .locals 1

    sget-object v0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->INSTANCE:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/LockTask;->mTaskStackListener:Lcom/google/android/systemui/elmyra/gates/LockTask$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void
.end method

.method public final onDeactivate()V
    .locals 1

    sget-object v0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->INSTANCE:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/LockTask;->mTaskStackListener:Lcom/google/android/systemui/elmyra/gates/LockTask$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void
.end method
