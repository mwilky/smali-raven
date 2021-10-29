.class public interface abstract Lcom/android/systemui/media/dagger/MediaModule;
.super Ljava/lang/Object;
.source "MediaModule.java"


# direct methods
.method public static providesKeyguardMediaHost(Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;Lcom/android/systemui/media/MediaHierarchyManager;Lcom/android/systemui/media/MediaDataManager;Lcom/android/systemui/media/MediaHostStatesManager;)Lcom/android/systemui/media/MediaHost;
    .locals 1

    new-instance v0, Lcom/android/systemui/media/MediaHost;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/media/MediaHost;-><init>(Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;Lcom/android/systemui/media/MediaHierarchyManager;Lcom/android/systemui/media/MediaDataManager;Lcom/android/systemui/media/MediaHostStatesManager;)V

    return-object v0
.end method

.method public static providesQSMediaHost(Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;Lcom/android/systemui/media/MediaHierarchyManager;Lcom/android/systemui/media/MediaDataManager;Lcom/android/systemui/media/MediaHostStatesManager;)Lcom/android/systemui/media/MediaHost;
    .locals 1

    new-instance v0, Lcom/android/systemui/media/MediaHost;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/media/MediaHost;-><init>(Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;Lcom/android/systemui/media/MediaHierarchyManager;Lcom/android/systemui/media/MediaDataManager;Lcom/android/systemui/media/MediaHostStatesManager;)V

    return-object v0
.end method

.method public static providesQuickQSMediaHost(Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;Lcom/android/systemui/media/MediaHierarchyManager;Lcom/android/systemui/media/MediaDataManager;Lcom/android/systemui/media/MediaHostStatesManager;)Lcom/android/systemui/media/MediaHost;
    .locals 1

    new-instance v0, Lcom/android/systemui/media/MediaHost;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/media/MediaHost;-><init>(Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;Lcom/android/systemui/media/MediaHierarchyManager;Lcom/android/systemui/media/MediaDataManager;Lcom/android/systemui/media/MediaHostStatesManager;)V

    return-object v0
.end method
