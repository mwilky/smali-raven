.class Lcom/android/server/people/data/EventHistoryImpl$Injector;
.super Ljava/lang/Object;
.source "EventHistoryImpl.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/people/data/EventHistoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createEventIndex()Lcom/android/server/people/data/EventIndex;
    .locals 0

    new-instance p0, Lcom/android/server/people/data/EventIndex;

    invoke-direct {p0}, Lcom/android/server/people/data/EventIndex;-><init>()V

    return-object p0
.end method

.method public currentTimeMillis()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
