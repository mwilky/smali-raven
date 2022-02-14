.class public abstract Lcom/android/server/wm/StartingData;
.super Ljava/lang/Object;
.source "StartingData.java"


# instance fields
.field mAssociatedTask:Lcom/android/server/wm/Task;

.field mIsTransitionForward:Z

.field protected final mService:Lcom/android/server/wm/WindowManagerService;

.field protected final mTypeParams:I


# direct methods
.method protected constructor <init>(Lcom/android/server/wm/WindowManagerService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/StartingData;->mService:Lcom/android/server/wm/WindowManagerService;

    iput p2, p0, Lcom/android/server/wm/StartingData;->mTypeParams:I

    return-void
.end method


# virtual methods
.method abstract createStartingSurface(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
.end method

.method hasImeSurface()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method abstract needRevealAnimation()Z
.end method
