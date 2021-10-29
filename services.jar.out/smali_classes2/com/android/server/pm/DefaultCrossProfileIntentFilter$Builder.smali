.class final Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;
.super Ljava/lang/Object;
.source "DefaultCrossProfileIntentFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/DefaultCrossProfileIntentFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private mDirection:I

.field private mFilter:Lcom/android/server/pm/WatchedIntentFilter;

.field private mFlags:I

.field private mLetsPersonalDataIntoProfile:Z


# direct methods
.method constructor <init>(IIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->mFilter:Lcom/android/server/pm/WatchedIntentFilter;

    iput p1, p0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->mDirection:I

    iput p2, p0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->mFlags:I

    iput-boolean p3, p0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->mLetsPersonalDataIntoProfile:Z

    return-void
.end method


# virtual methods
.method addAction(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->mFilter:Lcom/android/server/pm/WatchedIntentFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    return-object p0
.end method

.method addCategory(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->mFilter:Lcom/android/server/pm/WatchedIntentFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    return-object p0
.end method

.method addDataScheme(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->mFilter:Lcom/android/server/pm/WatchedIntentFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    return-object p0
.end method

.method addDataType(Ljava/lang/String;)Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->mFilter:Lcom/android/server/pm/WatchedIntentFilter;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-object p0
.end method

.method build()Lcom/android/server/pm/DefaultCrossProfileIntentFilter;
    .locals 7

    new-instance v6, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;

    iget-object v1, p0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->mFilter:Lcom/android/server/pm/WatchedIntentFilter;

    iget v2, p0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->mFlags:I

    iget v3, p0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->mDirection:I

    iget-boolean v4, p0, Lcom/android/server/pm/DefaultCrossProfileIntentFilter$Builder;->mLetsPersonalDataIntoProfile:Z

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/DefaultCrossProfileIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;IIZLcom/android/server/pm/DefaultCrossProfileIntentFilter$1;)V

    return-object v6
.end method
