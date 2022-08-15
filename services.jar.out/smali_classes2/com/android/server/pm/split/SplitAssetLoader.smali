.class public interface abstract Lcom/android/server/pm/split/SplitAssetLoader;
.super Ljava/lang/Object;
.source "SplitAssetLoader.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# virtual methods
.method public abstract getBaseApkAssets()Landroid/content/res/ApkAssets;
.end method

.method public abstract getBaseAssetManager()Landroid/content/res/AssetManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract getSplitAssetManager(I)Landroid/content/res/AssetManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method
