.class public Lcom/android/server/wm/SplashScreenStartingData;
.super Lcom/android/server/wm/StartingData;
.source "SplashScreenStartingData.java"


# instance fields
.field public final mTheme:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;II)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/StartingData;-><init>(Lcom/android/server/wm/WindowManagerService;I)V

    iput p2, p0, Lcom/android/server/wm/SplashScreenStartingData;->mTheme:I

    return-void
.end method


# virtual methods
.method public createStartingSurface(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/StartingSurfaceController$StartingSurface;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/StartingData;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    iget p0, p0, Lcom/android/server/wm/SplashScreenStartingData;->mTheme:I

    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/StartingSurfaceController;->createSplashScreenStartingSurface(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    move-result-object p0

    return-object p0
.end method

.method public needRevealAnimation()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
