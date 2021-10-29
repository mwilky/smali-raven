.class public Lcom/google/android/systemui/elmyra/gates/LockTask;
.super Lcom/google/android/systemui/elmyra/gates/Gate;
.source "LockTask.java"


# instance fields
.field private mIsBlocked:Z

.field private final mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/gates/Gate;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/google/android/systemui/elmyra/gates/LockTask$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/elmyra/gates/LockTask$1;-><init>(Lcom/google/android/systemui/elmyra/gates/LockTask;)V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/LockTask;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/systemui/elmyra/gates/LockTask;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/elmyra/gates/LockTask;->mIsBlocked:Z

    return p1
.end method


# virtual methods
.method protected isBlocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/gates/LockTask;->mIsBlocked:Z

    return p0
.end method

.method protected onActivate()V
    .locals 1

    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/LockTask;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void
.end method

.method protected onDeactivate()V
    .locals 1

    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/LockTask;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void
.end method
