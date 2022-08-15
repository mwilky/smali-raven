.class public Lcom/android/server/pm/WatchedIntentResolver$2;
.super Ljava/lang/Object;
.source "WatchedIntentResolver.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/WatchedIntentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/pm/WatchedIntentFilter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/pm/WatchedIntentFilter;Lcom/android/server/pm/WatchedIntentFilter;)I
    .locals 0

    invoke-virtual {p1}, Lcom/android/server/pm/WatchedIntentFilter;->getPriority()I

    move-result p0

    invoke-virtual {p2}, Lcom/android/server/pm/WatchedIntentFilter;->getPriority()I

    move-result p1

    if-le p0, p1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-ge p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/pm/WatchedIntentFilter;

    check-cast p2, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/WatchedIntentResolver$2;->compare(Lcom/android/server/pm/WatchedIntentFilter;Lcom/android/server/pm/WatchedIntentFilter;)I

    move-result p0

    return p0
.end method
