.class public Lcom/android/settingslib/search/SearchIndexableData;
.super Ljava/lang/Object;
.source "SearchIndexableData.java"


# instance fields
.field private final mSearchIndexProvider:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

.field private final mTargetClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/android/settingslib/search/Indexable$SearchIndexProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/search/SearchIndexableData;->mTargetClass:Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/settingslib/search/SearchIndexableData;->mSearchIndexProvider:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method


# virtual methods
.method public getSearchIndexProvider()Lcom/android/settingslib/search/Indexable$SearchIndexProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/search/SearchIndexableData;->mSearchIndexProvider:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-object p0
.end method

.method public getTargetClass()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/search/SearchIndexableData;->mTargetClass:Ljava/lang/Class;

    return-object p0
.end method
