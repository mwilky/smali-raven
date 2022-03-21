.class public Lcom/android/wm/shell/dagger/TvWMShellModule;
.super Ljava/lang/Object;
.source "TvWMShellModule.java"


# direct methods
.method static provideStartingWindowTypeAlgorithm()Lcom/android/wm/shell/startingsurface/StartingWindowTypeAlgorithm;
    .locals 1

    new-instance v0, Lcom/android/wm/shell/startingsurface/tv/TvStartingWindowTypeAlgorithm;

    invoke-direct {v0}, Lcom/android/wm/shell/startingsurface/tv/TvStartingWindowTypeAlgorithm;-><init>()V

    return-object v0
.end method
