.class public interface abstract Lcom/android/server/pm/pkg/component/ParsedProcess;
.super Ljava/lang/Object;
.source "ParsedProcess.java"


# virtual methods
.method public abstract getAppClassNamesByPackage()Landroid/util/ArrayMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ConcreteCollection"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeniedPermissions()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGwpAsanMode()I
.end method

.method public abstract getMemtagMode()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNativeHeapZeroInitialized()I
.end method
