.class public interface abstract Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
.super Ljava/lang/Object;
.source "PackageUserStateWrite.java"


# virtual methods
.method public abstract putSuspendParams(Ljava/lang/String;Lcom/android/server/pm/pkg/SuspendParams;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
.end method

.method public abstract removeSuspension(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
.end method

.method public abstract setComponentLabelIcon(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
.end method

.method public abstract setDistractionFlags(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
.end method

.method public abstract setHarmfulAppWarning(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
.end method

.method public abstract setHidden(Z)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
.end method

.method public abstract setInstalled(Z)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
.end method

.method public abstract setNotLaunched(Z)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
.end method

.method public abstract setOverlayPaths(Landroid/content/pm/overlay/OverlayPaths;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
.end method

.method public abstract setOverlayPathsForLibrary(Ljava/lang/String;Landroid/content/pm/overlay/OverlayPaths;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
.end method

.method public abstract setSplashScreenTheme(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
.end method

.method public abstract setStopped(Z)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
.end method

.method public abstract setUninstallReason(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;
.end method
