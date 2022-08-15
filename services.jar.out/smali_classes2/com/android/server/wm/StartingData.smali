.class public abstract Lcom/android/server/wm/StartingData;
.super Ljava/lang/Object;
.source "StartingData.java"


# instance fields
.field public mAssociatedTask:Lcom/android/server/wm/Task;

.field public mIsTransitionForward:Z

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTypeParams:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/StartingData;->mService:Lcom/android/server/wm/WindowManagerService;

    iput p2, p0, Lcom/android/server/wm/StartingData;->mTypeParams:I

    return-void
.end method


# virtual methods
.method public abstract createStartingSurface(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/StartingSurfaceController$StartingSurface;
.end method

.method public abstract needRevealAnimation()Z
.end method
